import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dynamic_lucide_icons/dynamic_lucide_icons.dart';
import 'package:dynamic_lucide_icons/src/core/animated_icon_painter.dart';

/// Renders [data] at progress [t] to a [size]×[size] image and returns how many
/// pixels have non-zero alpha — i.e. how much of the icon is actually drawn.
///
/// Image rasterisation is real async work, so it must run inside
/// [WidgetTester.runAsync] rather than under the test's fake-async clock.
Future<int> _paintedPixels(
  WidgetTester tester,
  DynamicLucideIconData data,
  double t, {
  double size = 64,
}) async {
  final painted = await tester.runAsync(() async {
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    AnimatedIconPainter(
      data: data,
      t: t,
      color: const Color(0xFFFFFFFF),
      strokeWidth: 2,
    ).paint(canvas, Size(size, size));
    final image =
        await recorder.endRecording().toImage(size.toInt(), size.toInt());
    final bytes = (await image.toByteData())!.buffer.asUint8List();
    var count = 0;
    for (var i = 3; i < bytes.length; i += 4) {
      if (bytes[i] != 0) count++;
    }
    image.dispose();
    return count;
  });
  return painted!;
}

void main() {
  testWidgets('every icon is visible at its idle/rest state', (tester) async {
    // The idle state is what shows in a gallery before any interaction:
    // t = 1 for draw-on/fade-in icons, t = 0 otherwise.
    for (final entry in lucideAnimatedIcons) {
      final restT = entry.data.restsAtEnd ? 1.0 : 0.0;
      final painted = await _paintedPixels(tester, entry.data, restT);
      expect(painted, greaterThan(20),
          reason: '${entry.name} is blank at its rest state (t=$restT)');
    }
  });

  testWidgets('draw-on icons start nearly empty and fill in', (tester) async {
    // activity is a pure path-draw: at t≈0 little is drawn, at t=1 it is full.
    final atStart = await _paintedPixels(tester, kActivityIcon, 0.02);
    final atEnd = await _paintedPixels(tester, kActivityIcon, 1.0);
    expect(atEnd, greaterThan(atStart * 3));
  });

  testWidgets('opacity-staggered icons fill in over time', (tester) async {
    // wifi arcs fade in with per-arc delay; more is visible later.
    final early = await _paintedPixels(tester, kWifiIcon, 0.05);
    final late = await _paintedPixels(tester, kWifiIcon, 1.0);
    expect(late, greaterThan(early));
  });
}
