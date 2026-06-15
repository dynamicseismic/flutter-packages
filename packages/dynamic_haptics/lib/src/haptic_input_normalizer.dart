import 'haptic_effect.dart';
import 'haptic_models.dart';
import 'haptic_presets.dart';

const Duration _maxPhaseDuration = Duration(milliseconds: 1000);

const List<DynamicHapticVibration> _defaultPattern = <DynamicHapticVibration>[
  DynamicHapticVibration(duration: Duration(milliseconds: 25), intensity: 0.7),
];

class HapticInputNormalizer {
  const HapticInputNormalizer._();

  static DynamicNormalizedHapticRequest normalize(
    Object? input,
    DynamicTriggerOptions options,
  ) {
    final intensity = options.resolvedIntensity;

    if (input == null) {
      return DynamicNormalizedHapticRequest(
        pattern: _sanitizePattern(_defaultPattern),
        intensity: intensity,
      );
    }

    if (input is String) {
      return DynamicNormalizedHapticRequest(
        pattern: _sanitizePattern(DynamicHapticPresets.presetForName(input).pattern),
        intensity: intensity,
        presetName: input,
      );
    }

    if (input is DynamicHapticEffect) {
      return DynamicNormalizedHapticRequest(
        pattern: _sanitizePattern(DynamicHapticPresets.presetForEffect(input).pattern),
        intensity: intensity,
        presetName: input.name,
      );
    }

    if (input is DynamicHapticPreset) {
      return DynamicNormalizedHapticRequest(
        pattern: _sanitizePattern(input.pattern),
        intensity: intensity,
      );
    }

    if (input is Duration) {
      return DynamicNormalizedHapticRequest(
        pattern: <DynamicHapticVibration>[
          DynamicHapticVibration(duration: _clampDuration(input)),
        ],
        intensity: intensity,
      );
    }

    if (input is num) {
      return DynamicNormalizedHapticRequest(
        pattern: <DynamicHapticVibration>[
          DynamicHapticVibration(duration: _durationFromNumber(input)),
        ],
        intensity: intensity,
      );
    }

    if (input is List) {
      return DynamicNormalizedHapticRequest(
        pattern: _sanitizePattern(_patternFromList(input)),
        intensity: intensity,
      );
    }

    throw ArgumentError.value(
      input,
      'input',
      'Expected String, DynamicHapticEffect, num, Duration, DynamicHapticPreset, '
          'List<num>, List<Duration>, or List<DynamicHapticVibration>.',
    );
  }

  static List<DynamicHapticVibration> _patternFromList(List<Object?> input) {
    if (input.isEmpty) {
      return const <DynamicHapticVibration>[];
    }

    if (input.every((value) => value is DynamicHapticVibration)) {
      return input.cast<DynamicHapticVibration>();
    }

    if (input.every((value) => value is Duration)) {
      return _patternFromDurations(input.cast<Duration>());
    }

    if (input.every((value) => value is num)) {
      return _patternFromDurations(
        input.cast<num>().map(_durationFromNumber).toList(growable: false),
      );
    }

    throw ArgumentError.value(
      input,
      'input',
      'List input must contain only num, Duration, or DynamicHapticVibration values.',
    );
  }

  static List<DynamicHapticVibration> _patternFromDurations(List<Duration> values) {
    final pattern = <DynamicHapticVibration>[];
    for (var index = 0; index < values.length; index += 2) {
      final delay = index > 0 ? values[index - 1] : Duration.zero;
      pattern.add(
        DynamicHapticVibration(delay: delay, duration: _clampDuration(values[index])),
      );
    }
    return pattern;
  }

  static List<DynamicHapticVibration> _sanitizePattern(List<DynamicHapticVibration> pattern) {
    return pattern
        .map(
          (vibration) => DynamicHapticVibration(
            delay: _validateDelay(vibration.delay),
            duration: _clampDuration(vibration.duration),
            intensity: vibration.intensity == null
                ? null
                : clampHapticIntensity(vibration.intensity!),
          ),
        )
        .toList(growable: false);
  }

  static Duration _durationFromNumber(num milliseconds) {
    if (!milliseconds.isFinite || milliseconds < 0) {
      throw ArgumentError.value(
        milliseconds,
        'milliseconds',
        'Duration must be a finite non-negative number.',
      );
    }
    return _clampDuration(Duration(milliseconds: milliseconds.round()));
  }

  static Duration _validateDelay(Duration delay) {
    if (delay < Duration.zero) {
      throw ArgumentError.value(delay, 'delay', 'Delay must be non-negative.');
    }
    return delay;
  }

  static Duration _clampDuration(Duration duration) {
    if (duration < Duration.zero) {
      throw ArgumentError.value(
        duration,
        'duration',
        'Duration must be non-negative.',
      );
    }
    if (duration > _maxPhaseDuration) {
      return _maxPhaseDuration;
    }
    return duration;
  }
}
