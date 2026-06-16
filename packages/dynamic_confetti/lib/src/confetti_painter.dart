import 'dart:math' as math;

import 'package:flutter/widgets.dart';

import 'confetti_controller.dart';
import 'confetti_particle.dart';
import 'confetti_shape.dart';

/// Paints a controller's live particles. Per-frame repaints are driven by the
/// controller (a [Listenable]); [shouldRepaint] only needs to fire when the
/// widget is rebuilt with a *different* controller.
///
/// Each branch mirrors the drawing half of canvas-confetti's `updateFetti`.
/// Internal — not exported.
class ConfettiPainter extends CustomPainter {
  ConfettiPainter(this.controller) : super(repaint: controller);

  final DynamicConfettiController controller;
  final Paint _fill = Paint()..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Size size) {
    final particles = controller.particles;
    // Index loop — this runs every frame for every particle.
    for (var i = 0; i < particles.length; i++) {
      _draw(canvas, particles[i]);
    }
  }

  void _draw(Canvas canvas, Fetti f) {
    final opacity = f.opacity;
    if (opacity <= 0) return;

    final x1 = f.x + f.random * f.tiltCos;
    final y1 = f.y + f.random * f.tiltSin;
    final x2 = f.wobbleX + f.random * f.tiltCos;
    final y2 = f.wobbleY + f.random * f.tiltSin;
    final color = f.color.withValues(alpha: f.color.a * opacity);

    switch (f.shape) {
      case SquareConfettiShape():
        // A four-point quad whose corners tumble — the classic paper flutter.
        final path = Path()
          ..moveTo(f.x.floorToDouble(), f.y.floorToDouble())
          ..lineTo(f.wobbleX.floorToDouble(), y1.floorToDouble())
          ..lineTo(x2.floorToDouble(), y2.floorToDouble())
          ..lineTo(x1.floorToDouble(), f.wobbleY.floorToDouble())
          ..close();
        canvas.drawPath(path, _fill..color = color);

      case CircleConfettiShape():
        final rx = (x2 - x1).abs() * Fetti.ovalScalar;
        final ry = (y2 - y1).abs() * Fetti.ovalScalar;
        canvas
          ..save()
          ..translate(f.x, f.y)
          ..rotate(math.pi / 10 * f.wobble)
          ..drawOval(
            Rect.fromCenter(center: Offset.zero, width: rx * 2, height: ry * 2),
            _fill..color = color,
          )
          ..restore();

      case StarConfettiShape():
        _drawStar(canvas, f, color);

      case PathConfettiShape(:final path, :final bounds):
        _drawPath(canvas, f, path, bounds, color, x1, y1, x2, y2);

      case TextConfettiShape():
        _drawText(
          canvas,
          f,
          f.shape as TextConfettiShape,
          opacity,
          x1,
          y1,
          x2,
          y2,
        );
    }
  }

  void _drawStar(Canvas canvas, Fetti f, Color color) {
    const spikes = 5;
    const step = math.pi / spikes;
    final inner = 4 * f.scalar;
    final outer = 8 * f.scalar;
    var rot = math.pi / 2 * 3;
    final path = Path();
    for (var i = 0; i < spikes; i++) {
      var px = f.x + math.cos(rot) * outer;
      var py = f.y + math.sin(rot) * outer;
      if (i == 0) {
        path.moveTo(px, py);
      } else {
        path.lineTo(px, py);
      }
      rot += step;
      px = f.x + math.cos(rot) * inner;
      py = f.y + math.sin(rot) * inner;
      path.lineTo(px, py);
      rot += step;
    }
    path.close();
    canvas.drawPath(path, _fill..color = color);
  }

  void _drawPath(
    Canvas canvas,
    Fetti f,
    Path path,
    Rect bounds,
    Color color,
    double x1,
    double y1,
    double x2,
    double y2,
  ) {
    // The wobble squish doubles as the 3D tumble; it already carries `scalar`.
    final sx = (x2 - x1).abs() * 0.1;
    final sy = (y2 - y1).abs() * 0.1;
    if (sx < 1e-4 || sy < 1e-4) return;
    final maxDim = math.max(bounds.width, bounds.height);
    final norm = maxDim == 0 ? 1.0 : 1.0 / maxDim;
    canvas
      ..save()
      ..translate(f.x, f.y)
      ..rotate(math.pi / 10 * f.wobble)
      ..scale(10 * sx * norm, 10 * sy * norm)
      ..translate(-bounds.center.dx, -bounds.center.dy)
      ..drawPath(path, _fill..color = color)
      ..restore();
  }

  void _drawText(
    Canvas canvas,
    Fetti f,
    TextConfettiShape shape,
    double opacity,
    double x1,
    double y1,
    double x2,
    double y2,
  ) {
    final sx = (x2 - x1).abs() * 0.1;
    final sy = (y2 - y1).abs() * 0.1;
    if (sx < 1e-4 || sy < 1e-4) return;
    final tp = shape.painter;
    final w = tp.width;
    final h = tp.height;
    final bounds = Rect.fromCenter(center: Offset.zero, width: w, height: h);
    canvas
      ..save()
      ..translate(f.x, f.y)
      ..rotate(math.pi / 10 * f.wobble)
      ..scale(sx, sy)
      // A layer applies the fade uniformly (emoji ignore a per-glyph colour).
      ..saveLayer(
        bounds,
        Paint()..color = Color.fromRGBO(255, 255, 255, opacity),
      )
      ..translate(-w / 2, -h / 2);
    tp.paint(canvas, Offset.zero);
    canvas
      ..restore()
      ..restore();
  }

  @override
  bool shouldRepaint(ConfettiPainter oldDelegate) =>
      oldDelegate.controller != controller;
}
