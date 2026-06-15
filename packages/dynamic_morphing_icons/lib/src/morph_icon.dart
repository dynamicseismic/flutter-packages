import 'dart:math' as math;
import 'dart:ui' show Offset, lerpDouble;

import 'package:flutter/foundation.dart';

/// The size of the coordinate box every [DynamicMorphIcon] is authored in.
///
/// Icons live in a `iconBoxSize` x `iconBoxSize` square (the standard 24x24
/// icon grid), with the centre at ([iconCenter], [iconCenter]). The
/// [DynamicMorphPainter] scales this box to whatever size the widget is rendered at.
const double iconBoxSize = 24.0;

/// The centre of the icon box — where collapsed ("hidden") lines live.
const double iconCenter = iconBoxSize / 2;

/// A single straight line segment, the atomic building block of every icon.
///
/// The morphing technique requires every icon to be made of exactly three of
/// these. Icons that visually need fewer lines collapse the extras to an
/// invisible point (see [DynamicMorphLine.hidden]), so that any icon shares the same
/// structure as any other and can therefore morph into it.
@immutable
class DynamicMorphLine {
  /// First endpoint, in the [iconBoxSize] coordinate space.
  final Offset a;

  /// Second endpoint, in the [iconBoxSize] coordinate space.
  final Offset b;

  /// `1` = fully drawn, `0` = invisible. Lets a line be collapsed to an
  /// invisible point (opacity `0`) while still occupying a slot, and tweened
  /// in/out as it grows from or shrinks to that point.
  final double opacity;

  const DynamicMorphLine(this.a, this.b, {this.opacity = 1});

  /// Convenience for a line where both endpoints share a coordinate — a dot
  /// when drawn with round caps (used by the `more` icon), or, with
  /// `opacity: 0`, an invisible collapsed line.
  const DynamicMorphLine.dot(Offset at, {double opacity = 1})
      : this(at, at, opacity: opacity);

  /// An invisible line collapsed onto the icon centre. Use it to fill the
  /// unused slots of icons that need fewer than three visible lines.
  static const DynamicMorphLine hidden = DynamicMorphLine.dot(
    Offset(iconCenter, iconCenter),
    opacity: 0,
  );

  /// The Euclidean length of the segment.
  double get length => (b - a).distance;

  /// This line with both endpoints rotated by [radians] about [center].
  DynamicMorphLine rotatedAbout(Offset center, double radians) {
    final cos = math.cos(radians);
    final sin = math.sin(radians);
    Offset rot(Offset p) {
      final v = p - center;
      return center + Offset(v.dx * cos - v.dy * sin, v.dx * sin + v.dy * cos);
    }

    return DynamicMorphLine(rot(a), rot(b), opacity: opacity);
  }

  /// Linearly interpolates between two lines: endpoints and opacity each
  /// tween independently. This is what produces a cross-group morph where the
  /// lines genuinely travel through coordinate space.
  static DynamicMorphLine lerp(DynamicMorphLine x, DynamicMorphLine y, double t) => DynamicMorphLine(
        Offset.lerp(x.a, y.a, t)!,
        Offset.lerp(x.b, y.b, t)!,
        opacity: lerpDouble(x.opacity, y.opacity, t)!,
      );

  @override
  bool operator ==(Object other) =>
      other is DynamicMorphLine &&
      other.a == a &&
      other.b == b &&
      other.opacity == opacity;

  @override
  int get hashCode => Object.hash(a, b, opacity);

  @override
  String toString() => 'DynamicMorphLine($a, $b, opacity: $opacity)';
}

/// The definition of a single morphable icon: exactly three [DynamicMorphLine]s plus
/// optional rotation-group metadata.
///
/// ## Rotation groups
///
/// Some icons are the *same shape* at a different angle — the four arrows, the
/// four chevrons, plus vs. cross. Morphing those by interpolating coordinates
/// makes the lines bend and warp. Instead they share a [rotationGroup]: when
/// the source and target icon belong to the same group, the painter keeps the
/// shape fixed and animates the canvas [rotationDegrees] from one to the
/// other. Icons in different groups (or with no group) tween coordinates.
@immutable
class DynamicMorphIcon {
  /// A stable identifier, e.g. `'menu'`, `'arrowRight'`. Handy for debugging
  /// and for keying widgets.
  final String name;

  /// The line segments that make up the icon — three by convention. Icons that
  /// need fewer collapse the extras to [DynamicMorphLine.hidden]; a few (e.g.
  /// [DynamicMorphIcons.scan]) need more. When two icons of different lengths morph,
  /// the painter pads the shorter one with hidden lines.
  final List<DynamicMorphLine> lines;

  /// Icons that share a non-null group morph by rotation rather than by
  /// coordinate interpolation. `null` means "not part of any rotation group".
  final Object? rotationGroup;

  /// The icon's angle, in degrees, within its [rotationGroup]. Ignored when
  /// [rotationGroup] is `null`. Values are absolute (e.g. arrow-down is `90`),
  /// so the painter rotates by the signed difference between two members.
  final double rotationDegrees;

  const DynamicMorphIcon(
    this.name,
    this.lines, {
    this.rotationGroup,
    this.rotationDegrees = 0,
  });

  /// Whether [this] and [other] should morph by rotation (same non-null group)
  /// rather than by coordinate interpolation.
  bool sharesRotationGroupWith(DynamicMorphIcon other) =>
      rotationGroup != null && rotationGroup == other.rotationGroup;

  /// The icon's lines in their *displayed* orientation — [rotationDegrees]
  /// baked into the coordinates. Used when morphing across rotation groups so
  /// the tween starts/ends at what's actually on screen, not the base shape.
  /// (Within a single group the painter rotates rigidly instead.)
  List<DynamicMorphLine> get resolvedLines {
    if (rotationGroup == null || rotationDegrees == 0) return lines;
    final radians = rotationDegrees * math.pi / 180;
    const center = Offset(iconCenter, iconCenter);
    return [for (final line in lines) line.rotatedAbout(center, radians)];
  }

  @override
  bool operator ==(Object other) =>
      other is DynamicMorphIcon &&
      other.name == name &&
      listEquals(other.lines, lines) &&
      other.rotationGroup == rotationGroup &&
      other.rotationDegrees == rotationDegrees;

  @override
  int get hashCode =>
      Object.hash(name, Object.hashAll(lines), rotationGroup, rotationDegrees);

  @override
  String toString() => 'DynamicMorphIcon($name)';
}
