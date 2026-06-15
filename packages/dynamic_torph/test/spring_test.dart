import 'package:flutter_test/flutter_test.dart';
import 'package:dynamic_torph/dynamic_torph.dart';

void main() {
  group('resolveSpring', () {
    test('default spring settles in a reasonable, finite duration', () {
      final r = resolveSpring(const DynamicSpringParams());
      expect(r.duration.inMilliseconds, greaterThan(0));
      expect(r.duration.inMilliseconds, lessThan(10000));
    });

    test('sampled curve runs from 0 to 1', () {
      final r = resolveSpring(const DynamicSpringParams(stiffness: 200, damping: 20));
      expect(r.curve.transform(0), closeTo(0, 1e-9));
      expect(r.curve.transform(1), closeTo(1, 1e-9));
    });

    test('underdamped spring overshoots past 1', () {
      // Low damping -> bouncy -> the displacement exceeds 1 somewhere.
      final r = resolveSpring(const DynamicSpringParams(stiffness: 300, damping: 5));
      var maxValue = 0.0;
      for (var i = 0; i <= 100; i++) {
        maxValue = maxValue < r.curve.transform(i / 100)
            ? r.curve.transform(i / 100)
            : maxValue;
      }
      expect(maxValue, greaterThan(1.0));
    });

    test('overdamped spring is monotonic and never overshoots', () {
      // damping high relative to stiffness -> zeta > 1.
      final r = resolveSpring(const DynamicSpringParams(stiffness: 100, damping: 40));
      double prev = -1;
      for (var i = 0; i <= 100; i++) {
        final v = r.curve.transform(i / 100);
        expect(v, lessThanOrEqualTo(1.0 + 1e-6));
        expect(v, greaterThanOrEqualTo(prev - 1e-6));
        prev = v;
      }
    });

    test('results are memoized (same identity for same params)', () {
      final a = resolveSpring(const DynamicSpringParams(stiffness: 150, damping: 12));
      final b = resolveSpring(const DynamicSpringParams(stiffness: 150, damping: 12));
      expect(identical(a, b), isTrue);
    });
  });
}
