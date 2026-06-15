import 'package:dynamic_haptics/dynamic_haptics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('isSupported returns a platform value', (_) async {
    final isSupported = await FlutterHaptics.isSupported();

    expect(isSupported, isA<bool>());
  });
}
