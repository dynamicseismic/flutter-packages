import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_morphing_icons/flutter_morphing_icons.dart';

void main() {
  group('catalogue invariants', () {
    test('the article icons are three lines; scan is the eight-line exception',
        () {
      for (final icon in MorphIcons.all) {
        final expected = icon.name == 'scan' ? 8 : 3;
        expect(icon.lines.length, expected,
            reason: '${icon.name} should have $expected lines');
      }
    });

    test('catalogue has the 21 article icons plus scan', () {
      expect(MorphIcons.all.length, 22);
      // Names are unique.
      expect(MorphIcons.all.map((i) => i.name).toSet().length, 22);
    });

    test('rotation-group members share their base coordinates', () {
      final arrows = [
        MorphIcons.arrowRight,
        MorphIcons.arrowDown,
        MorphIcons.arrowLeft,
        MorphIcons.arrowUp,
      ];
      for (final a in arrows) {
        expect(a.rotationGroup, MorphRotationGroup.arrows);
        expect(a.lines, MorphIcons.arrowRight.lines);
      }
      expect({for (final a in arrows) a.rotationDegrees}, {0, 90, 180, 270});
    });

    test('plus and cross are one group 45 degrees apart', () {
      expect(
        MorphIcons.plus.sharesRotationGroupWith(MorphIcons.cross),
        isTrue,
      );
      expect(MorphIcons.plus.lines, MorphIcons.cross.lines);
      expect(MorphIcons.cross.rotationDegrees - MorphIcons.plus.rotationDegrees,
          45);
    });

    test('icons in different groups do not share a rotation morph', () {
      expect(
        MorphIcons.arrowRight.sharesRotationGroupWith(MorphIcons.chevronRight),
        isFalse,
      );
      expect(
        MorphIcons.menu.sharesRotationGroupWith(MorphIcons.cross),
        isFalse,
      );
    });
  });

  group('MorphLine.lerp', () {
    test('interpolates endpoints at the midpoint', () {
      const a = MorphLine(Offset(0, 0), Offset(0, 0));
      const b = MorphLine(Offset(10, 10), Offset(20, 20));
      final mid = MorphLine.lerp(a, b, 0.5);
      expect(mid.a, const Offset(5, 5));
      expect(mid.b, const Offset(10, 10));
    });

    test('interpolates opacity (collapsed line growing in)', () {
      const hidden = MorphLine.hidden; // opacity 0
      const visible = MorphLine(Offset(4, 12), Offset(20, 12)); // opacity 1
      expect(MorphLine.lerp(hidden, visible, 0).opacity, 0);
      expect(MorphLine.lerp(hidden, visible, 0.5).opacity, closeTo(0.5, 1e-9));
      expect(MorphLine.lerp(hidden, visible, 1).opacity, 1);
    });

    test('endpoints equal the source/target at t=0 and t=1', () {
      const a = MorphLine(Offset(1, 2), Offset(3, 4));
      const b = MorphLine(Offset(9, 8), Offset(7, 6));
      expect(MorphLine.lerp(a, b, 0).a, a.a);
      expect(MorphLine.lerp(a, b, 1).b, b.b);
    });
  });

  group('MorphIcon.resolvedLines', () {
    test('non-grouped icons return their lines unchanged', () {
      expect(MorphIcons.menu.resolvedLines, MorphIcons.menu.lines);
    });

    test('a 90-degree arrow rotates its base coordinates about the centre', () {
      // arrowRight tip is at (20, 12). Rotated 90deg about (12,12) -> (12, 20).
      final tipRight = MorphIcons.arrowRight.resolvedLines[0].b;
      expect(tipRight, const Offset(20, 12));

      final tipDown = MorphIcons.arrowDown.resolvedLines[0].b;
      expect(tipDown.dx, closeTo(12, 1e-6));
      expect(tipDown.dy, closeTo(20, 1e-6));
    });
  });

  group('MorphingIcon widget', () {
    testWidgets('renders and reaches a steady state for a static icon',
        (tester) async {
      await tester.pumpWidget(
        const Center(
          child: MorphingIcon(icon: MorphIcons.menu, size: 48),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(MorphingIcon), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('animates when the icon changes', (tester) async {
      await tester.pumpWidget(const _Harness(icon: MorphIcons.menu));
      await tester.pumpAndSettle();

      // Swap to a different icon; the morph should now be in flight.
      await tester.pumpWidget(const _Harness(icon: MorphIcons.cross));
      await tester.pump(const Duration(milliseconds: 100));
      expect(tester.hasRunningAnimations, isTrue);

      await tester.pumpAndSettle();
      expect(tester.hasRunningAnimations, isFalse);
      expect(tester.takeException(), isNull);
    });

    testWidgets('morphs between icons of different line counts (menu <-> scan)',
        (tester) async {
      await tester.pumpWidget(const _Harness(icon: MorphIcons.menu));
      await tester.pumpAndSettle();

      await tester.pumpWidget(const _Harness(icon: MorphIcons.scan)); // 3 -> 8
      await tester.pump(const Duration(milliseconds: 100));
      await tester.pumpAndSettle();

      await tester.pumpWidget(const _Harness(icon: MorphIcons.menu)); // 8 -> 3
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
    });
  });
}

class _Harness extends StatelessWidget {
  const _Harness({required this.icon});

  final MorphIcon icon;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: MorphingIcon(
          icon: icon,
          size: 48,
          color: const Color(0xFF000000),
        ),
      ),
    );
  }
}
