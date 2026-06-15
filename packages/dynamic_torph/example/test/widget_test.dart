import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dynamic_torph_example/main.dart';

void main() {
  testWidgets('playground boots and morphs from a preset', (tester) async {
    await tester.pumpWidget(const TorphApp());

    // 'Hello' has no space -> segmented by grapheme (per-letter).
    expect(find.text('H'), findsOneWidget);

    // Morph to 'Goodbye': shared 'e'/'o' persist, 'H' is dropped.
    await tester.tap(find.widgetWithText(ActionChip, 'Goodbye'));
    await tester.pumpAndSettle();
    expect(find.text('G'), findsWidgets);
    expect(find.text('H'), findsNothing);
  });
}
