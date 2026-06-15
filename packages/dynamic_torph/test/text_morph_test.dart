import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dynamic_torph/dynamic_torph.dart';

Widget _host(String text, {bool disabled = false}) => MaterialApp(
      home: Scaffold(
        body: Center(
          child: DynamicTextMorph(
            text,
            disabled: disabled,
            style: const TextStyle(fontSize: 32),
          ),
        ),
      ),
    );

void main() {
  testWidgets('renders initial text as per-character segments', (tester) async {
    await tester.pumpWidget(_host('abc'));
    // Each grapheme is its own Text widget.
    expect(find.text('a'), findsOneWidget);
    expect(find.text('b'), findsOneWidget);
    expect(find.text('c'), findsOneWidget);
  });

  testWidgets('morph settles on the new text', (tester) async {
    await tester.pumpWidget(_host('cat'));
    await tester.pumpWidget(_host('cab'));
    await tester.pumpAndSettle();

    // Final, settled text shows the new segments and drops the removed one.
    expect(find.text('b'), findsWidgets);
    expect(find.text('t'), findsNothing);
  });

  testWidgets('shared characters persist across a morph', (tester) async {
    await tester.pumpWidget(_host('cat'));
    await tester.pumpWidget(_host('car'));
    // Mid-flight, the shared 'c' and 'a' are still present.
    await tester.pump(const Duration(milliseconds: 100));
    expect(find.text('c'), findsWidgets);
    expect(find.text('a'), findsWidgets);
    await tester.pumpAndSettle();
    expect(find.text('r'), findsWidgets);
  });

  testWidgets('disabled renders plain text without morphing', (tester) async {
    await tester.pumpWidget(_host('hello world', disabled: true));
    expect(find.text('hello world'), findsOneWidget);
  });

  testWidgets('a persisting character glides from its old to new position',
      (tester) async {
    // Top-left aligned so global coordinates == the segment's layout position
    // (no centering offset to account for).
    Widget host(String t) => MaterialApp(
          home: Align(
            alignment: Alignment.topLeft,
            child: DynamicTextMorph(t, style: const TextStyle(fontSize: 40)),
          ),
        );

    await tester.pumpWidget(host('AB'));
    await tester.pumpAndSettle();
    // In "AB", 'B' sits to the right of 'A'.
    final startX = tester.getTopLeft(find.text('B')).dx;
    expect(startX, greaterThan(0));

    // Morph to "B": 'A' exits and 'B' should glide left toward x = 0.
    await tester.pumpWidget(host('B'));
    await tester.pump(); // first animation frame (~t0): still near the old spot
    expect(tester.getTopLeft(find.text('B')).dx, closeTo(startX, 2));

    await tester.pump(const Duration(milliseconds: 220)); // mid-flight
    final midX = tester.getTopLeft(find.text('B')).dx;
    expect(midX, lessThan(startX));
    expect(midX, greaterThan(-1));

    await tester.pumpAndSettle(); // settled at the new layout
    expect(tester.getTopLeft(find.text('B')).dx, closeTo(0, 1));
  });

  testWidgets('fires onAnimationComplete after a morph', (tester) async {
    var completed = 0;
    Widget host(String t) => MaterialApp(
          home: Scaffold(
            body: DynamicTextMorph(t, onAnimationComplete: () => completed++),
          ),
        );
    await tester.pumpWidget(host('one'));
    await tester.pumpWidget(host('two'));
    await tester.pumpAndSettle();
    expect(completed, greaterThanOrEqualTo(1));
  });
}
