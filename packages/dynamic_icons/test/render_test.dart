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
            icon: CryptoIcons.ethereum,
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
    expect(LucideIcons.bell.style, IconStyle.stroke);
    expect(LucideIcons.bell.backgroundColor, isNull);
    expect(CryptoIcons.ethereum.style, IconStyle.fill);
    expect(CryptoIcons.ethereum.backgroundColor, isNotNull);
    expect(CryptoIcons.ethereum.viewBox, 360);
  });

  test('Solana splits into three gradient bars', () {
    expect(CryptoIcons.solana.parts.length, 3);
    expect(CryptoIcons.solana.parts.every((p) => p.gradient != null), isTrue);
  });

  test('spinner icons repeat, appearance icons rest at end', () {
    expect(CryptoIcons.bnb.repeats, isTrue);
    expect(CryptoIcons.bnb.restsAtEnd, isFalse);
    expect(CryptoIcons.ethereum.restsAtEnd, isTrue);
    expect(CryptoIcons.solana.restsAtEnd, isTrue);
    expect(CryptoIcons.bittensor.restsAtEnd, isTrue);
  });

  test('constName maps kebab names to k…Icon identifiers', () {
    final byName = {for (final e in dynamicIcons) e.name: e.constName};
    expect(byName['ethereum'], 'kEthereumIcon');
    expect(byName['bittensor-evm'], 'kBittensorEvmIcon');
    expect(byName['bell'], 'kBellIcon');
  });
}
