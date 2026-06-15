# dynamic_haptics

WebHaptics-style haptic feedback for Flutter on Android and iOS.

The package keeps the input shape close to `lochie/web-haptics`: call `trigger`
with a preset name, a duration, a shorthand pattern, a `DynamicHapticVibration` list,
or a full `DynamicHapticPreset`.

## Usage

```dart
import 'package:dynamic_haptics/dynamic_haptics.dart';

final haptics = DynamicHaptics();

await DynamicHaptics.isSupported();

await haptics.trigger('success');
await haptics.trigger(DynamicHapticEffect.warning);
await haptics.trigger(200);
await haptics.trigger(<int>[100, 50, 100]);

await haptics.trigger(
  const <DynamicHapticVibration>[
    DynamicHapticVibration(
      duration: Duration(milliseconds: 80),
      intensity: 0.8,
    ),
    DynamicHapticVibration(
      delay: Duration(milliseconds: 50),
      duration: Duration(milliseconds: 100),
      intensity: 0.4,
    ),
  ],
);

await haptics.cancel();
await haptics.destroy();
```

## Built-in presets

`success`, `warning`, `error`, `light`, `medium`, `heavy`, `soft`, `rigid`,
`selection`, `nudge`, and `buzz`.

Named presets use native generators on iOS where a direct platform equivalent
exists. Custom patterns use Android waveform vibration and iOS Core Haptics.

## Platform notes

Android declares `android.permission.VIBRATE`. Intensity maps to waveform
amplitude on API 26+ devices with amplitude control; older devices fall back to
timing-only vibration.

iOS requires iOS 13.0+ and uses Core Haptics for custom patterns. Named
interaction presets use `UINotificationFeedbackGenerator`,
`UIImpactFeedbackGenerator`, or `UISelectionFeedbackGenerator`.
