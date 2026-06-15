import 'package:flutter/services.dart';
import 'package:dynamic_haptics/dynamic_haptics.dart';
import 'package:dynamic_haptics/dynamic_haptics_method_channel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final platform = MethodChannelFlutterHaptics();
  const channel = MethodChannel('flutter_haptics');
  final calls = <MethodCall>[];

  setUp(() {
    calls.clear();
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (methodCall) async {
          calls.add(methodCall);
          return switch (methodCall.method) {
            'isSupported' => true,
            'trigger' => null,
            'cancel' => null,
            _ => null,
          };
        });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('isSupported delegates to method channel', () async {
    expect(await platform.isSupported(), isTrue);
    expect(calls.single.method, 'isSupported');
  });

  test('trigger sends primitive pattern payload', () async {
    await platform.trigger(
      const <HapticVibration>[
        HapticVibration(
          delay: Duration(milliseconds: 10),
          duration: Duration(milliseconds: 40),
          intensity: 0.8,
        ),
      ],
      intensity: 0.5,
      presetName: 'success',
    );

    final arguments = calls.single.arguments as Map<Object?, Object?>;
    final pattern = arguments['pattern']! as List<Object?>;
    final vibration = pattern.single! as Map<Object?, Object?>;

    expect(calls.single.method, 'trigger');
    expect(arguments['preset'], 'success');
    expect(arguments['intensity'], 0.5);
    expect(vibration['delay'], 10);
    expect(vibration['duration'], 40);
    expect(vibration['intensity'], 0.8);
  });

  test('cancel delegates to method channel', () async {
    await platform.cancel();

    expect(calls.single.method, 'cancel');
  });
}
