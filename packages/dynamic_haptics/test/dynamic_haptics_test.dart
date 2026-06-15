import 'package:dynamic_haptics/dynamic_haptics.dart';
import 'package:dynamic_haptics/dynamic_haptics_method_channel.dart';
import 'package:dynamic_haptics/dynamic_haptics_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class RecordingDynamicHapticsPlatform
    with MockPlatformInterfaceMixin
    implements DynamicHapticsPlatform {
  bool supported = true;
  List<DynamicHapticVibration>? lastPattern;
  double? lastIntensity;
  String? lastPresetName;
  var cancelCount = 0;

  @override
  Future<bool> isSupported() async => supported;

  @override
  Future<void> trigger(
    List<DynamicHapticVibration> pattern, {
    required double intensity,
    String? presetName,
  }) async {
    lastPattern = pattern;
    lastIntensity = intensity;
    lastPresetName = presetName;
  }

  @override
  Future<void> cancel() async {
    cancelCount += 1;
  }
}

void main() {
  test('$MethodChannelDynamicHaptics is the default instance', () {
    expect(
      DynamicHapticsPlatform.instance,
      isInstanceOf<MethodChannelDynamicHaptics>(),
    );
  });

  group('DynamicHaptics', () {
    late RecordingDynamicHapticsPlatform platform;
    late DynamicHaptics haptics;

    setUp(() {
      platform = RecordingDynamicHapticsPlatform();
      haptics = DynamicHaptics(platform: platform);
    });

    test('reports support from platform', () async {
      expect(await haptics.supportsHaptics, isTrue);

      platform.supported = false;

      expect(await haptics.supportsHaptics, isFalse);
    });

    test('normalizes named presets', () async {
      await haptics.trigger('success');

      expect(platform.lastPresetName, 'success');
      expect(platform.lastIntensity, 0.5);
      expect(platform.lastPattern, DynamicHapticPresets.success.pattern);
    });

    test('normalizes enum presets', () async {
      await haptics.trigger(DynamicHapticEffect.warning);

      expect(platform.lastPresetName, 'warning');
      expect(platform.lastPattern, DynamicHapticPresets.warning.pattern);
    });

    test('normalizes number shorthand', () async {
      await haptics.trigger(<int>[100, 50, 100]);

      expect(platform.lastPattern, const <DynamicHapticVibration>[
        DynamicHapticVibration(duration: Duration(milliseconds: 100)),
        DynamicHapticVibration(
          delay: Duration(milliseconds: 50),
          duration: Duration(milliseconds: 100),
        ),
      ]);
    });

    test('clamps long phases to the web haptics limit', () async {
      await haptics.trigger(1500);

      expect(platform.lastPattern, const <DynamicHapticVibration>[
        DynamicHapticVibration(duration: Duration(milliseconds: 1000)),
      ]);
    });

    test('forwards cancel', () async {
      await haptics.cancel();

      expect(platform.cancelCount, 1);
    });

    test('rejects unknown preset names', () async {
      expect(() => haptics.trigger('missing'), throwsA(isA<ArgumentError>()));
    });
  });
}
