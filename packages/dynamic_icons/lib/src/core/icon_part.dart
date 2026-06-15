import 'dart:ui';

import 'part_animation.dart';

/// How a part is painted: as a stroke (Lucide-style outline glyphs) or a solid
/// fill (brand marks, crypto icons).
enum IconStyle { stroke, fill }

/// A linear gradient fill described in viewBox coordinates (the SVG
/// `gradientUnits="userSpaceOnUse"` convention). Used for marks like Solana
/// whose glyph is a single gradient sweep.
class DynamicLinearGradient {
  const DynamicLinearGradient({
    required this.from,
    required this.to,
    required this.colors,
    required this.stops,
  });

  /// Gradient start/end, in the icon's viewBox space.
  final Offset from;
  final Offset to;

  /// Gradient stop colours and their `0..1` offsets (same length).
  final List<Color> colors;
  final List<double> stops;

  /// Builds a [Gradient] shader, optionally pre-multiplying every stop's alpha
  /// by [alpha] (a shader ignores the paint's colour, so fades must bake into
  /// the stops).
  Gradient toShader({double alpha = 1.0}) => Gradient.linear(
    from,
    to,
    alpha >= 1.0
        ? colors
        : [for (final c in colors) c.withValues(alpha: c.a * alpha)],
    stops,
  );
}

/// One drawable piece of an icon: one or more SVG sub-paths that share a single
/// style and [animation] (or none, for a static piece).
///
/// The default constructor produces a **stroke** part (Lucide-style); use
/// [IconPart.fill] / [IconPart.fillGroup] for **filled**,
/// optionally coloured or gradient parts.
///
/// Grouping multiple sub-paths under one of the `group` constructors makes them
/// transform together — the equivalent of wrapping them in one `<g>`.
class IconPart {
  /// A single SVG path `d` string, optionally animated. Painted in the icon's
  /// default style (stroke unless the icon sets [DynamicIconData.style]).
  const IconPart(String d, [this.animation])
    : _d = d,
      _paths = null,
      color = null,
      opacity = 1.0,
      gradient = null,
      style = null;

  /// A group of SVG path `d` strings that animate together as one unit.
  const IconPart.group(List<String> paths, [this.animation])
    : _d = null,
      _paths = paths,
      color = null,
      opacity = 1.0,
      gradient = null,
      style = null;

  /// A single **filled** path, with an optional [color] / [gradient] and a
  /// static [opacity] tier.
  const IconPart.fill(
    String d, {
    this.color,
    this.opacity = 1.0,
    this.gradient,
    this.animation,
  }) : _d = d,
       _paths = null,
       style = IconStyle.fill;

  /// A group of **filled** paths painted and animated as one unit.
  const IconPart.fillGroup(
    List<String> paths, {
    this.color,
    this.opacity = 1.0,
    this.gradient,
    this.animation,
  }) : _d = null,
       _paths = paths,
       style = IconStyle.fill;

  final String? _d;
  final List<String>? _paths;

  /// Optional animation for this part.
  final PartAnimation? animation;

  /// Explicit fill/stroke colour. When null, the widget's ambient colour is
  /// used (`currentColor` for stroke glyphs). Ignored when [gradient] is set.
  final Color? color;

  /// Static opacity tier baked into the mark (e.g. Ethereum's dimmed facets).
  /// Multiplies with any animated opacity.
  final double opacity;

  /// Optional gradient fill (takes precedence over [color]).
  final DynamicLinearGradient? gradient;

  /// Per-part style override. When null, the part uses [DynamicIconData.style].
  final IconStyle? style;

  /// The sub-path `d` strings making up this part.
  List<String> get paths => _paths ?? <String>[_d!];
}

/// A fully described animated icon: its geometry split into [parts] and the
/// [duration] of one play-through of its animation.
///
/// Stroke icons (Lucide) leave [backgroundColor] null and use the default
/// [IconStyle.stroke]. Filled brand icons set [style] to
/// [IconStyle.fill] and a [backgroundColor] for the chip behind the
/// glyph.
///
/// Instances are typically `const`, so a definition costs nothing until painted.
class DynamicIconData {
  const DynamicIconData({
    required this.parts,
    this.duration = const Duration(milliseconds: 500),
    this.viewBox = 24,
    this.repeats = false,
    this.style = IconStyle.stroke,
    this.backgroundColor,
  });

  /// Ordered list of pieces. Later parts paint on top of earlier ones.
  final List<IconPart> parts;

  /// Duration of a single forward play-through (or one loop, when [repeats]).
  final Duration duration;

  /// The square viewBox size the path data is authored in (Lucide uses 24,
  /// brand marks here use 360).
  final double viewBox;

  /// Whether the animation loops continuously while active (e.g. a spinner or
  /// pulsing indicator).
  final bool repeats;

  /// Default paint style for parts that don't override it.
  final IconStyle style;

  /// Brand background colour painted behind the glyph (the "chip"). Null means
  /// no background — the typical case for stroke glyphs.
  final Color? backgroundColor;

  /// Whether this icon's resting (visible) state is at the END of its timeline
  /// — true when any part *appears* (draws on / wipes on / fades in / pops in).
  /// Such icons idle at `t = 1` so they render fully when not animating, and
  /// replay the appearance from `t = 0` on activation. Looping icons are
  /// excluded (they manage their own rest).
  bool get restsAtEnd {
    if (repeats) return false;
    for (final part in parts) {
      if (part.animation?.isAppearance ?? false) return true;
    }
    return false;
  }
}
