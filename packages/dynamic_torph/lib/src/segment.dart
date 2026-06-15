import 'package:characters/characters.dart';

/// A single morphable unit (a grapheme or a word) with a stable [id].
///
/// Stable ids let the engine reuse the same on-screen element when a character
/// is shared between the old and new text, which is what produces the gliding
/// "morph" instead of a cross-fade.
class DynamicSegment {
  const DynamicSegment(this.id, this.string);

  final String id;
  final String string;

  @override
  bool operator ==(Object other) =>
      other is DynamicSegment && other.id == id && other.string == string;

  @override
  int get hashCode => Object.hash(id, string);

  @override
  String toString() => 'DynamicSegment($id, "$string")';
}

/// Non-breaking space — rendered in place of a literal space so the word keeps
/// its gap during layout, matching the web library.
const String kNbsp = ' ';

/// Splits [value] into stable [DynamicSegment]s.
///
/// Port of `segmentText`: if [value] contains a space it is segmented by word,
/// otherwise by grapheme cluster. Duplicate strings get an index-suffixed id so
/// every occurrence is uniquely keyed (`'a', 'a-1', ...`).
List<DynamicSegment> segmentText(String value) {
  if (value.isEmpty) return const [];
  final byWord = value.contains(' ');
  return byWord ? _segmentByWord(value) : _segmentByGrapheme(value);
}

List<DynamicSegment> _segmentByGrapheme(String value) {
  final segments = <DynamicSegment>[];
  var index = 0; // code-unit offset, mirrors Intl.Segmenter's `data.index`
  for (final ch in value.characters) {
    _push(segments, ch, index);
    index += ch.length;
  }
  return segments;
}

List<DynamicSegment> _segmentByWord(String value) {
  final parts = value.split(' ');
  final segments = <DynamicSegment>[];
  for (var index = 0; index < parts.length; index++) {
    if (index > 0) {
      segments.add(DynamicSegment('space-$index', kNbsp));
    }
    _push(segments, parts[index], index);
  }
  return segments;
}

void _push(List<DynamicSegment> segments, String part, int index) {
  final existing = segments.any((s) => s.string == part);
  segments.add(
    existing ? DynamicSegment('$part-$index', part) : DynamicSegment(part, part),
  );
}
