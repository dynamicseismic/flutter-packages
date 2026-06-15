import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dynamic_morphing_icons/dynamic_morphing_icons.dart';

void main() {
  group('catalogue invariants', () {
    test('the article icons are three lines; scan is the eight-line exception',
        () {
      for (final icon in DynamicMorphIcons.all) {
        final expected = icon.name == 'scan' ? 8 : 3;
        expect(icon.lines.length, expected,
            reason: '${icon.name} should have $expected lines');
      }
    });

    test('catalogue has the 21 article icons plus scan', () {
      expect(DynamicMorphIcons.all.length, 22);
      // Names are unique.
      expect(DynamicMorphIcons.all.map((i) => i.name).toSet().length, 22);
    });

    test('rotation-group members share their base coordinates', () {
      final arrows = [
        DynamicMorphIcons.arrowRight,
        DynamicMorphIcons.arrowDown,
        DynamicMorphIcons.arrowLeft,
        DynamicMorphIcons.arrowUp,
      ];
      for (final a in arrows) {
        expect(a.rotationGroup, DynamicMorphRotationGroup.arrows);
        expect(a.lines, DynamicMorphIcons.arrowRight.lines);
      }
      expect({for (final a in arrows) a.rotationDegrees}, {0, 90, 180, 270});
    });

    test('plus and cross are one group 45 degrees apart', () {
      expect(
        DynamicMorphIcons.plus.sharesRotationGroupWith(DynamicMorphIcons.cross),
        isTrue,
      );
      expect(DynamicMorphIcons.plus.lines, DynamicMorphIcons.cross.lines);
      expect(DynamicMorphIcons.cross.rotationDegrees - DynamicMorphIcons.plus.rotationDegrees,
          45);
    });

    test('icons in different groups do not share a rotation morph', () {
      expect(
        DynamicMorphIcons.arrowRight.sharesRotationGroupWith(DynamicMorphIcons.chevronRight),
        isFalse,
      );
      expect(
        DynamicMorphIcons.menu.sharesRotationGroupWith(DynamicMorphIcons.cross),
        isFalse,
      );
    });
  });

  group('DynamicMorphLine.lerp', () {
    test('interpolates endpoints at the midpoint', () {
      const a = DynamicMorphLine(Offset(0, 0), Offset(0, 0));
      const b = DynamicMorphLine(Offset(10, 10), Offset(20, 20));
      final mid = DynamicMorphLine.lerp(a, b, 0.5);
      expect(mid.a, const Offset(5, 5));
      expect(mid.b, const Offset(10, 10));
    });

    test('interpolates opacity (collapsed line growing in)', () {
      const hidden = DynamicMorphLine.hidden; // opacity 0
      const visible = DynamicMorphLine(Offset(4, 12), Offset(20, 12)); // opacity 1
      expect(DynamicMorphLine.lerp(hidden, visible, 0).opacity, 0);
      expect(DynamicMorphLine.lerp(hidden, visible, 0.5).opacity, closeTo(0.5, 1e-9));
      expect(DynamicMorphLine.lerp(hidden, visible, 1).opacity, 1);
    });

    test('endpoints equal the source/target at t=0 and t=1', () {
      const a = DynamicMorphLine(Offset(1, 2), Offset(3, 4));
      const b = DynamicMorphLine(Offset(9, 8), Offset(7, 6));
      expect(DynamicMorphLine.lerp(a, b, 0).a, a.a);
      expect(DynamicMorphLine.lerp(a, b, 1).b, b.b);
    });
  });

  group('DynamicMorphIcon.resolvedLines', () {
    test('non-grouped icons return their lines unchanged', () {
      expect(DynamicMorphIcons.menu.resolvedLines, DynamicMorphIcons.menu.lines);
    });

    test('a 90-degree arrow rotates its base coordinates about the centre', () {
      // arrowRight tip is at (20, 12). Rotated 90deg about (12,12) -> (12, 20).
      final tipRight = DynamicMorphIcons.arrowRight.resolvedLines[0].b;
      expect(tipRight, const Offset(20, 12));

      final tipDown = DynamicMorphIcons.arrowDown.resolvedLines[0].b;
      expect(tipDown.dx, closeTo(12, 1e-6));
      expect(tipDown.dy, closeTo(20, 1e-6));
    });
  });

  group('DynamicMorphingIcon widget', () {
    testWidgets('renders and reaches a steady state for a static icon',
        (tester) async {
      await tester.pumpWidget(
        const Center(
          child: DynamicMorphingIcon(icon: DynamicMorphIcons.menu, size: 48),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(DynamicMorphingIcon), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('animates when the icon changes', (tester) async {
      await tester.pumpWidget(const _Harness(icon: DynamicMorphIcons.menu));
      await tester.pumpAndSettle();

      // Swap to a different icon; the morph should now be in flight.
      await tester.pumpWidget(const _Harness(icon: DynamicMorphIcons.cross));
      await tester.pump(const Duration(milliseconds: 100));
      expect(tester.hasRunningAnimations, isTrue);

      await tester.pumpAndSettle();
      expect(tester.hasRunningAnimations, isFalse);
      expect(tester.takeException(), isNull);
    });

    testWidgets('morphs between icons of different line counts (menu <-> scan)',
        (tester) async {
      await tester.pumpWidget(const _Harness(icon: DynamicMorphIcons.menu));
      await tester.pumpAndSettle();

      await tester.pumpWidget(const _Harness(icon: DynamicMorphIcons.scan)); // 3 -> 8
      await tester.pump(const Duration(milliseconds: 100));
      await tester.pumpAndSettle();

      await tester.pumpWidget(const _Harness(icon: DynamicMorphIcons.menu)); // 8 -> 3
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
    });
  });
}

class _Harness extends StatelessWidget {
  const _Harness({required this.icon});

  final DynamicMorphIcon icon;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: DynamicMorphingIcon(
          icon: icon,
          size: 48,
          color: const Color(0xFF000000),
        ),
      ),
    );
  }
}
