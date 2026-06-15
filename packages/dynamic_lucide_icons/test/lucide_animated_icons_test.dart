import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dynamic_lucide_icons/dynamic_lucide_icons.dart';
import 'package:dynamic_lucide_icons/src/core/svg_path_parser.dart';

void main() {
  group('SvgPathParser', () {
    test('parses absolute, relative, arc and close commands', () {
      // The bell body exercises M, a (arc), c (relative cubic), H, s, Z-less.
      const samples = [
        'M6 8a6 6 0 0 1 12 0c0 7 3 9 3 9H3s3-2 3-9',
        'M22 12h-2.48a2 2 0 0 0-1.93 1.46l-2.35 8.36a.25.25 0 0 1-.48 0',
        'M2 12a10 10 0 1 0 20 0 10 10 0 1 0 -20 0', // circle as two arcs
        'm6 9 6 6 6-6', // relative moveto + lineto
      ];
      for (final d in samples) {
        final path = SvgPathParser.parse(d);
        final bounds = path.getBounds();
        expect(bounds.isFinite, isTrue, reason: d);
        expect(bounds.width > 0 || bounds.height > 0, isTrue, reason: d);
      }
    });

    test('caches identical path strings', () {
      final a = SvgPathParser.parse('M0 0 L10 10');
      final b = SvgPathParser.parse('M0 0 L10 10');
      expect(identical(a, b), isTrue);
    });

    test('arc renders inside its expected box', () {
      // A full circle of radius 10 centred at (12, 12) → bounds ~ (2,2)-(22,22).
      final bounds = SvgPathParser.parse(
        'M2 12a10 10 0 1 0 20 0 10 10 0 1 0 -20 0',
      ).getBounds();
      expect(bounds.left, closeTo(2, 0.5));
      expect(bounds.right, closeTo(22, 0.5));
    });
  });

  group('DynamicSpringCurve', () {
    test('starts at 0 and settles near 1', () {
      const curve = DynamicSpringCurve(stiffness: 200, damping: 10);
      expect(curve.transform(0), closeTo(0, 1e-6));
      expect(curve.transform(1), closeTo(1, 0.05));
    });

    test('under-damped spring overshoots past 1', () {
      const curve = DynamicSpringCurve(stiffness: 300, damping: 8);
      var maxValue = 0.0;
      for (var i = 0; i <= 100; i++) {
        maxValue = maxValue > curve.transform(i / 100) ? maxValue : curve.transform(i / 100);
      }
      expect(maxValue, greaterThan(1.0));
    });
  });

  group('DynamicAnimatedLucideIconController', () {
    testWidgets('attaches to a mounted icon and plays without error',
        (tester) async {
      final controller = DynamicAnimatedLucideIconController();
      await tester.pumpWidget(
        MaterialApp(
          home: DynamicAnimatedLucideIcon(
            icon: kBellIcon,
            controller: controller,
            trigger: DynamicAnimationTrigger.none,
          ),
        ),
      );
      expect(controller.isAttached, isTrue);
      controller.play();
      await tester.pump(const Duration(milliseconds: 100));
      await tester.pump(const Duration(milliseconds: 400));
      // Detaches cleanly on dispose.
      await tester.pumpWidget(const MaterialApp(home: SizedBox()));
      expect(controller.isAttached, isFalse);
    });
  });

  group('icon catalog', () {
    test('every entry has a unique name and a sane constName', () {
      final names = <String>{};
      for (final e in lucideAnimatedIcons) {
        expect(names.add(e.name), isTrue, reason: 'duplicate ${e.name}');
        expect(e.constName.startsWith('k'), isTrue);
        expect(e.constName.endsWith('Icon'), isTrue);
        expect(e.data.parts, isNotEmpty);
      }
    });

    testWidgets('every icon paints at t = 0, mid and end without throwing',
        (tester) async {
      for (final entry in lucideAnimatedIcons) {
        final controller = DynamicAnimatedLucideIconController();
        await tester.pumpWidget(
          MaterialApp(
            home: Center(
              child: DynamicAnimatedLucideIcon(
                icon: entry.data,
                size: 48,
                controller: controller,
                trigger: DynamicAnimationTrigger.none,
              ),
            ),
          ),
        );
        controller.play();
        await tester.pump(); // t ≈ 0
        await tester.pump(entry.data.duration ~/ 2); // mid
        await tester.pump(entry.data.duration); // end
        expect(tester.takeException(), isNull, reason: entry.name);
      }
    });
  });
}
