// Proof capture: does a single-word morph actually SHARE + GLIDE characters?
//   TORPH_CAPTURE=1 flutter test test/capture/share_capture_test.dart --update-goldens
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dynamic_torph/dynamic_torph.dart';

const _fontPath = '/System/Library/Fonts/Supplemental/Arial.ttf';
final bool _canCapture = Platform.isMacOS &&
    File(_fontPath).existsSync() &&
    Platform.environment['TORPH_CAPTURE'] == '1';

void main() {
  setUpAll(() async {
    if (!_canCapture) return;
    final bytes = await File(_fontPath).readAsBytes();
    await (FontLoader('CaptureFont')
          ..addFont(Future.value(bytes.buffer.asByteData())))
        .load();
  });

  testWidgets('Hello -> Goodbye shares e and o', (tester) async {
    const captureKey = Key('capture');
    Widget host(String t, {bool debug = false}) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(
              child: RepaintBoundary(
                key: captureKey,
                child: ColoredBox(
                  color: const Color(0xFF101018),
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: DynamicTextMorph(
                      t,
                      duration: const Duration(milliseconds: 700),
                      ease: const DynamicTorphEase.cubic(Cubic(0.4, 0, 0.2, 1)),
                      debug: debug,
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

    await tester.pumpWidget(host('Hello'));
    await tester.pumpAndSettle();
    await expectLater(
        find.byKey(captureKey), matchesGoldenFile('share/0_hello.png'));

    await tester.pumpWidget(host('Goodbye'));
    for (final (i, ms) in [120, 260, 420, 700].indexed) {
      await tester.pump(Duration(milliseconds: i == 0 ? ms : ms - [120, 260, 420, 700][i - 1]));
      await expectLater(
          find.byKey(captureKey), matchesGoldenFile('share/${i + 1}_t$ms.png'));
    }
  }, skip: !_canCapture);
}
