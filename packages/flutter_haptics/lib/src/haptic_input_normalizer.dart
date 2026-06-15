import 'haptic_effect.dart';
import 'haptic_models.dart';
import 'haptic_presets.dart';

const Duration _maxPhaseDuration = Duration(milliseconds: 1000);

const List<HapticVibration> _defaultPattern = <HapticVibration>[
  HapticVibration(duration: Duration(milliseconds: 25), intensity: 0.7),
];

class HapticInputNormalizer {
  const HapticInputNormalizer._();

  static NormalizedHapticRequest normalize(
    Object? input,
    TriggerOptions options,
  ) {
    final intensity = options.resolvedIntensity;

    if (input == null) {
      return NormalizedHapticRequest(
        pattern: _sanitizePattern(_defaultPattern),
        intensity: intensity,
      );
    }

    if (input is String) {
      return NormalizedHapticRequest(
        pattern: _sanitizePattern(HapticPresets.presetForName(input).pattern),
        intensity: intensity,
        presetName: input,
      );
    }

    if (input is HapticEffect) {
      return NormalizedHapticRequest(
        pattern: _sanitizePattern(HapticPresets.presetForEffect(input).pattern),
        intensity: intensity,
        presetName: input.name,
      );
    }

    if (input is HapticPreset) {
      return NormalizedHapticRequest(
        pattern: _sanitizePattern(input.pattern),
        intensity: intensity,
      );
    }

    if (input is Duration) {
      return NormalizedHapticRequest(
        pattern: <HapticVibration>[
          HapticVibration(duration: _clampDuration(input)),
        ],
        intensity: intensity,
      );
    }

    if (input is num) {
      return NormalizedHapticRequest(
        pattern: <HapticVibration>[
          HapticVibration(duration: _durationFromNumber(input)),
        ],
        intensity: intensity,
      );
    }

    if (input is List) {
      return NormalizedHapticRequest(
        pattern: _sanitizePattern(_patternFromList(input)),
        intensity: intensity,
      );
    }

    throw ArgumentError.value(
      input,
      'input',
      'Expected String, HapticEffect, num, Duration, HapticPreset, '
          'List<num>, List<Duration>, or List<HapticVibration>.',
    );
  }

  static List<HapticVibration> _patternFromList(List<Object?> input) {
    if (input.isEmpty) {
      return const <HapticVibration>[];
    }

    if (input.every((value) => value is HapticVibration)) {
      return input.cast<HapticVibration>();
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
      'List input must contain only num, Duration, or HapticVibration values.',
    );
  }

  static List<HapticVibration> _patternFromDurations(List<Duration> values) {
    final pattern = <HapticVibration>[];
    for (var index = 0; index < values.length; index += 2) {
      final delay = index > 0 ? values[index - 1] : Duration.zero;
      pattern.add(
        HapticVibration(delay: delay, duration: _clampDuration(values[index])),
      );
    }
    return pattern;
  }

  static List<HapticVibration> _sanitizePattern(List<HapticVibration> pattern) {
    return pattern
        .map(
          (vibration) => HapticVibration(
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
