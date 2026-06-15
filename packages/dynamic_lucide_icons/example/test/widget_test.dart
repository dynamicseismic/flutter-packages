import 'package:flutter_test/flutter_test.dart';
import 'package:gallery/main.dart';

void main() {
  testWidgets('gallery renders the icon grid', (tester) async {
    await tester.pumpWidget(const GalleryApp());
    await tester.pump();
    expect(find.text('dynamic_lucide_icons'), findsOneWidget);
    expect(find.text('bell'), findsOneWidget);
    expect(find.text('download'), findsOneWidget);
  });
}
