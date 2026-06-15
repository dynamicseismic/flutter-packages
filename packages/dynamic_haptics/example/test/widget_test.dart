import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dynamic_haptics_example/main.dart';

void main() {
  testWidgets('renders the haptics demo controls', (tester) async {
    await tester.pumpWidget(const HapticsExampleApp());
    await tester.pump();

    expect(find.text('Flutter Haptics'), findsOneWidget);
    expect(find.widgetWithText(FilledButton, 'Success'), findsOneWidget);
    expect(find.widgetWithText(FilledButton, 'Cancel'), findsOneWidget);
  });
}
