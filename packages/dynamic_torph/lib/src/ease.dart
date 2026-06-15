import 'package:flutter/animation.dart';

import 'spring.dart';

/// How a [DynamicTextMorph] eases its per-segment animations.
///
/// Mirrors the source's `ease` option, which accepts either a CSS easing string
/// (`DynamicTorphEase.cubic`) or spring parameters (`DynamicTorphEase.spring`).
sealed class DynamicTorphEase {
  const DynamicTorphEase();

  /// A fixed [Curve] (e.g. a [Cubic] bezier). Uses the widget's own duration.
  const factory DynamicTorphEase.cubic(Curve curve) = DynamicCubicEase;

  /// Physics-based easing; the curve *and* the duration are derived from the
  /// spring (see [resolveSpring]).
  const factory DynamicTorphEase.spring(DynamicSpringParams params) = DynamicSpringEase;

  /// Resolves this ease into a concrete curve + duration. For [DynamicCubicEase] the
  /// [fallbackDuration] (the widget's `duration`) is used.
  DynamicResolvedEase resolve(Duration fallbackDuration);
}

/// A [DynamicTorphEase] wrapping a static [Curve].
class DynamicCubicEase extends DynamicTorphEase {
  const DynamicCubicEase(this.curve);

  final Curve curve;

  @override
  DynamicResolvedEase resolve(Duration fallbackDuration) =>
      DynamicResolvedEase(curve, fallbackDuration);

  @override
  bool operator ==(Object other) => other is DynamicCubicEase && other.curve == curve;

  @override
  int get hashCode => curve.hashCode;
}

/// A [DynamicTorphEase] wrapping [DynamicSpringParams].
class DynamicSpringEase extends DynamicTorphEase {
  const DynamicSpringEase(this.params);

  final DynamicSpringParams params;

  @override
  DynamicResolvedEase resolve(Duration fallbackDuration) {
    final r = resolveSpring(params);
    return DynamicResolvedEase(r.curve, r.duration);
  }

  @override
  bool operator ==(Object other) => other is DynamicSpringEase && other.params == params;

  @override
  int get hashCode => params.hashCode;
}

/// A concrete easing curve paired with the duration it should run over.
class DynamicResolvedEase {
  const DynamicResolvedEase(this.curve, this.duration);

  final Curve curve;
  final Duration duration;
}
