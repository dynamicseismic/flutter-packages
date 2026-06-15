import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';

import 'icon_part.dart';
import 'svg_path_parser.dart';

/// Paints an [LucideIconData] at animation progress [t] (0..1).
///
/// The canvas is scaled so the authored viewBox (24) maps to [size], then each
/// part is drawn: static parts as-is, animated parts wrapped in a save/restore
/// with their transform / opacity / progressive-draw applied.
class AnimatedIconPainter extends CustomPainter {
  AnimatedIconPainter({
    required this.data,
    required this.t,
    required this.color,
    required this.strokeWidth,
  });

  final LucideIconData data;
  final double t;
  final Color color;
  final double strokeWidth;

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
    final scale = size.shortestSide / data.viewBox;
    canvas.save();
    canvas.scale(scale);

    final basePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      // The canvas is scaled, so divide to keep the on-screen stroke width
      // constant regardless of icon size (matches SVG's strokeWidth="2").
      ..strokeWidth = strokeWidth / scale
      ..color = color
      ..isAntiAlias = true;

    for (final part in data.parts) {
      final path = _pathFor(part);
      final anim = part.animation;
      if (anim == null) {
        canvas.drawPath(path, basePaint);
        continue;
      }
      canvas.save();
      final bounds = path.getBounds();
      anim.applyTransform(canvas, bounds, t, data.duration);
      final op = anim.opacity(t, data.duration);
      final paint = op >= 1.0
          ? basePaint
          : (Paint()
            ..style = PaintingStyle.stroke
            ..strokeCap = StrokeCap.round
            ..strokeJoin = StrokeJoin.round
            ..strokeWidth = strokeWidth / scale
            ..color = color.withValues(alpha: color.a * op)
            ..isAntiAlias = true);
      anim.draw(canvas, path, paint, t, data.duration);
      canvas.restore();
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(AnimatedIconPainter old) =>
      old.t != t ||
      old.color != color ||
      old.strokeWidth != strokeWidth ||
      !identical(old.data, data);
}
