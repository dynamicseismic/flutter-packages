import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dynamic_haptics_method_channel.dart';
import 'src/haptic_models.dart';

abstract class DynamicHapticsPlatform extends PlatformInterface {
  DynamicHapticsPlatform() : super(token: _token);

  static final Object _token = Object();

  static DynamicHapticsPlatform _instance = MethodChannelDynamicHaptics();

  static DynamicHapticsPlatform get instance => _instance;

  static set instance(DynamicHapticsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> isSupported() {
    throw UnimplementedError('isSupported() has not been implemented.');
  }

  Future<void> trigger(
    List<DynamicHapticVibration> pattern, {
    required double intensity,
    String? presetName,
  }) {
    throw UnimplementedError('trigger() has not been implemented.');
  }

  Future<void> cancel() {
    throw UnimplementedError('cancel() has not been implemented.');
  }
}
