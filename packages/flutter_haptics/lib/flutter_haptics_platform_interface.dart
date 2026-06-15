import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_haptics_method_channel.dart';
import 'src/haptic_models.dart';

abstract class FlutterHapticsPlatform extends PlatformInterface {
  FlutterHapticsPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterHapticsPlatform _instance = MethodChannelFlutterHaptics();

  static FlutterHapticsPlatform get instance => _instance;

  static set instance(FlutterHapticsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> isSupported() {
    throw UnimplementedError('isSupported() has not been implemented.');
  }

  Future<void> trigger(
    List<HapticVibration> pattern, {
    required double intensity,
    String? presetName,
  }) {
    throw UnimplementedError('trigger() has not been implemented.');
  }

  Future<void> cancel() {
    throw UnimplementedError('cancel() has not been implemented.');
  }
}
