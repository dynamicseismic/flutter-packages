import 'dart:ui';

import 'flip.dart';
import 'segment.dart';

const double _kMaxFadeMs = 150;
const double _kExitScale = 0.95;
const double _kEnterScale = 0.95;

double _fadeMs(double durationMs, double fraction) =>
    (durationMs * fraction).clamp(0, _kMaxFadeMs).toDouble();

/// The visual state of a segment captured mid-flight, used to seed the next
/// morph so an interrupted animation continues smoothly (mirrors the source's
/// `cancelAnimations` reading the live transform/opacity).
class MorphCarry {
  const MorphCarry(this.translate, this.opacity);
  final Offset translate;
  final double opacity;
}

/// The role a segment plays in a single morph.
enum MorphRole { persistent, entering, exiting }

/// One animatable on-screen segment for the duration of a morph.
///
/// All three roles are expressed as linear interpolations: a translate/scale
/// driven by the eased animation value, plus an independently-timed linear
/// opacity fade.
class MorphItem {
  MorphItem({
    required this.id,
    required this.string,
    required this.role,
    required this.base,
    required this.transFrom,
    required this.transTo,
    required this.scaleFrom,
    required this.scaleTo,
    required this.opacityFrom,
    required this.opacityTo,
    required this.fadeMs,
    required this.fadeDelayMs,
  });

  final String id;
  final String string;
  final MorphRole role;

  /// Resting position of the segment within the container (top-left).
  final Offset base;

  final Offset transFrom;
  final Offset transTo;
  final double scaleFrom;
  final double scaleTo;
  final double opacityFrom;
  final double opacityTo;
  final double fadeMs;
  final double fadeDelayMs;

  /// Computes the live visual state at eased value [curved] and wall-clock
  /// [elapsedMs] since the morph began.
  MorphVisual visualAt(double curved, double elapsedMs) {
    final translate = Offset.lerp(transFrom, transTo, curved)!;
    final scale = scaleFrom + (scaleTo - scaleFrom) * curved;
    final fadeT = fadeMs <= 0
        ? 1.0
        : ((elapsedMs - fadeDelayMs) / fadeMs).clamp(0.0, 1.0);
    final opacity =
        (opacityFrom + (opacityTo - opacityFrom) * fadeT).clamp(0.0, 1.0);
    return MorphVisual(base + translate, scale, opacity);
  }
}

/// Resolved position/scale/opacity of a segment at a point in time.
class MorphVisual {
  const MorphVisual(this.offset, this.scale, this.opacity);
  final Offset offset;
  final double scale;
  final double opacity;
}

/// The output of [computeMorph]: the items to render this morph plus the new
/// resting layout to remember for the next diff.
class MorphResult {
  const MorphResult({
    required this.items,
    required this.layout,
    required this.ids,
    required this.size,
  });

  final List<MorphItem> items;
  final Map<String, Offset> layout;
  final List<String> ids;
  final Size size;
}

/// Builds the resting layout for [segments] from measured [widths] (single
/// line: x accumulates, y stays 0) and the line [height].
({Map<String, Offset> layout, List<String> ids, Size size}) layoutSegments(
  List<DynamicSegment> segments,
  Map<String, double> widths,
  double height,
) {
  final layout = <String, Offset>{};
  final ids = <String>[];
  var x = 0.0;
  for (final seg in segments) {
    layout[seg.id] = Offset(x, 0);
    ids.add(seg.id);
    x += widths[seg.id] ?? 0;
  }
  return (layout: layout, ids: ids, size: Size(x, height));
}

/// Produces a static (non-animating) set of items — used for the very first
/// render and for re-layout snaps after a style/config change.
MorphResult staticMorph(
  List<DynamicSegment> segments,
  Map<String, double> widths,
  double height,
) {
  final laid = layoutSegments(segments, widths, height);
  final items = [
    for (final seg in segments)
      MorphItem(
        id: seg.id,
        string: seg.string,
        role: MorphRole.persistent,
        base: laid.layout[seg.id]!,
        transFrom: Offset.zero,
        transTo: Offset.zero,
        scaleFrom: 1,
        scaleTo: 1,
        opacityFrom: 1,
        opacityTo: 1,
        fadeMs: 0,
        fadeDelayMs: 0,
      ),
  ];
  return MorphResult(
    items: items,
    layout: laid.layout,
    ids: laid.ids,
    size: laid.size,
  );
}

/// Diffs [segments] against the previous layout and produces the per-segment
/// animation plan (the FLIP "Invert + Play" step).
///
/// [prevLayout]/[prevIds]/[prevSize] describe the last resting layout; [carry]
/// holds the live visual state of currently-shown segments for smooth
/// interruption.
MorphResult computeMorph({
  required List<DynamicSegment> segments,
  required Map<String, double> widths,
  required double height,
  required Map<String, Offset> prevLayout,
  required List<String> prevIds,
  required Map<String, String> prevStrings,
  required Map<String, MorphCarry> carry,
  required bool scaleEnabled,
  required double durationMs,
}) {
  final laid = layoutSegments(segments, widths, height);
  final layout = laid.layout;
  final ids = laid.ids;

  final newIds = ids.toSet();
  final persistentIds = <String>{
    for (final id in ids)
      if (prevLayout.containsKey(id)) id,
  };

  final items = <MorphItem>[];

  // Entering + persistent segments (new visual order).
  for (var i = 0; i < segments.length; i++) {
    final seg = segments[i];
    final isPersistent = prevLayout.containsKey(seg.id);
    final base = layout[seg.id]!;
    final carried = carry[seg.id];
    final carryT = carried?.translate ?? Offset.zero;

    final Offset layoutDelta;
    if (isPersistent) {
      layoutDelta = computeDelta(prevLayout, layout, seg.id);
    } else {
      final anchor = findNearestAnchor(i, ids, persistentIds);
      layoutDelta =
          anchor != null ? computeDelta(prevLayout, layout, anchor) : Offset.zero;
    }

    if (isPersistent) {
      final startOpacity = carried?.opacity ?? 1.0;
      items.add(MorphItem(
        id: seg.id,
        string: seg.string,
        role: MorphRole.persistent,
        base: base,
        transFrom: layoutDelta + carryT,
        transTo: Offset.zero,
        scaleFrom: 1,
        scaleTo: 1,
        opacityFrom: startOpacity,
        opacityTo: 1,
        fadeMs: startOpacity < 1 ? _fadeMs(durationMs, 0.25) : 0,
        fadeDelayMs: 0,
      ));
    } else {
      // New segment: emerge from its anchor, scale up and fade in (delayed).
      final co = carried?.opacity;
      final startOpacity = (co != null && co < 1) ? co : 0.0;
      items.add(MorphItem(
        id: seg.id,
        string: seg.string,
        role: MorphRole.entering,
        base: base,
        transFrom: layoutDelta + carryT,
        transTo: Offset.zero,
        scaleFrom: scaleEnabled ? _kEnterScale : 1,
        scaleTo: 1,
        opacityFrom: startOpacity,
        opacityTo: 1,
        fadeMs: _fadeMs(durationMs, 0.5),
        fadeDelayMs: _fadeMs(durationMs, 0.25),
      ));
    }
  }

  // Exiting segments (old visual order), drifting toward their old neighbour.
  final exitingIds = <String>{
    for (final id in prevIds)
      if (!newIds.contains(id)) id,
  };
  final exitAnchors = resolveExitingAnchors(prevIds, exitingIds, newIds);

  for (final id in prevIds) {
    if (!exitingIds.contains(id)) continue;
    final base = prevLayout[id]!;
    final anchor = exitAnchors[id];
    // Exiting drift = how far the anchor moved between old and new layouts.
    final exitDelta = anchor != null
        ? (layout[anchor] ?? base) - (prevLayout[anchor] ?? base)
        : Offset.zero;
    final carried = carry[id];
    final carryT = carried?.translate ?? Offset.zero;

    items.add(MorphItem(
      id: id,
      string: prevStrings[id] ?? id,
      role: MorphRole.exiting,
      base: base,
      transFrom: carryT,
      transTo: exitDelta,
      scaleFrom: 1,
      scaleTo: scaleEnabled ? _kExitScale : 1,
      opacityFrom: carried?.opacity ?? 1.0,
      opacityTo: 0,
      fadeMs: _fadeMs(durationMs, 0.25),
      fadeDelayMs: 0,
    ));
  }

  return MorphResult(
    items: items,
    layout: layout,
    ids: ids,
    size: laid.size,
  );
}
