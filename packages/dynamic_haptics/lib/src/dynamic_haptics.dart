import '../dynamic_haptics_platform_interface.dart';
import 'haptic_input_normalizer.dart';
import 'haptic_models.dart';

class DynamicHaptics {
  DynamicHaptics({
    this.debug = false,
    this.showSwitch = false,
    DynamicHapticsPlatform? platform,
  }) : _platform = platform ?? DynamicHapticsPlatform.instance;

  final DynamicHapticsPlatform _platform;

  bool debug;
  bool showSwitch;

  Future<bool> get supportsHaptics => _platform.isSupported();

  static Future<bool> isSupported() {
    return DynamicHapticsPlatform.instance.isSupported();
  }

  static Future<bool> canVibrate() {
    return isSupported();
  }

  Future<void> trigger([
    Object? input,
    DynamicTriggerOptions options = const DynamicTriggerOptions(),
  ]) {
    final request = HapticInputNormalizer.normalize(input, options);
    if (request.pattern.isEmpty) {
      return Future<void>.value();
    }

    return _platform.trigger(
      request.pattern,
      intensity: request.intensity,
      presetName: request.presetName,
    );
  }

  Future<void> cancel() {
    return _platform.cancel();
  }

  Future<void> destroy() {
    return cancel();
  }

  void setDebug(bool debug) {
    this.debug = debug;
  }

  void setShowSwitch(bool show) {
    showSwitch = show;
  }
}
