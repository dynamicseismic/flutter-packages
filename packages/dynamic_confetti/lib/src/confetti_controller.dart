import 'dart:async';
import 'dart:math';
import 'dart:ui' show Size;

import 'package:flutter/foundation.dart';

import 'confetti_options.dart';
import 'confetti_particle.dart';

/// Drives one or more confetti bursts.
///
/// Create a controller, hand it to a [DynamicConfetti] widget so it has a
/// surface to draw on, then call [fire] from anywhere — a button press, a
/// network success, wherever. Each call adds a burst; overlapping bursts share
/// the canvas. [fire] returns a [Future] that completes when the animation
/// next falls idle (the analogue of canvas-confetti's returned promise).
///
/// ```dart
/// final confetti = DynamicConfettiController();
/// // ...
/// Stack(children: [page, DynamicConfetti(controller: confetti)]);
/// // later:
/// await confetti.fire(const DynamicConfettiOptions(particleCount: 120));
/// ```
///
/// Remember to [dispose] it with its owning [State].
class DynamicConfettiController extends ChangeNotifier {
  /// Creates a controller. Pass a seeded [random] for deterministic output
  /// (handy in tests).
  DynamicConfettiController({Random? random}) : _random = random ?? Random();

  static const double _timestep = 1 / 60;

  final Random _random;
  final List<Fetti> _particles = <Fetti>[];
  final List<DynamicConfettiOptions> _pending = <DynamicConfettiOptions>[];

  Size _viewport = Size.zero;
  double _accumulator = 0;
  Completer<void>? _idle;

  /// Whether the platform has asked for reduced motion. The owning
  /// [DynamicConfetti] keeps this in sync from `MediaQuery`; bursts whose
  /// options set `disableForReducedMotion` are then suppressed.
  bool reduceMotion = false;

  /// The live particles, for the painter to read. Not part of the public API.
  List<Fetti> get particles => _particles;

  /// Whether any particles are alive or any bursts are queued.
  bool get isAnimating => _particles.isNotEmpty || _pending.isNotEmpty;

  /// Launches a burst described by [options] and returns a future that
  /// completes when the animation next becomes idle.
  ///
  /// If the bound widget has not been laid out yet, the burst is queued and
  /// launched as soon as a canvas size is known.
  Future<void> fire([
    DynamicConfettiOptions options = const DynamicConfettiOptions(),
  ]) {
    if (options.disableForReducedMotion && reduceMotion) {
      return Future<void>.value();
    }
    final idle = _idle ??= Completer<void>();
    if (_viewport.isEmpty) {
      _pending.add(options);
    } else {
      _spawn(options, _viewport);
    }
    notifyListeners();
    return idle.future;
  }

  /// Stops the animation, clears every particle and queued burst, and
  /// immediately resolves any outstanding [fire] futures. Mirrors
  /// `confetti.reset()`.
  void reset() {
    _particles.clear();
    _pending.clear();
    _accumulator = 0;
    _resolveIdle();
    notifyListeners();
  }

  /// Reports the current canvas size and flushes any queued bursts. Called by
  /// [DynamicConfetti] on layout. Not part of the public API.
  void setViewport(Size size) {
    _viewport = size;
    if (size.isEmpty || _pending.isEmpty) return;
    final queued = List<DynamicConfettiOptions>.of(_pending);
    _pending.clear();
    for (final options in queued) {
      _spawn(options, size);
    }
  }

  /// Advances the simulation by [dtSeconds], stepping in fixed 60fps ticks so
  /// playback is identical across display refresh rates. Called by
  /// [DynamicConfetti]'s ticker. Not part of the public API.
  void tick(double dtSeconds) {
    _accumulator += dtSeconds;
    // Cap after a stall so we don't try to catch up with a burst of steps.
    if (_accumulator > 0.25) _accumulator = 0.25;

    var stepped = false;
    while (_accumulator >= _timestep) {
      _accumulator -= _timestep;
      _step();
      stepped = true;
    }
    if (stepped) notifyListeners();
  }

  void _step() {
    if (_particles.isEmpty) return;
    for (final fetti in _particles) {
      fetti.update(_random);
    }
    _particles.removeWhere((fetti) => !fetti.alive);
    if (!isAnimating) _resolveIdle();
  }

  void _spawn(DynamicConfettiOptions options, Size size) {
    final originX = options.origin.dx * size.width;
    final originY = options.origin.dy * size.height;
    final colors = options.colors;
    final shapes = options.shapes;
    for (var i = 0; i < options.particleCount; i++) {
      final fetti = Fetti.random(
        rng: _random,
        options: options,
        x: originX,
        y: originY,
        color: colors[i % colors.length],
        shape: shapes[_random.nextInt(shapes.length)],
      );
      // canvas-confetti moves each particle and *then* draws it, so the first
      // painted frame already shows it one step out from the origin. Advance
      // once on spawn to match — otherwise every particle is drawn stacked on
      // the launch point at full opacity for a frame (a flash when a burst
      // starts).
      fetti.update(_random);
      _particles.add(fetti);
    }
  }

  void _resolveIdle() {
    final idle = _idle;
    _idle = null;
    if (idle != null && !idle.isCompleted) idle.complete();
  }

  @override
  void dispose() {
    _resolveIdle();
    super.dispose();
  }
}
