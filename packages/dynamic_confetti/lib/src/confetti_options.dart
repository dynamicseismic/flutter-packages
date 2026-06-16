import 'dart:ui' show Color, Offset;

import 'package:flutter/foundation.dart' show immutable;

import 'confetti_shape.dart';

/// canvas-confetti's seven default particle colours.
const List<Color> kDefaultConfettiColors = <Color>[
  Color(0xFF26CCFF),
  Color(0xFFA25AFD),
  Color(0xFFFF5E7E),
  Color(0xFF88FF5A),
  Color(0xFFFCFF42),
  Color(0xFFFFA62D),
  Color(0xFFFF36FF),
];

/// The default shape mix — squares and circles, like canvas-confetti.
const List<DynamicConfettiShape> kDefaultConfettiShapes =
    <DynamicConfettiShape>[
      DynamicConfettiShape.square,
      DynamicConfettiShape.circle,
    ];

/// A single confetti burst, described by the same knobs as canvas-confetti's
/// options object. Every field carries canvas-confetti's exact default, so
/// `const DynamicConfettiOptions()` reproduces a bare `confetti()` call.
///
/// Pass one to [DynamicConfettiController.fire] or to `DynamicConfetti.fire`.
/// Options are immutable — build variants with [copyWith].
@immutable
class DynamicConfettiOptions {
  /// Creates a burst description. Defaults match canvas-confetti.
  const DynamicConfettiOptions({
    this.particleCount = 50,
    this.angle = 90,
    this.spread = 45,
    this.startVelocity = 45,
    this.decay = 0.9,
    this.gravity = 1,
    this.drift = 0,
    this.flat = false,
    this.ticks = 200,
    this.origin = const Offset(0.5, 0.5),
    this.colors = kDefaultConfettiColors,
    this.shapes = kDefaultConfettiShapes,
    this.scalar = 1,
    this.disableForReducedMotion = false,
  });

  /// The number of particles to launch.
  final int particleCount;

  /// The angle, in degrees, to launch the particles. `90` is straight up.
  final double angle;

  /// How far off-centre, in degrees, the particles may spray.
  final double spread;

  /// How fast the particles start moving, in pixels per tick.
  final double startVelocity;

  /// How quickly particles lose speed each tick — keep between 0 and 1.
  final double decay;

  /// How quickly particles are pulled down.
  final double gravity;

  /// How much the particles drift sideways.
  final double drift;

  /// Turns off the tilt and wobble of three-dimensional confetti when true.
  final bool flat;

  /// How many ticks (frames at 60fps) each particle lives — `200` ≈ 3.3s.
  final int ticks;

  /// The launch point, normalised to the canvas: `(0, 0)` is the top-left and
  /// `(1, 1)` the bottom-right. Defaults to the centre.
  final Offset origin;

  /// The palette particles are tinted from, cycled in order.
  final List<Color> colors;

  /// The shapes particles are drawn from, picked at random per particle.
  final List<DynamicConfettiShape> shapes;

  /// A scale factor applied to every particle.
  final double scalar;

  /// When true, the burst is suppressed if the platform requests reduced
  /// motion (honoured by `DynamicConfetti.fire` and by [DynamicConfetti]).
  final bool disableForReducedMotion;

  /// Returns a copy with the given fields replaced.
  DynamicConfettiOptions copyWith({
    int? particleCount,
    double? angle,
    double? spread,
    double? startVelocity,
    double? decay,
    double? gravity,
    double? drift,
    bool? flat,
    int? ticks,
    Offset? origin,
    List<Color>? colors,
    List<DynamicConfettiShape>? shapes,
    double? scalar,
    bool? disableForReducedMotion,
  }) {
    return DynamicConfettiOptions(
      particleCount: particleCount ?? this.particleCount,
      angle: angle ?? this.angle,
      spread: spread ?? this.spread,
      startVelocity: startVelocity ?? this.startVelocity,
      decay: decay ?? this.decay,
      gravity: gravity ?? this.gravity,
      drift: drift ?? this.drift,
      flat: flat ?? this.flat,
      ticks: ticks ?? this.ticks,
      origin: origin ?? this.origin,
      colors: colors ?? this.colors,
      shapes: shapes ?? this.shapes,
      scalar: scalar ?? this.scalar,
      disableForReducedMotion:
          disableForReducedMotion ?? this.disableForReducedMotion,
    );
  }
}
