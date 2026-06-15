import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lucide_animated_icons/lucide_animated_icons.dart';
import 'package:lucide_animated_icons/src/core/animated_icon_painter.dart';

/// Not a real test — renders all icons into a single PNG for visual review.
/// Run with: flutter test test/contact_sheet.dart
void main() {
  testWidgets('render contact sheet PNG', (tester) async {
    const cell = 52.0;
    const cols = 16;
    final icons = lucideAnimatedIcons;
    final rows = (icons.length / cols).ceil();
    final width = cols * cell;
    final height = rows * cell;

    await tester.runAsync(() async {
      final recorder = ui.PictureRecorder();
      final canvas = Canvas(recorder);
      canvas.drawRect(
        Rect.fromLTWH(0, 0, width, height),
        Paint()..color = const Color(0xFF111111),
      );

      for (var i = 0; i < icons.length; i++) {
        final col = i % cols;
        final row = i ~/ cols;
        final dx = col * cell;
        final dy = row * cell;
        const iconSize = 34.0;
        canvas.save();
        canvas.translate(dx + (cell - iconSize) / 2, dy + (cell - iconSize) / 2);
        // Render the idle/rest state — exactly what a gallery shows at rest.
        AnimatedIconPainter(
          data: icons[i].data,
          t: icons[i].data.restsAtEnd ? 1.0 : 0.0,
          color: const Color(0xFFFFFFFF),
          strokeWidth: 2,
        ).paint(canvas, const Size(iconSize, iconSize));
        canvas.restore();
      }

      final image =
          await recorder.endRecording().toImage(width.toInt(), height.toInt());
      final png = await image.toByteData(format: ui.ImageByteFormat.png);
      final dir = Directory('build')..createSync(recursive: true);
      File('${dir.path}/contact_sheet.png')
          .writeAsBytesSync(png!.buffer.asUint8List());
    });
  });
}
