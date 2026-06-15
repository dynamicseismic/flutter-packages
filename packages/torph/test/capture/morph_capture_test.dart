// Renders real morph frames to PNGs for visual inspection.
//
// Run with:  flutter test test/capture/morph_capture_test.dart --update-goldens
//
// Loads a real system font so glyphs render as actual letters (the default
// test font draws boxes). Captures the "cat" -> "dog bone" morph at the start,
// mid-flight, and settled.
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torph/torph.dart';

const _fontPath = '/System/Library/Fonts/Supplemental/Arial.ttf';

// Opt-in: this test renders golden PNGs for visual inspection and depends on a
// macOS system font, so it self-skips during the normal `flutter test` run.
// Regenerate with:  TORPH_CAPTURE=1 flutter test test/capture --update-goldens
final bool _canCapture = Platform.isMacOS &&
    File(_fontPath).existsSync() &&
    Platform.environment['TORPH_CAPTURE'] == '1';

Future<void> _loadFont() async {
  if (!_canCapture) return;
  final bytes = await File(_fontPath).readAsBytes();
  final loader = FontLoader('CaptureFont')
    ..addFont(Future.value(bytes.buffer.asByteData()));
  await loader.load();
}

void main() {
  setUpAll(_loadFont);

  testWidgets('capture morph frames', (tester) async {
    const captureKey = Key('capture');
    Widget host(String t) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(
              child: RepaintBoundary(
                key: captureKey,
                child: ColoredBox(
                  color: const Color(0xFF101018),
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: TextMorph(
                      t,
                      duration: const Duration(milliseconds: 600),
                      style: const TextStyle(
                        fontFamily: 'CaptureFont',
                        fontSize: 64,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );

    await tester.pumpWidget(host('catalog'));
    await tester.pumpAndSettle();
    await expectLater(
      find.byKey(captureKey),
      matchesGoldenFile('frames/00_initial.png'),
    );

    // Trigger the morph.
    await tester.pumpWidget(host('database'));
    await tester.pump(const Duration(milliseconds: 60)); // early
    await expectLater(
      find.byKey(captureKey),
      matchesGoldenFile('frames/01_early.png'),
    );

    await tester.pump(const Duration(milliseconds: 220)); // mid-flight
    await expectLater(
      find.byKey(captureKey),
      matchesGoldenFile('frames/02_mid.png'),
    );

    await tester.pumpAndSettle();
    await expectLater(
      find.byKey(captureKey),
      matchesGoldenFile('frames/03_settled.png'),
    );
  }, skip: !_canCapture);
}
