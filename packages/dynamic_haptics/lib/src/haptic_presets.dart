import 'haptic_effect.dart';
import 'haptic_models.dart';

class DynamicHapticPresets {
  const DynamicHapticPresets._();

  static const DynamicHapticPreset success = DynamicHapticPreset(
    description: 'Ascending double tap indicating success.',
    pattern: <DynamicHapticVibration>[
      DynamicHapticVibration(duration: Duration(milliseconds: 30), intensity: 0.5),
      DynamicHapticVibration(
        delay: Duration(milliseconds: 60),
        duration: Duration(milliseconds: 40),
        intensity: 1,
      ),
    ],
  );

  static const DynamicHapticPreset warning = DynamicHapticPreset(
    description: 'Two taps with hesitation indicating a warning.',
    pattern: <DynamicHapticVibration>[
      DynamicHapticVibration(duration: Duration(milliseconds: 40), intensity: 0.8),
      DynamicHapticVibration(
        delay: Duration(milliseconds: 100),
        duration: Duration(milliseconds: 40),
        intensity: 0.6,
      ),
    ],
  );

  static const DynamicHapticPreset error = DynamicHapticPreset(
    description: 'Four rapid harsh taps indicating an error.',
    pattern: <DynamicHapticVibration>[
      DynamicHapticVibration(duration: Duration(milliseconds: 40), intensity: 0.7),
      DynamicHapticVibration(
        delay: Duration(milliseconds: 40),
        duration: Duration(milliseconds: 40),
        intensity: 0.7,
      ),
      DynamicHapticVibration(
        delay: Duration(milliseconds: 40),
        duration: Duration(milliseconds: 40),
        intensity: 0.9,
      ),
      DynamicHapticVibration(
        delay: Duration(milliseconds: 40),
        duration: Duration(milliseconds: 50),
        intensity: 0.6,
      ),
    ],
  );

  static const DynamicHapticPreset light = DynamicHapticPreset(
    description: 'Single light tap indicating a minor impact.',
    pattern: <DynamicHapticVibration>[
      DynamicHapticVibration(duration: Duration(milliseconds: 15), intensity: 0.4),
    ],
  );

  static const DynamicHapticPreset medium = DynamicHapticPreset(
    description: 'Moderate tap for standard interactions.',
    pattern: <DynamicHapticVibration>[
      DynamicHapticVibration(duration: Duration(milliseconds: 25), intensity: 0.7),
    ],
  );

  static const DynamicHapticPreset heavy = DynamicHapticPreset(
    description: 'Strong tap for significant interactions.',
    pattern: <DynamicHapticVibration>[
      DynamicHapticVibration(duration: Duration(milliseconds: 35), intensity: 1),
    ],
  );

  static const DynamicHapticPreset soft = DynamicHapticPreset(
    description: 'Soft, cushioned tap with a rounded feel.',
    pattern: <DynamicHapticVibration>[
      DynamicHapticVibration(duration: Duration(milliseconds: 40), intensity: 0.5),
    ],
  );

  static const DynamicHapticPreset rigid = DynamicHapticPreset(
    description: 'Hard, crisp tap with a precise feel.',
    pattern: <DynamicHapticVibration>[
      DynamicHapticVibration(duration: Duration(milliseconds: 10), intensity: 1),
    ],
  );

  static const DynamicHapticPreset selection = DynamicHapticPreset(
    description: 'Subtle tap for selection changes.',
    pattern: <DynamicHapticVibration>[
      DynamicHapticVibration(duration: Duration(milliseconds: 8), intensity: 0.3),
    ],
  );

  static const DynamicHapticPreset nudge = DynamicHapticPreset(
    description: 'Two quick taps with a pause.',
    pattern: <DynamicHapticVibration>[
      DynamicHapticVibration(duration: Duration(milliseconds: 80), intensity: 0.8),
      DynamicHapticVibration(
        delay: Duration(milliseconds: 80),
        duration: Duration(milliseconds: 50),
        intensity: 0.3,
      ),
    ],
  );

  static const DynamicHapticPreset buzz = DynamicHapticPreset(
    description: 'A long vibration.',
    pattern: <DynamicHapticVibration>[
      DynamicHapticVibration(duration: Duration(milliseconds: 1000), intensity: 1),
    ],
  );

  static const Map<String, DynamicHapticPreset> byName = <String, DynamicHapticPreset>{
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

  static const Map<DynamicHapticEffect, DynamicHapticPreset> byEffect =
      <DynamicHapticEffect, DynamicHapticPreset>{
        DynamicHapticEffect.success: success,
        DynamicHapticEffect.warning: warning,
        DynamicHapticEffect.error: error,
        DynamicHapticEffect.light: light,
        DynamicHapticEffect.medium: medium,
        DynamicHapticEffect.heavy: heavy,
        DynamicHapticEffect.soft: soft,
        DynamicHapticEffect.rigid: rigid,
        DynamicHapticEffect.selection: selection,
        DynamicHapticEffect.nudge: nudge,
        DynamicHapticEffect.buzz: buzz,
      };

  static DynamicHapticPreset presetForEffect(DynamicHapticEffect effect) {
    return byEffect[effect]!;
  }

  static DynamicHapticPreset presetForName(String name) {
    final preset = byName[name];
    if (preset == null) {
      throw ArgumentError.value(name, 'name', 'Unknown haptic preset.');
    }
    return preset;
  }
}
