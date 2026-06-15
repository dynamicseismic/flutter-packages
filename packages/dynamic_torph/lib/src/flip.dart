import 'dart:ui';

/// FLIP helpers: position deltas and "nearest persistent neighbour" resolution.
///
/// Ported from `utils/flip.ts`. Positions are layout-space [Offset]s keyed by
/// segment id (in this single-line port, only `dx` actually varies).

/// The vector that moves [key] from its [current] position back to its [prev]
/// position (`prev - current`). Returns [Offset.zero] if [key] is missing.
Offset computeDelta(
  Map<String, Offset> prev,
  Map<String, Offset> current,
  String key,
) {
  final p = prev[key];
  final c = current[key];
  if (p == null || c == null) return Offset.zero;
  return p - c;
}

/// Search direction preference for [findNearestAnchor].
enum AnchorDirection { backwardFirst, forwardFirst }

/// Finds the nearest persistent neighbour of [targetIndex] in [ids].
///
/// Searches one direction first (per [direction]) then the other, returning the
/// first id that is in [persistentIds]. Returns null if none exists.
String? findNearestAnchor(
  int targetIndex,
  List<String> ids,
  Set<String> persistentIds, [
  AnchorDirection direction = AnchorDirection.backwardFirst,
]) {
  String? search(bool backward) {
    if (backward) {
      for (var j = targetIndex - 1; j >= 0; j--) {
        if (persistentIds.contains(ids[j])) return ids[j];
      }
    } else {
      for (var j = targetIndex + 1; j < ids.length; j++) {
        if (persistentIds.contains(ids[j])) return ids[j];
      }
    }
    return null;
  }

  final backwardFirst = direction == AnchorDirection.backwardFirst;
  return search(backwardFirst) ?? search(!backwardFirst);
}

/// For each exiting id, the persistent old neighbour it should drift toward.
///
/// Port of `resolveExitingAnchors`: persistent old ids are those still present
/// in [newIds]; exiting ids anchor forward-first.
Map<String, String?> resolveExitingAnchors(
  List<String> oldIds,
  Set<String> exitingIds,
  Set<String> newIds,
) {
  final persistentOldIds = <String>{
    for (final id in oldIds)
      if (newIds.contains(id) && !exitingIds.contains(id)) id,
  };

  final anchors = <String, String?>{};
  for (var i = 0; i < oldIds.length; i++) {
    final id = oldIds[i];
    if (!exitingIds.contains(id)) continue;
    anchors[id] = findNearestAnchor(
      i,
      oldIds,
      persistentOldIds,
      AnchorDirection.forwardFirst,
    );
  }
  return anchors;
}
