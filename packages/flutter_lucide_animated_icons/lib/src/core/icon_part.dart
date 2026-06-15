import 'part_animation.dart';

/// One drawable piece of an icon: one or more SVG sub-paths that share a single
/// [animation] (or none, for a static piece like the download tray).
///
/// Grouping multiple sub-paths under one [IconPart.group] makes them transform
/// together — the equivalent of wrapping them in one Motion `<g>`.
class IconPart {
  /// A single SVG path `d` string, optionally animated.
  const IconPart(String d, [this.animation])
      : _d = d,
        _paths = null;

  /// A group of SVG path `d` strings that animate together as one unit.
  const IconPart.group(List<String> paths, [this.animation])
      : _d = null,
        _paths = paths;

  final String? _d;
  final List<String>? _paths;
  final PartAnimation? animation;

  /// The sub-path `d` strings making up this part.
  List<String> get paths => _paths ?? <String>[_d!];
}

/// A fully described animated icon: its stroke geometry split into [parts] and
/// the [duration] of one play-through of its animation.
///
/// Instances are `const`, so an icon definition costs nothing until painted.
class LucideIconData {
  const LucideIconData({
    required this.parts,
    this.duration = const Duration(milliseconds: 500),
    this.viewBox = 24,
    this.repeats = false,
  });

  /// Ordered list of strokes. Later parts paint on top of earlier ones.
  final List<IconPart> parts;

  /// Duration of a single forward play-through (or one loop, when [repeats]).
  final Duration duration;

  /// The square viewBox size the path data is authored in (Lucide uses 24).
  final double viewBox;

  /// Whether the animation loops continuously while active (e.g. a spinner or
  /// pulsing indicator). When true, hovering/holding loops it and releasing
  /// resets to rest.
  final bool repeats;

  /// Whether this icon's resting (visible) state is at the END of its timeline
  /// — true when any part *appears* (draws on / fades in / pops in). Such icons
  /// idle at `t = 1` so they render fully when not animating, and replay the
  /// appearance from `t = 0` on activation. Looping icons are excluded (they
  /// manage their own rest).
  bool get restsAtEnd {
    if (repeats) return false;
    for (final part in parts) {
      if (part.animation?.isAppearance ?? false) return true;
    }
    return false;
  }
}
