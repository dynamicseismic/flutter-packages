import 'dart:ui';

import 'package:flutter/animation.dart';

import 'svg_path_parser.dart' show degToRad;

/// Base class for an animation applied to a single [DynamicIconPart].
///
/// The global animation progress is a single `0..1` value driven by the
/// widget's [AnimationController]. Each part carves out its own window of that
/// timeline via [delay]/[duration] (this is how staggered icons like `wifi`
/// cascade), then applies its [curve].
///
/// An animation contributes any of three independent effects, mirroring how a
/// Motion `motion.path`/`motion.g` works:
///  * a canvas transform ([applyTransform]) — rotate / translate / scale,
///  * an [opacity] multiplier,
///  * a custom [draw] (e.g. progressive stroke drawing).
///
/// Overriding only the relevant hook lets effects compose cleanly via
/// [DynamicCompositePart].
abstract class DynamicPartAnimation {
  const DynamicPartAnimation({
    this.delay = Duration.zero,
    this.duration,
    this.curve = Curves.easeInOut,
  });

  /// When this part starts, relative to the icon's total duration.
  final Duration delay;

  /// How long this part animates. `null` means "until the end of the icon's
  /// total duration".
  final Duration? duration;

  final Curve curve;

  /// Maps the icon-wide [globalT] (0..1) into this part's eased local progress.
  double localT(double globalT, Duration total) {
    final totalUs = total.inMicroseconds.toDouble();
    if (totalUs <= 0) return curve.transform(globalT.clamp(0.0, 1.0));
    final nowUs = globalT * totalUs;
    final startUs = delay.inMicroseconds.toDouble();
    final durUs =
        (duration?.inMicroseconds ?? (total.inMicroseconds - delay.inMicroseconds))
            .toDouble();
    if (durUs <= 0) {
      return nowUs >= startUs ? curve.transform(1.0) : curve.transform(0.0);
    }
    final raw = ((nowUs - startUs) / durUs).clamp(0.0, 1.0);
    return curve.transform(raw);
  }

  /// Applies a canvas transform for this animation. Default: none.
  void applyTransform(Canvas canvas, Rect bounds, double globalT, Duration total) {}

  /// Opacity multiplier in `[0, 1]`. Default: fully opaque.
  double opacity(double globalT, Duration total) => 1.0;

  /// Draws [path] with [paint]. Default draws the whole path; [DynamicDrawPart]
  /// overrides this for progressive stroke drawing.
  void draw(Canvas canvas, Path path, Paint paint, double globalT, Duration total) {
    canvas.drawPath(path, paint);
  }

  /// Whether this animation makes the part *appear* (draw-on / fade-in /
  /// pop-in), i.e. its resting/visible state is at the END of the timeline
  /// rather than the start. Icons containing such parts idle at `t = 1` so they
  /// render fully at rest and replay the appearance on activation.
  bool get isAppearance => false;
}

/// Rotates the part. [degrees] is a keyframe list (e.g. `[0, -10, 10, -10, 0]`
/// for a bell swing); a two-value list is a simple rotation.
///
/// [pivot] defaults to the part's bounding-box centre (Motion's
/// `transform-origin: 50% 50%`). For whole-icon rotations pass
/// [kViewBoxCenter].
class DynamicRotatePart extends DynamicPartAnimation {
  const DynamicRotatePart(
    this.degrees, {
    this.pivot,
    super.delay,
    super.duration,
    super.curve,
  });

  final List<double> degrees;
  final Offset? pivot;

  @override
  void applyTransform(Canvas canvas, Rect bounds, double globalT, Duration total) {
    final t = localT(globalT, total);
    final angle = degToRad(_lerpKeyframes(degrees, t));
    final p = pivot ?? bounds.center;
    canvas
      ..translate(p.dx, p.dy)
      ..rotate(angle)
      ..translate(-p.dx, -p.dy);
  }
}

/// Translates the part along a keyframed path of offsets, in 24-unit viewBox
/// space (e.g. `[Offset.zero, Offset(0, 2)]` for the download arrow bob).
class DynamicTranslatePart extends DynamicPartAnimation {
  const DynamicTranslatePart(
    this.offsets, {
    super.delay,
    super.duration,
    super.curve,
  });

  final List<Offset> offsets;

  @override
  void applyTransform(Canvas canvas, Rect bounds, double globalT, Duration total) {
    final t = localT(globalT, total);
    final o = _lerpOffsets(offsets, t);
    canvas.translate(o.dx, o.dy);
  }
}

/// Which axes a [DynamicScalePart] scales.
enum DynamicScaleAxis { both, horizontal, vertical }

/// Scales the part. [values] is a keyframe list of scale factors. [axis] limits
/// scaling to one axis (e.g. [DynamicScaleAxis.vertical] for equalizer bars).
class DynamicScalePart extends DynamicPartAnimation {
  const DynamicScalePart(
    this.values, {
    this.pivot,
    this.axis = DynamicScaleAxis.both,
    super.delay,
    super.duration,
    super.curve,
  });

  final List<double> values;
  final Offset? pivot;
  final DynamicScaleAxis axis;

  @override
  void applyTransform(Canvas canvas, Rect bounds, double globalT, Duration total) {
    final t = localT(globalT, total);
    final s = _lerpKeyframes(values, t);
    final p = pivot ?? bounds.center;
    final sx = axis == DynamicScaleAxis.vertical ? 1.0 : s;
    final sy = axis == DynamicScaleAxis.horizontal ? 1.0 : s;
    canvas
      ..translate(p.dx, p.dy)
      ..scale(sx, sy)
      ..translate(-p.dx, -p.dy);
  }

  // A pop-in (grows from ~nothing to visible) is an appearance.
  @override
  bool get isAppearance =>
      values.length >= 2 && values.first <= 0.1 && values.last > values.first;
}

/// Fades the part. [values] is a keyframe list of opacities (e.g. `[0, 1]`).
class DynamicOpacityPart extends DynamicPartAnimation {
  const DynamicOpacityPart(
    this.values, {
    super.delay,
    super.duration,
    super.curve,
  });

  final List<double> values;

  @override
  double opacity(double globalT, Duration total) =>
      _lerpKeyframes(values, localT(globalT, total)).clamp(0.0, 1.0);

  // A fade-in (starts more transparent than it ends) is an appearance.
  @override
  bool get isAppearance => values.length >= 2 && values.first < values.last;
}

/// Progressively draws the part's stroke, reproducing Motion's
/// `pathLength`/`pathOffset` draw-on effect (e.g. the `activity` heartbeat).
///
/// With [fromEnd] true the stroke retreats from its end instead of growing from
/// its start.
class DynamicDrawPart extends DynamicPartAnimation {
  const DynamicDrawPart({
    this.fromEnd = false,
    super.delay,
    super.duration,
    super.curve = Curves.linear,
  });

  final bool fromEnd;

  @override
  void draw(Canvas canvas, Path path, Paint paint, double globalT, Duration total) {
    final t = localT(globalT, total);
    if (t <= 0) return;
    if (t >= 1) {
      canvas.drawPath(path, paint);
      return;
    }
    for (final metric in path.computeMetrics()) {
      final len = metric.length;
      final extracted = fromEnd
          ? metric.extractPath(len * (1 - t), len)
          : metric.extractPath(0, len * t);
      canvas.drawPath(extracted, paint);
    }
  }

  // A progressive stroke draw-on: full at the end, empty at the start.
  @override
  bool get isAppearance => true;
}

/// Stacks several [DynamicPartAnimation]s on one part (e.g. scale + fade). Transforms
/// compose in order; opacities multiply; if any child is a [DynamicDrawPart] its
/// progressive draw is used.
class DynamicCompositePart extends DynamicPartAnimation {
  const DynamicCompositePart(this.parts);

  final List<DynamicPartAnimation> parts;

  @override
  void applyTransform(Canvas canvas, Rect bounds, double globalT, Duration total) {
    for (final p in parts) {
      p.applyTransform(canvas, bounds, globalT, total);
    }
  }

  @override
  double opacity(double globalT, Duration total) {
    var o = 1.0;
    for (final p in parts) {
      o *= p.opacity(globalT, total);
    }
    return o;
  }

  @override
  void draw(Canvas canvas, Path path, Paint paint, double globalT, Duration total) {
    for (final p in parts) {
      if (p is DynamicDrawPart) {
        p.draw(canvas, path, paint, globalT, total);
        return;
      }
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool get isAppearance => parts.any((p) => p.isAppearance);
}

/// Centre of a 24×24 viewBox — the default pivot for whole-icon transforms.
const Offset kViewBoxCenter = Offset(12, 12);

// ---- Keyframe interpolation ----

/// Interpolates a list of keyframe [values] across `t` in `[0, 1]`, with the
/// keyframes spaced evenly (Motion's default behaviour for a values array).
double _lerpKeyframes(List<double> values, double t) {
  if (values.isEmpty) return 0;
  if (values.length == 1) return values.first;
  final clamped = t.clamp(0.0, 1.0);
  final scaled = clamped * (values.length - 1);
  final i = scaled.floor().clamp(0, values.length - 2);
  final frac = scaled - i;
  return values[i] + (values[i + 1] - values[i]) * frac;
}

Offset _lerpOffsets(List<Offset> values, double t) {
  if (values.isEmpty) return Offset.zero;
  if (values.length == 1) return values.first;
  final clamped = t.clamp(0.0, 1.0);
  final scaled = clamped * (values.length - 1);
  final i = scaled.floor().clamp(0, values.length - 2);
  final frac = scaled - i;
  return Offset.lerp(values[i], values[i + 1], frac)!;
}
