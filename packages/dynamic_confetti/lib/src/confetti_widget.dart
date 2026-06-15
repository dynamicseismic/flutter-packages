import 'package:flutter/scheduler.dart' show Ticker;
import 'package:flutter/widgets.dart';

import 'confetti_controller.dart';
import 'confetti_options.dart';
import 'confetti_painter.dart';

/// A transparent surface that renders a [DynamicConfettiController]'s particles.
///
/// Confetti is drawn at the widget's own size and the launch [origin] is taken
/// relative to it, so wrap the area you want to fill — usually the whole screen
/// via a [Stack] — and let pointer events pass straight through (the widget is
/// always wrapped in an [IgnorePointer]).
///
/// ```dart
/// Stack(
///   children: [
///     YourPage(),
///     DynamicConfetti(controller: confetti),
///   ],
/// )
/// ```
///
/// For a fire-and-forget burst with no controller to manage, use the static
/// [DynamicConfetti.fire] — the closest match to canvas-confetti's global
/// `confetti()`.
class DynamicConfetti extends StatefulWidget {
  /// Binds this surface to [controller].
  const DynamicConfetti({super.key, required this.controller});

  /// The controller whose particles are painted here.
  final DynamicConfettiController controller;

  /// Fires a one-shot burst over the whole screen from anywhere you have a
  /// [BuildContext] — the Flutter analogue of canvas-confetti's `confetti()`.
  ///
  /// A self-managed surface is inserted into the nearest root [Overlay]
  /// (present under any `MaterialApp`/`CupertinoApp`), the burst plays, and
  /// everything is torn down when the returned future completes. Pointer events
  /// pass through, so the confetti never blocks the UI underneath.
  ///
  /// ```dart
  /// DynamicConfetti.fire(context);
  /// DynamicConfetti.fire(
  ///   context,
  ///   const DynamicConfettiOptions(particleCount: 120, spread: 70),
  /// );
  /// ```
  static Future<void> fire(
    BuildContext context, [
    DynamicConfettiOptions options = const DynamicConfettiOptions(),
  ]) {
    final reduceMotion =
        MediaQuery.maybeOf(context)?.disableAnimations ?? false;
    if (options.disableForReducedMotion && reduceMotion) {
      return Future<void>.value();
    }

    final overlay = Overlay.of(context, rootOverlay: true);
    final controller = DynamicConfettiController()..reduceMotion = reduceMotion;
    final entry = OverlayEntry(
      builder: (_) =>
          Positioned.fill(child: DynamicConfetti(controller: controller)),
    );
    overlay.insert(entry);

    return controller.fire(options).whenComplete(() {
      entry.remove();
      controller.dispose();
    });
  }

  @override
  State<DynamicConfetti> createState() => _DynamicConfettiState();
}

class _DynamicConfettiState extends State<DynamicConfetti>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker = createTicker(_onTick);
  Duration _last = Duration.zero;
  bool _firstTick = true;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onControllerChanged);
  }

  @override
  void didUpdateWidget(DynamicConfetti oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_onControllerChanged);
      widget.controller.addListener(_onControllerChanged);
      _onControllerChanged();
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onControllerChanged);
    _ticker.dispose();
    super.dispose();
  }

  void _onControllerChanged() {
    if (widget.controller.isAnimating) {
      _ensureTicking();
    }
  }

  void _ensureTicking() {
    if (!_ticker.isActive) {
      _last = Duration.zero;
      _firstTick = true;
      _ticker.start();
    }
  }

  void _onTick(Duration elapsed) {
    // Advance one nominal frame on the very first tick: a single timestamp
    // can't yield a real delta, and a 0 delta would leave every particle
    // stacked on the launch origin for an extra frame (a bright flash at the
    // spawn point). canvas-confetti moves them on frame one — so do we.
    final double dt;
    if (_firstTick) {
      _firstTick = false;
      dt = 1 / 60;
    } else {
      dt = (elapsed - _last).inMicroseconds / 1e6;
    }
    _last = elapsed;
    widget.controller.tick(dt);
    if (!widget.controller.isAnimating) {
      _ticker.stop();
      _last = Duration.zero;
    }
  }

  @override
  Widget build(BuildContext context) {
    widget.controller.reduceMotion =
        MediaQuery.maybeOf(context)?.disableAnimations ?? false;
    return IgnorePointer(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final size = Size(
            constraints.maxWidth.isFinite ? constraints.maxWidth : 0,
            constraints.maxHeight.isFinite ? constraints.maxHeight : 0,
          );
          widget.controller.setViewport(size);
          // A burst fired before first layout is queued; once the size is
          // known it spawns here, so kick the ticker after this frame.
          if (widget.controller.isAnimating) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted) _ensureTicking();
            });
          }
          // A RepaintBoundary gives the confetti its own layer, so its
          // per-frame repaints don't invalidate (or flicker) the UI behind it.
          return RepaintBoundary(
            child: CustomPaint(
              size: size,
              painter: ConfettiPainter(widget.controller),
            ),
          );
        },
      ),
    );
  }
}
