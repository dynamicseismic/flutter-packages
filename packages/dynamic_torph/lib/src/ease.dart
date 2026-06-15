import 'package:flutter/animation.dart';

import 'spring.dart';

/// How a [TextMorph] eases its per-segment animations.
///
/// Mirrors the source's `ease` option, which accepts either a CSS easing string
/// (`TorphEase.cubic`) or spring parameters (`TorphEase.spring`).
sealed class TorphEase {
  const TorphEase();

  /// A fixed [Curve] (e.g. a [Cubic] bezier). Uses the widget's own duration.
  const factory TorphEase.cubic(Curve curve) = CubicEase;

  /// Physics-based easing; the curve *and* the duration are derived from the
  /// spring (see [resolveSpring]).
  const factory TorphEase.spring(SpringParams params) = SpringEase;

  /// Resolves this ease into a concrete curve + duration. For [CubicEase] the
  /// [fallbackDuration] (the widget's `duration`) is used.
  ResolvedEase resolve(Duration fallbackDuration);
}

/// A [TorphEase] wrapping a static [Curve].
class CubicEase extends TorphEase {
  const CubicEase(this.curve);

  final Curve curve;

  @override
  ResolvedEase resolve(Duration fallbackDuration) =>
      ResolvedEase(curve, fallbackDuration);

  @override
  bool operator ==(Object other) => other is CubicEase && other.curve == curve;

  @override
  int get hashCode => curve.hashCode;
}

/// A [TorphEase] wrapping [SpringParams].
class SpringEase extends TorphEase {
  const SpringEase(this.params);

  final SpringParams params;

  @override
  ResolvedEase resolve(Duration fallbackDuration) {
    final r = resolveSpring(params);
    return ResolvedEase(r.curve, r.duration);
  }

  @override
  bool operator ==(Object other) => other is SpringEase && other.params == params;

  @override
  int get hashCode => params.hashCode;
}

/// A concrete easing curve paired with the duration it should run over.
class ResolvedEase {
  const ResolvedEase(this.curve, this.duration);

  final Curve curve;
  final Duration duration;
}
