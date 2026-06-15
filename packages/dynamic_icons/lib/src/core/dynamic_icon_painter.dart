import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';

import 'icon_part.dart';
import 'svg_path_parser.dart';

/// The shape of the brand background "chip" behind a filled glyph.
enum IconShape {
  /// A rounded square (the default app-icon look).
  roundedSquare,

  /// A full circle.
  circle,

  /// A plain square (sharp corners).
  square,

  /// No background — paint the glyph only (the caller provides the container).
  none,
}

/// Paints a [DynamicIconData] at animation progress [t] (0..1).
///
/// When the icon declares a [DynamicIconData.backgroundColor] (filled brand
/// marks), a chip is painted first in on-screen pixels. Then the canvas is
/// scaled so the authored viewBox maps to [size] and each part is drawn:
/// static parts as-is, animated parts wrapped in a save/restore with their
/// transform / opacity / progressive-draw applied. Parts may be stroked or
/// filled, solid-coloured or gradient-filled, and carry a static opacity tier.
class IconPainter extends CustomPainter {
  IconPainter({
    required this.data,
    required this.t,
    required this.color,
    required this.strokeWidth,
    required this.shape,
    required this.cornerRadius,
    required this.showBackground,
  });

  final DynamicIconData data;
  final double t;

  /// Ambient colour for parts without an explicit [IconPart.color]
  /// (i.e. `currentColor` for stroke glyphs).
  final Color color;

  /// Stroke width in logical pixels, for stroke-style parts.
  final double strokeWidth;

  final IconShape shape;

  /// Background corner radius, in logical pixels (for [IconShape.roundedSquare]).
  final double cornerRadius;
  final bool showBackground;

  /// Cache for combined group paths (single paths are cached in [SvgPathParser]).
  static final Map<String, ui.Path> _groupCache = <String, ui.Path>{};

  static ui.Path _pathFor(IconPart part) {
    if (part.paths.length == 1) return SvgPathParser.parse(part.paths.first);
    final key = part.paths.join('|');
    return _groupCache.putIfAbsent(key, () {
      final combined = ui.Path();
      for (final d in part.paths) {
        combined.addPath(SvgPathParser.parse(d), Offset.zero);
      }
      return combined;
    });
  }

  @override
  void paint(Canvas canvas, Size size) {
    final bg = data.backgroundColor;
    if (bg != null && showBackground && shape != IconShape.none) {
      final bgPaint = Paint()
        ..style = PaintingStyle.fill
        ..color = bg
        ..isAntiAlias = true;
      final rect = Offset.zero & size;
      switch (shape) {
        case IconShape.circle:
          canvas.drawOval(rect, bgPaint);
        case IconShape.roundedSquare:
          canvas.drawRRect(
            RRect.fromRectAndRadius(rect, Radius.circular(cornerRadius)),
            bgPaint,
          );
        case IconShape.square:
          canvas.drawRect(rect, bgPaint);
        case IconShape.none:
          break;
      }
    }

    final scale = size.shortestSide / data.viewBox;
    canvas.save();
    canvas.scale(scale);

    for (final part in data.parts) {
      final path = _pathFor(part);
      final anim = part.animation;
      final animOpacity = anim?.opacity(t, data.duration) ?? 1.0;
      final alpha = (part.opacity * animOpacity).clamp(0.0, 1.0);
      final style = part.style ?? data.style;

      final paint = Paint()..isAntiAlias = true;
      if (style == IconStyle.stroke) {
        paint
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round
          // The canvas is scaled, so divide to keep the on-screen stroke width
          // constant regardless of icon size (matches SVG's strokeWidth="2").
          ..strokeWidth = strokeWidth / scale;
      } else {
        paint.style = PaintingStyle.fill;
      }

      if (part.gradient != null) {
        paint.shader = part.gradient!.toShader(alpha: alpha);
      } else {
        final c = part.color ?? color;
        paint.color = c.withValues(alpha: c.a * alpha);
      }

      if (anim == null) {
        canvas.drawPath(path, paint);
        continue;
      }
      canvas.save();
      final bounds = path.getBounds();
      anim.applyTransform(canvas, bounds, t, data.duration);
      anim.draw(canvas, path, paint, t, data.duration);
      canvas.restore();
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(IconPainter old) =>
      old.t != t ||
      old.color != color ||
      old.strokeWidth != strokeWidth ||
      old.shape != shape ||
      old.cornerRadius != cornerRadius ||
      old.showBackground != showBackground ||
      !identical(old.data, data);
}
