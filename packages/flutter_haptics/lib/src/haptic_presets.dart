import 'haptic_effect.dart';
import 'haptic_models.dart';

class HapticPresets {
  const HapticPresets._();

  static const HapticPreset success = HapticPreset(
    description: 'Ascending double tap indicating success.',
    pattern: <HapticVibration>[
      HapticVibration(duration: Duration(milliseconds: 30), intensity: 0.5),
      HapticVibration(
        delay: Duration(milliseconds: 60),
        duration: Duration(milliseconds: 40),
        intensity: 1,
      ),
    ],
  );

  static const HapticPreset warning = HapticPreset(
    description: 'Two taps with hesitation indicating a warning.',
    pattern: <HapticVibration>[
      HapticVibration(duration: Duration(milliseconds: 40), intensity: 0.8),
      HapticVibration(
        delay: Duration(milliseconds: 100),
        duration: Duration(milliseconds: 40),
        intensity: 0.6,
      ),
    ],
  );

  static const HapticPreset error = HapticPreset(
    description: 'Four rapid harsh taps indicating an error.',
    pattern: <HapticVibration>[
      HapticVibration(duration: Duration(milliseconds: 40), intensity: 0.7),
      HapticVibration(
        delay: Duration(milliseconds: 40),
        duration: Duration(milliseconds: 40),
        intensity: 0.7,
      ),
      HapticVibration(
        delay: Duration(milliseconds: 40),
        duration: Duration(milliseconds: 40),
        intensity: 0.9,
      ),
      HapticVibration(
        delay: Duration(milliseconds: 40),
        duration: Duration(milliseconds: 50),
        intensity: 0.6,
      ),
    ],
  );

  static const HapticPreset light = HapticPreset(
    description: 'Single light tap indicating a minor impact.',
    pattern: <HapticVibration>[
      HapticVibration(duration: Duration(milliseconds: 15), intensity: 0.4),
    ],
  );

  static const HapticPreset medium = HapticPreset(
    description: 'Moderate tap for standard interactions.',
    pattern: <HapticVibration>[
      HapticVibration(duration: Duration(milliseconds: 25), intensity: 0.7),
    ],
  );

  static const HapticPreset heavy = HapticPreset(
    description: 'Strong tap for significant interactions.',
    pattern: <HapticVibration>[
      HapticVibration(duration: Duration(milliseconds: 35), intensity: 1),
    ],
  );

  static const HapticPreset soft = HapticPreset(
    description: 'Soft, cushioned tap with a rounded feel.',
    pattern: <HapticVibration>[
      HapticVibration(duration: Duration(milliseconds: 40), intensity: 0.5),
    ],
  );

  static const HapticPreset rigid = HapticPreset(
    description: 'Hard, crisp tap with a precise feel.',
    pattern: <HapticVibration>[
      HapticVibration(duration: Duration(milliseconds: 10), intensity: 1),
    ],
  );

  static const HapticPreset selection = HapticPreset(
    description: 'Subtle tap for selection changes.',
    pattern: <HapticVibration>[
      HapticVibration(duration: Duration(milliseconds: 8), intensity: 0.3),
    ],
  );

  static const HapticPreset nudge = HapticPreset(
    description: 'Two quick taps with a pause.',
    pattern: <HapticVibration>[
      HapticVibration(duration: Duration(milliseconds: 80), intensity: 0.8),
      HapticVibration(
        delay: Duration(milliseconds: 80),
        duration: Duration(milliseconds: 50),
        intensity: 0.3,
      ),
    ],
  );

  static const HapticPreset buzz = HapticPreset(
    description: 'A long vibration.',
    pattern: <HapticVibration>[
      HapticVibration(duration: Duration(milliseconds: 1000), intensity: 1),
    ],
  );

  static const Map<String, HapticPreset> byName = <String, HapticPreset>{
    'success': success,
    'warning': warning,
    'error': error,
    'light': light,
    'medium': medium,
    'heavy': heavy,
    'soft': soft,
    'rigid': rigid,
    'selection': selection,
    'nudge': nudge,
    'buzz': buzz,
  };

  static const Map<HapticEffect, HapticPreset> byEffect =
      <HapticEffect, HapticPreset>{
        HapticEffect.success: success,
        HapticEffect.warning: warning,
        HapticEffect.error: error,
        HapticEffect.light: light,
        HapticEffect.medium: medium,
        HapticEffect.heavy: heavy,
        HapticEffect.soft: soft,
        HapticEffect.rigid: rigid,
        HapticEffect.selection: selection,
        HapticEffect.nudge: nudge,
        HapticEffect.buzz: buzz,
      };

  static HapticPreset presetForEffect(HapticEffect effect) {
    return byEffect[effect]!;
  }

  static HapticPreset presetForName(String name) {
    final preset = byName[name];
    if (preset == null) {
      throw ArgumentError.value(name, 'name', 'Unknown haptic preset.');
    }
    return preset;
  }
}
