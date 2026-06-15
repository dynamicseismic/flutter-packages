import 'dart:math';
import 'dart:ui' show Color;

import 'confetti_options.dart';
import 'confetti_shape.dart';

/// One confetti particle — a direct port of canvas-confetti's "fetti".
///
/// The construction maths mirror `randomPhysics` and [update] mirrors the
/// physics half of `updateFetti`; the drawing half lives in the painter, which
/// reads these fields. Internal — not part of the public API.
class Fetti {
  Fetti({
    required this.x,
    required this.y,
    required this.wobble,
    required this.wobbleSpeed,
    required this.velocity,
    required this.angle2D,
    required this.tiltAngle,
    required this.color,
    required this.shape,
    required this.totalTicks,
    required this.decay,
    required this.drift,
    required this.random,
    required this.gravity,
    required this.scalar,
    required this.flat,
  });

  /// Spawns a particle with randomised physics, exactly as `randomPhysics`
  /// does, reading the launch knobs from [options].
  factory Fetti.random({
    required Random rng,
    required DynamicConfettiOptions options,
    required double x,
    required double y,
    required Color color,
    required DynamicConfettiShape shape,
  }) {
    final radAngle = options.angle * (pi / 180);
    final radSpread = options.spread * (pi / 180);
    return Fetti(
      x: x,
      y: y,
      wobble: rng.nextDouble() * 10,
      wobbleSpeed: min(0.11, rng.nextDouble() * 0.1 + 0.05),
      velocity:
          options.startVelocity * 0.5 +
          rng.nextDouble() * options.startVelocity,
      angle2D: -radAngle + (0.5 * radSpread - rng.nextDouble() * radSpread),
      tiltAngle: (rng.nextDouble() * 0.5 + 0.25) * pi,
      color: color,
      shape: shape,
      totalTicks: options.ticks,
      decay: options.decay,
      drift: options.drift,
      random: rng.nextDouble() + 2,
      gravity: options.gravity * 3,
      scalar: options.scalar,
      flat: options.flat,
    );
  }

  /// Shared squish factor for the [CircleConfettiShape] ellipse radii.
  static const double ovalScalar = 0.6;

  double x;
  double y;
  double wobble;
  double wobbleSpeed;
  double velocity;
  double angle2D;
  double tiltAngle;
  final Color color;
  final DynamicConfettiShape shape;
  int tick = 0;
  final int totalTicks;
  final double decay;
  final double drift;
  double random;
  double tiltSin = 0;
  double tiltCos = 0;
  double wobbleX = 0;
  double wobbleY = 0;
  final double gravity;
  final double scalar;
  final bool flat;

  /// Whether the particle still has ticks left to live.
  bool get alive => tick < totalTicks;

  /// Fade — particles dim linearly to transparent over their lifetime.
  double get opacity => (1 - tick / totalTicks).clamp(0.0, 1.0);

  /// Advances the particle one tick: integrates motion, updates the wobble and
  /// tilt, and ages it. Mirrors the physics in `updateFetti`.
  void update(Random rng) {
    x += cos(angle2D) * velocity + drift;
    y += sin(angle2D) * velocity + gravity;
    velocity *= decay;

    if (flat) {
      wobble = 0;
      wobbleX = x + 10 * scalar;
      wobbleY = y + 10 * scalar;
      tiltSin = 0;
      tiltCos = 0;
      random = 1;
    } else {
      wobble += wobbleSpeed;
      wobbleX = x + 10 * scalar * cos(wobble);
      wobbleY = y + 10 * scalar * sin(wobble);
      tiltAngle += 0.1;
      tiltSin = sin(tiltAngle);
      tiltCos = cos(tiltAngle);
      random = rng.nextDouble() + 2;
    }

    tick++;
  }
}
