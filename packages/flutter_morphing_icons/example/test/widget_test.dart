import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_morphing_icons/flutter_morphing_icons.dart';

import 'package:morphing_icons_example/main.dart';

void main() {
  testWidgets('tapping the hero cycles to the next icon', (tester) async {
    await tester.pumpWidget(const MorphingIconsDemo());

    // Starts on the first icon, shown by name under the hero.
    expect(find.text(MorphIcons.all.first.name), findsOneWidget);

    // Tap the hero (its semantic label) and let the morph settle.
    await tester.tap(find.bySemanticsLabel('Cycle to next icon'));
    await tester.pumpAndSettle();

    expect(find.text(MorphIcons.all[1].name), findsOneWidget);
  });
}
