import 'package:flutter/foundation.dart';

const double _minIntensity = 0;
const double _maxIntensity = 1;

double clampHapticIntensity(double value) {
  if (value.isNaN) {
    throw ArgumentError.value(value, 'value', 'Intensity must be a number.');
  }
  return value.clamp(_minIntensity, _maxIntensity).toDouble();
}

@immutable
class HapticVibration {
  const HapticVibration({
    required this.duration,
    this.intensity,
    this.delay = Duration.zero,
  }) : assert(intensity == null || (intensity >= 0 && intensity <= 1));

  final Duration duration;
  final double? intensity;
  final Duration delay;

  Map<String, Object> toMap({required double defaultIntensity}) {
    final resolvedIntensity = clampHapticIntensity(
      intensity ?? defaultIntensity,
    );

    return <String, Object>{
      'duration': duration.inMilliseconds,
      'delay': delay.inMilliseconds,
      'intensity': resolvedIntensity,
    };
  }

  HapticVibration copyWith({
    Duration? duration,
    double? intensity,
    Duration? delay,
  }) {
    return HapticVibration(
      duration: duration ?? this.duration,
      intensity: intensity ?? this.intensity,
      delay: delay ?? this.delay,
    );
  }

  @override
  String toString() {
    return 'HapticVibration('
        'duration: $duration, '
        'intensity: $intensity, '
        'delay: $delay'
        ')';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is HapticVibration &&
            duration == other.duration &&
            intensity == other.intensity &&
            delay == other.delay;
  }

  @override
  int get hashCode => Object.hash(duration, intensity, delay);
}

@immutable
class HapticPreset {
  const HapticPreset({required this.pattern, this.description});

  final List<HapticVibration> pattern;
  final String? description;
}

@immutable
class TriggerOptions {
  const TriggerOptions({this.intensity})
    : assert(intensity == null || (intensity >= 0 && intensity <= 1));

  final double? intensity;

  double get resolvedIntensity => clampHapticIntensity(intensity ?? 0.5);
}

@immutable
class NormalizedHapticRequest {
  const NormalizedHapticRequest({
    required this.pattern,
    required this.intensity,
    this.presetName,
  });

  final List<HapticVibration> pattern;
  final double intensity;
  final String? presetName;
}
