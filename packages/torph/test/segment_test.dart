import 'package:flutter_test/flutter_test.dart';
import 'package:torph/torph.dart';

void main() {
  group('segmentText', () {
    test('empty string yields no segments', () {
      expect(segmentText(''), isEmpty);
    });

    test('splits a space-free string by grapheme', () {
      final segs = segmentText('abc');
      expect(segs.map((s) => s.string).toList(), ['a', 'b', 'c']);
      expect(segs.map((s) => s.id).toList(), ['a', 'b', 'c']);
    });

    test('duplicate graphemes get index-suffixed ids', () {
      final segs = segmentText('aa');
      expect(segs.map((s) => s.id).toList(), ['a', 'a-1']);
      expect(segs.map((s) => s.string).toList(), ['a', 'a']);
    });

    test('strings with spaces are segmented by word', () {
      final segs = segmentText('Hello world');
      expect(segs.map((s) => s.string).toList(), ['Hello', kNbsp, 'world']);
      expect(segs[1].id, 'space-1');
      expect(segs[1].string, kNbsp);
    });

    test('repeated words get index-suffixed ids', () {
      final segs = segmentText('go go');
      // ['go', space-1, 'go'] -> the second 'go' is a duplicate, keyed by its
      // word index (1).
      expect(segs.map((s) => s.id).toList(), ['go', 'space-1', 'go-1']);
    });

    test('keeps grapheme clusters (emoji) intact', () {
      final segs = segmentText('a🎉b');
      expect(segs.map((s) => s.string).toList(), ['a', '🎉', 'b']);
    });
  });
}
