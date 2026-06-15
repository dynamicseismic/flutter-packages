import 'package:flutter_test/flutter_test.dart';
import 'package:showcase/main.dart';

void main() {
  testWidgets('home lists every package demo', (tester) async {
    await tester.pumpWidget(const ShowcaseApp());
    await tester.pumpAndSettle();

    expect(find.text('Haptics'), findsOneWidget);
    expect(find.text('Animated Lucide Icons'), findsOneWidget);
    expect(find.text('Morphing Icons'), findsOneWidget);
    expect(find.text('Torph'), findsOneWidget);
  });

  testWidgets('each demo page opens and renders', (tester) async {
    await tester.pumpWidget(const ShowcaseApp());
    await tester.pumpAndSettle();

    Future<void> openAndReturn(String card, Finder marker) async {
      await tester.tap(find.text(card));
      await tester.pumpAndSettle();
      expect(marker, findsOneWidget);
      await tester.pageBack();
      await tester.pumpAndSettle();
    }

    await openAndReturn('Haptics', find.text('Presets (HapticEffect)'));
    await openAndReturn(
      'Animated Lucide Icons',
      find.text('Hover on desktop · tap on mobile'),
    );
    await openAndReturn(
      'Morphing Icons',
      find.text('Tap the circle to morph to the next icon'),
    );
    await openAndReturn('Torph', find.text('Easing'));
  });
}
