import 'package:flutter/widgets.dart';

/// The geometry of a single confetti particle.
///
/// Three primitives ship built-in — [square], [circle] and [star] — mirroring
/// canvas-confetti's `'square' | 'circle' | 'star'`. Two factories build custom
/// particles: [DynamicConfettiShape.path] from any [Path] (parity with
/// `confetti.shapeFromPath`) and [DynamicConfettiShape.text] from an emoji or
/// short string (parity with `confetti.shapeFromText`).
///
/// ```dart
/// DynamicConfettiOptions(shapes: [DynamicConfettiShape.star]);
/// DynamicConfettiShape.text('🎉');
/// DynamicConfettiShape.path(Path()..addRRect(...));
/// ```
sealed class DynamicConfettiShape {
  const DynamicConfettiShape();

  /// A tumbling square — a canvas-confetti default (alongside [circle]).
  static const DynamicConfettiShape square = SquareConfettiShape();

  /// A wobbling ellipse — a canvas-confetti default (alongside [square]).
  static const DynamicConfettiShape circle = CircleConfettiShape();

  /// A five-pointed star.
  static const DynamicConfettiShape star = StarConfettiShape();

  /// A custom particle cut from an arbitrary [Path].
  ///
  /// The path is centred on each particle by its bounds, normalised to the
  /// usual ~10px confetti size, then scaled by the particle's `scalar` and
  /// tumbled as it flies. Parity with `confetti.shapeFromPath`.
  factory DynamicConfettiShape.path(Path path) = PathConfettiShape;

  /// A custom particle that renders [text] — an emoji or a short string.
  ///
  /// [scalar] sizes the glyph (canvas-confetti treats 10px as "100%", so the
  /// font is laid out at `10 * scalar`). [color] tints plain text (emoji keep
  /// their own colours). Parity with `confetti.shapeFromText`.
  factory DynamicConfettiShape.text(
    String text, {
    double scalar,
    Color color,
    String? fontFamily,
  }) = TextConfettiShape;
}

/// A square particle. Prefer [DynamicConfettiShape.square].
final class SquareConfettiShape extends DynamicConfettiShape {
  const SquareConfettiShape();
}

/// An elliptical particle. Prefer [DynamicConfettiShape.circle].
final class CircleConfettiShape extends DynamicConfettiShape {
  const CircleConfettiShape();
}

/// A five-pointed star particle. Prefer [DynamicConfettiShape.star].
final class StarConfettiShape extends DynamicConfettiShape {
  const StarConfettiShape();
}

/// A particle cut from a [Path]. Prefer [DynamicConfettiShape.path].
final class PathConfettiShape extends DynamicConfettiShape {
  PathConfettiShape(this.path);

  /// The path, in its own coordinate space; centred and scaled at paint time.
  final Path path;

  Rect? _bounds;

  /// The path's bounding box, computed once and memoised.
  Rect get bounds => _bounds ??= path.getBounds();
}

/// A particle that renders text or an emoji. Prefer [DynamicConfettiShape.text].
final class TextConfettiShape extends DynamicConfettiShape {
  TextConfettiShape(
    this.text, {
    this.scalar = 1,
    this.color = const Color(0xFF000000),
    this.fontFamily,
  });

  /// The emoji or string to render.
  final String text;

  /// Size factor — the glyph is laid out at a font size of `10 * scalar`.
  final double scalar;

  /// Tint for plain text. Ignored by multicolour emoji.
  final Color color;

  /// Optional font family for the glyph.
  final String? fontFamily;

  TextPainter? _painter;

  /// A laid-out [TextPainter] for the glyph, built once and memoised.
  TextPainter get painter => _painter ??= TextPainter(
    text: TextSpan(
      text: text,
      style: TextStyle(
        // canvas-confetti renders every particle at ~10px, so this is the
        // de-facto 100% scale.
        fontSize: 10 * scalar,
        color: color,
        fontFamily: fontFamily,
        height: 1,
      ),
    ),
    textAlign: TextAlign.center,
    textDirection: TextDirection.ltr,
  )..layout();
}
