import 'package:dynamic_icons/dynamic_icons.dart';
import 'package:dynamic_icons/src/core/svg_path_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('a sample of stroke + all brand icons build and animate', (
    tester,
  ) async {
    final sample = <IconEntry>[...lucideIcons.take(12), ...cryptoIcons];
    for (final entry in sample) {
      final controller = IconController();
      await tester.pumpWidget(
        MaterialApp(
          home: Center(
            child: DynamicIcon(
              icon: entry.data,
              controller: controller,
              trigger: AnimationTrigger.none,
              size: 48,
            ),
          ),
        ),
      );
      expect(find.byType(DynamicIcon), findsOneWidget, reason: entry.name);
      controller.play();
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));
      await tester.pump(const Duration(milliseconds: 400));
      controller.reset();
      await tester.pump();
    }
  });

  testWidgets('a filled icon renders glyph-only without a background', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Center(
          child: DynamicIcon(
            icon: Crypto.ethereum,
            showBackground: false,
            shape: IconShape.none,
          ),
        ),
      ),
    );
    expect(tester.takeException(), isNull);
  });

  test('catalogs are populated and combined', () {
    expect(lucideIcons, isNotEmpty);
    expect(cryptoIcons.length, 6);
    expect(dynamicIcons.length, lucideIcons.length + cryptoIcons.length);
  });

  test('every icon parses its paths to real geometry', () {
    for (final entry in dynamicIcons) {
      for (final part in entry.data.parts) {
        for (final d in part.paths) {
          // A valid sub-path spans at least one dimension (degenerate
          // axis-aligned lines, like a cog tick, have zero width or height).
          final b = SvgPathParser.parse(d).getBounds();
          expect(
            b.width > 0 || b.height > 0,
            isTrue,
            reason: '${entry.name}: $d',
          );
        }
      }
    }
  });

  test('stroke vs fill defaults are correct', () {
    expect(Lucide.bell.style, IconStyle.stroke);
    expect(Lucide.bell.backgroundColor, isNull);
    expect(Crypto.ethereum.style, IconStyle.fill);
    expect(Crypto.ethereum.backgroundColor, isNotNull);
    expect(Crypto.ethereum.viewBox, 360);
  });

  test('Solana splits into three gradient bars', () {
    expect(Crypto.solana.parts.length, 3);
    expect(Crypto.solana.parts.every((p) => p.gradient != null), isTrue);
  });

  test('spinner icons repeat, appearance icons rest at end', () {
    expect(Crypto.bnb.repeats, isTrue);
    expect(Crypto.bnb.restsAtEnd, isFalse);
    expect(Crypto.ethereum.restsAtEnd, isTrue);
    expect(Crypto.solana.restsAtEnd, isTrue);
    expect(Crypto.bittensor.restsAtEnd, isTrue);
  });

  group('DynamicIconTheme', () {
    test('merge layers this over other; copyWith replaces fields', () {
      const base = DynamicIconThemeData(size: 40, strokeWidth: 3);
      final merged = const DynamicIconThemeData(size: 20).merge(base);
      expect(merged.size, 20); // local wins
      expect(merged.strokeWidth, 3); // filled in from base
      expect(base.copyWith(size: 99).size, 99);
      expect(base.copyWith(size: 99).strokeWidth, 3); // untouched
    });

    testWidgets('icon inherits theme size; explicit size wins', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: DynamicIconTheme(
            data: DynamicIconThemeData(size: 50),
            child: Column(
              children: [
                DynamicIcon(icon: Lucide.bell, trigger: AnimationTrigger.none),
                DynamicIcon(
                  icon: Lucide.bell,
                  size: 12,
                  trigger: AnimationTrigger.none,
                ),
              ],
            ),
          ),
        ),
      );

      Size paintOf(int i) => tester
          .widget<CustomPaint>(
            find.descendant(
              of: find.byType(DynamicIcon).at(i),
              matching: find.byType(CustomPaint),
            ),
          )
          .size;

      expect(paintOf(0), const Size.square(50)); // inherited from theme
      expect(paintOf(1), const Size.square(12)); // explicit overrides theme
    });

    testWidgets('theme trigger drives the gesture wrappers', (tester) async {
      Finder hoverIn(Finder of) =>
          find.descendant(of: of, matching: find.byType(MouseRegion));

      await tester.pumpWidget(
        const MaterialApp(
          home: DynamicIconTheme(
            data: DynamicIconThemeData(trigger: AnimationTrigger.none),
            child: DynamicIcon(icon: Lucide.bell),
          ),
        ),
      );
      expect(hoverIn(find.byType(DynamicIcon)), findsNothing);

      await tester.pumpWidget(
        const MaterialApp(home: DynamicIcon(icon: Lucide.bell)),
      );
      expect(hoverIn(find.byType(DynamicIcon)), findsOneWidget);
    });
  });
}
