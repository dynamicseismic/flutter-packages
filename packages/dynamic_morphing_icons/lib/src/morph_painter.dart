import 'dart:math' as math;

import 'package:flutter/widgets.dart';

import 'morph_icon.dart';

/// Paints the interpolated state between two [DynamicMorphIcon]s at progress [t].
///
/// Two morph modes, matching the original technique:
///
///  * **Rotation** — when [from] and [to] share a rotation group, the shared
///    base shape is drawn once and the canvas is rotated by the (shortest-path)
///    interpolated angle. The lines stay rigid and simply spin.
///  * **Interpolation** — otherwise each of the three line slots is tweened
///    independently through coordinate space, so the shapes genuinely flow
///    into one another.
class DynamicMorphPainter extends CustomPainter {
  final DynamicMorphIcon from;
  final DynamicMorphIcon to;

  /// Morph progress, already eased, in `[0, 1]`. `0` paints [from], `1` paints
  /// [to].
  final double t;

  /// Stroke colour. Its own alpha is multiplied by each line's opacity.
  final Color color;

  /// Stroke width in logical pixels (not scaled with [iconBoxSize]).
  final double strokeWidth;

  const DynamicMorphPainter({
    required this.from,
    required this.to,
    required this.t,
    required this.color,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // 24x24 authoring box -> rendered square. Use the smaller side so the icon
    // never overflows a non-square box.
    final scale = math.min(size.width, size.height) / iconBoxSize;
    final dx = (size.width - iconBoxSize * scale) / 2;
    final dy = (size.height - iconBoxSize * scale) / 2;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = strokeWidth
      ..isAntiAlias = true;

    Offset toCanvas(Offset p) => Offset(dx + p.dx * scale, dy + p.dy * scale);

    if (from.sharesRotationGroupWith(to)) {
      _paintRotating(canvas, paint, toCanvas);
    } else {
      _paintInterpolating(canvas, paint, toCanvas);
    }
  }

  /// Same rotation group: draw the rigid base shape, spun by the interpolated
  /// angle along the shortest arc.
  void _paintRotating(Canvas canvas, Paint paint, Offset Function(Offset) toCanvas) {
    final angle = (from.rotationDegrees + _shortestDelta() * t) * math.pi / 180;
    final cos = math.cos(angle);
    final sin = math.sin(angle);
    const center = Offset(iconCenter, iconCenter);

    Offset rotate(Offset p) {
      final v = p - center;
      return center + Offset(v.dx * cos - v.dy * sin, v.dx * sin + v.dy * cos);
    }

    // Within a group the base lines (and their opacities) are identical for
    // `from` and `to`, so either list works.
    for (final line in from.lines) {
      _drawLine(canvas, paint, toCanvas(rotate(line.a)), toCanvas(rotate(line.b)),
          line.opacity);
    }
  }

  /// Different groups: tween each line slot through coordinate space. Uses
  /// [DynamicMorphIcon.resolvedLines] so a grouped icon morphs from/to the orientation
  /// actually on screen rather than its un-rotated base shape. The shorter icon
  /// is padded with hidden lines so icons of different lengths still morph.
  void _paintInterpolating(
      Canvas canvas, Paint paint, Offset Function(Offset) toCanvas) {
    final fromLines = from.resolvedLines;
    final toLines = to.resolvedLines;
    final count = math.max(fromLines.length, toLines.length);
    for (var i = 0; i < count; i++) {
      final line = DynamicMorphLine.lerp(_at(fromLines, i), _at(toLines, i), t);
      _drawLine(canvas, paint, toCanvas(line.a), toCanvas(line.b), line.opacity);
    }
  }

  /// The line at [i], or [DynamicMorphLine.hidden] if [lines] is shorter than that —
  /// the padding that lets a 3-line icon morph into an 8-line one.
  DynamicMorphLine _at(List<DynamicMorphLine> lines, int i) =>
      i < lines.length ? lines[i] : DynamicMorphLine.hidden;

  void _drawLine(Canvas canvas, Paint paint, Offset a, Offset b, double opacity) {
    if (opacity <= 0.001) return; // fully collapsed/invisible — skip.
    paint.color = color.withValues(alpha: color.a * opacity.clamp(0.0, 1.0));
    canvas.drawLine(a, b, paint);
  }

  /// The signed angle (degrees) from [from] to [to], wrapped to `(-180, 180]`
  /// so the icon always rotates the short way round.
  double _shortestDelta() {
    final raw = (to.rotationDegrees - from.rotationDegrees) % 360; // [0, 360)
    return raw > 180 ? raw - 360 : raw;
  }

  @override
  bool shouldRepaint(DynamicMorphPainter old) =>
      old.t != t ||
      old.from != from ||
      old.to != to ||
      old.color != color ||
      old.strokeWidth != strokeWidth;
}
