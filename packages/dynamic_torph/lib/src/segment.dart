import 'package:characters/characters.dart';

/// A single morphable unit (a grapheme or a word) with a stable [id].
///
/// Stable ids let the engine reuse the same on-screen element when a character
/// is shared between the old and new text, which is what produces the gliding
/// "morph" instead of a cross-fade.
class Segment {
  const Segment(this.id, this.string);

  final String id;
  final String string;

  @override
  bool operator ==(Object other) =>
      other is Segment && other.id == id && other.string == string;

  @override
  int get hashCode => Object.hash(id, string);

  @override
  String toString() => 'Segment($id, "$string")';
}

/// Non-breaking space — rendered in place of a literal space so the word keeps
/// its gap during layout, matching the web library.
const String kNbsp = ' ';

/// Splits [value] into stable [Segment]s.
///
/// Port of `segmentText`: if [value] contains a space it is segmented by word,
/// otherwise by grapheme cluster. Duplicate strings get an index-suffixed id so
/// every occurrence is uniquely keyed (`'a', 'a-1', ...`).
List<Segment> segmentText(String value) {
  if (value.isEmpty) return const [];
  final byWord = value.contains(' ');
  return byWord ? _segmentByWord(value) : _segmentByGrapheme(value);
}

List<Segment> _segmentByGrapheme(String value) {
  final segments = <Segment>[];
  var index = 0; // code-unit offset, mirrors Intl.Segmenter's `data.index`
  for (final ch in value.characters) {
    _push(segments, ch, index);
    index += ch.length;
  }
  return segments;
}

List<Segment> _segmentByWord(String value) {
  final parts = value.split(' ');
  final segments = <Segment>[];
  for (var index = 0; index < parts.length; index++) {
    if (index > 0) {
      segments.add(Segment('space-$index', kNbsp));
    }
    _push(segments, parts[index], index);
  }
  return segments;
}

void _push(List<Segment> segments, String part, int index) {
  final existing = segments.any((s) => s.string == part);
  segments.add(
    existing ? Segment('$part-$index', part) : Segment(part, part),
  );
}
