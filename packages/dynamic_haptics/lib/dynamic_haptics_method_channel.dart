import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dynamic_haptics_platform_interface.dart';
import 'src/haptic_models.dart';

class MethodChannelFlutterHaptics extends FlutterHapticsPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_haptics');

  @override
  Future<bool> isSupported() async {
    return await methodChannel.invokeMethod<bool>('isSupported') ?? false;
  }

  @override
  Future<void> trigger(
    List<HapticVibration> pattern, {
    required double intensity,
    String? presetName,
  }) {
    final arguments = <String, Object?>{
      'pattern': pattern
          .map((vibration) => vibration.toMap(defaultIntensity: intensity))
          .toList(growable: false),
      'intensity': intensity,
    };
    if (presetName != null) {
      arguments['preset'] = presetName;
    }

    return methodChannel.invokeMethod<void>('trigger', arguments);
  }

  @override
  Future<void> cancel() {
    return methodChannel.invokeMethod<void>('cancel');
  }
}
