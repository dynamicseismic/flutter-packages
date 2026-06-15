import 'dart:math' as math;

import 'package:flutter/animation.dart';

/// Spring physics parameters.
///
/// Direct port of torph's `DynamicSpringParams`. A spring is resolved into a sampled
/// easing [Curve] plus an automatically computed [Duration] via
/// [resolveSpring], mirroring the web library's `linear(...)` output.
class DynamicSpringParams {
  const DynamicSpringParams({
    this.stiffness = 100,
    this.damping = 10,
    this.mass = 1,
    this.precision = 0.001,
  });

  final double stiffness;
  final double damping;
  final double mass;

  /// Settle threshold: the spring is considered "at rest" once it stays within
  /// [precision] of its target for long enough.
  final double precision;

  @override
  bool operator ==(Object other) =>
      other is DynamicSpringParams &&
      other.stiffness == stiffness &&
      other.damping == damping &&
      other.mass == mass &&
      other.precision == precision;

  @override
  int get hashCode => Object.hash(stiffness, damping, mass, precision);

  @override
  String toString() =>
      'DynamicSpringParams(stiffness: $stiffness, damping: $damping, mass: $mass, '
      'precision: $precision)';
}

/// The result of resolving a [DynamicSpringParams] into an animatable form.
class DynamicSpringResult {
  const DynamicSpringResult(this.curve, this.duration);

  final Curve curve;
  final Duration duration;
}

/// Normalized displacement of a unit spring at time [t] (seconds).
///
/// Returns 0 at rest start and approaches 1 as it settles. Handles both the
/// underdamped (`zeta < 1`) and over-/critically-damped cases, matching
/// `springPosition` in the source.
double springPosition(double t, double omega0, double zeta) {
  if (zeta < 1) {
    final omegaD = omega0 * math.sqrt(1 - zeta * zeta);
    return 1 -
        math.exp(-zeta * omega0 * t) *
            (math.cos(omegaD * t) +
                ((zeta * omega0) / omegaD) * math.sin(omegaD * t));
  }

  // Overdamped (includes near-critically-damped).
  final s = math.sqrt(zeta * zeta - 1);
  final r1 = -omega0 * (zeta + s);
  final r2 = -omega0 * (zeta - s);
  final b = -r1 / (r2 - r1);
  final a = 1 - b;
  return 1 - a * math.exp(r1 * t) - b * math.exp(r2 * t);
}

/// Numerically finds how long (ms) the spring takes to settle within
/// [precision], stepping at 1ms and requiring it to stay settled for >0.1s.
int computeSpringDurationMs(double omega0, double zeta, double precision) {
  const step = 0.001;
  const maxDuration = 10.0;
  var settledSince = 0.0;

  for (var t = 0.0; t < maxDuration; t += step) {
    if ((springPosition(t, omega0, zeta) - 1).abs() > precision) {
      settledSince = 0;
    } else {
      settledSince += step;
      if (settledSince > 0.1) {
        return ((t - settledSince + step) * 1000).ceil();
      }
    }
  }

  return (maxDuration * 1000).ceil();
}

/// A [Curve] backed by uniformly-spaced samples, linearly interpolated between
/// them — the Flutter equivalent of CSS `linear(p0, p1, ... pn)` that torph
/// emits for springs.
class DynamicSampledSpringCurve extends Curve {
  const DynamicSampledSpringCurve(this.points);

  /// Displacement samples (normalized 0..1) spread evenly across the timeline.
  final List<double> points;

  @override
  double transformInternal(double t) {
    final n = points.length;
    if (n == 1) return points.first;
    final scaled = t * (n - 1);
    final i = scaled.floor().clamp(0, n - 2);
    final frac = scaled - i;
    return points[i] + (points[i + 1] - points[i]) * frac;
  }
}

final Map<DynamicSpringParams, DynamicSpringResult> _cache = {};

/// Resolves [params] into a [DynamicSampledSpringCurve] and a settle [Duration].
///
/// Results are memoized per parameter set, like the source's `cache`.
DynamicSpringResult resolveSpring([DynamicSpringParams params = const DynamicSpringParams()]) {
  final cached = _cache[params];
  if (cached != null) return cached;

  final omega0 = math.sqrt(params.stiffness / params.mass);
  final zeta = params.damping / (2 * math.sqrt(params.stiffness * params.mass));

  final durationMs = computeSpringDurationMs(omega0, zeta, params.precision);
  final numPoints = math.min(100, math.max(32, (durationMs / 15).round()));

  final points = <double>[];
  for (var i = 0; i < numPoints; i++) {
    final t = (i / (numPoints - 1)) * (durationMs / 1000);
    final value = i == numPoints - 1 ? 1.0 : springPosition(t, omega0, zeta);
    points.add((value * 10000).round() / 10000);
  }

  // Trim trailing "1" values (keep at least 2), matching the source.
  while (points.length > 2 && points[points.length - 2] == 1.0) {
    points.removeAt(points.length - 2);
  }

  final result = DynamicSpringResult(
    DynamicSampledSpringCurve(points),
    Duration(milliseconds: durationMs),
  );
  _cache[params] = result;
  return result;
}
