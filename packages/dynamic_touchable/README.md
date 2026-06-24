# dynamic_touchable

Make **any** Flutter widget touchable — wrap it (or call `.touchable()`) and it
plays a tactile **sink / 下沉** effect on touch, hover, and tap, springing back
on release with real spring physics. Like a physical button pressed into the
surface.

No custom painting, no runtime dependencies. Works as a pure visual effect, or
as a fully accessible button the moment you give it an `onTap`.

## Install

```yaml
dependencies:
  dynamic_touchable: ^0.1.0
```

## Usage

```dart
import 'package:dynamic_touchable/dynamic_touchable.dart';

// Wrapper form
DynamicTouchable(
  onTap: _open,
  child: MyCard(),
);

// Extension form — identical effect
MyCard().touchable(onTap: _open);
```

The effect plays even with **no callbacks** — handy for a tile that just wants
to feel pressable. Add `onTap` / `onLongPress` and it becomes a real button:
keyboard activatable (Space/Enter), announced via `Semantics(button: true)`,
with a `click` cursor on hover and a focus ring.

## The sink

By default a press scales the child to `0.96` and nudges it down `1.5px` — a
clean "pressed in" read that's safe on any child. Layer on more as needed:

```dart
MyCard().touchable(
  onTap: _open,
  pressedScale: 0.93,
  pressedOffset: const Offset(0, 3),
  restElevation: 8,        // opt-in shadow that collapses on press…
  pressedElevation: 1,
);
```

Shadows are **opt-in**: with the default `restElevation: 0` no shadow layer is
created at all, so the common path stays a pure `Transform`.

On web/desktop you can add a subtle hover affordance (off by default):

```dart
MyCard().touchable(onTap: _open, hoveredScale: 1.03);
```

## Spring feel

The release is a real `SpringSimulation` with velocity hand-off, so an
interrupted press settles naturally. Pick a preset:

```dart
MyCard().touchable(onTap: _open, spring: TouchSpring.bouncy);
//   gentle  – soft settle, almost no overshoot
//   snappy  – fast settle, faint overshoot (default)
//   bouncy  – pronounced springy overshoot
//   none    – a brief ease (also the reduce-motion path)
```

Or pass a raw `springDescription` for full control. The press *in* is always a
short, deliberate ease (`pressDuration`, default 90ms) — it's the release that
carries the personality.

## App-wide defaults

`DynamicTouchableTheme` sets ambient defaults for a subtree, exactly like
Flutter's `IconTheme`. Resolution order is always
`explicit argument → theme → built-in default`.

```dart
DynamicTouchableTheme(
  data: const DynamicTouchableThemeData(
    spring: TouchSpring.bouncy,
    pressedScale: 0.94,
  ),
  child: MyApp(),
);
```

## Reacting to state

Read a touchable's live state from any descendant with `TouchState.of`:

```dart
DynamicTouchable(
  onTap: _open,
  child: Builder(builder: (context) {
    final pressed = TouchState.of(context).pressed;
    return Text('Open', style: TextStyle(color: pressed ? Colors.white : null));
  }),
);
```

## Haptics (decoupled)

There's no haptics dependency. `onPressed` fires the instant a press engages —
wire it to whatever you like:

```dart
final haptics = DynamicHaptics(); // from package:dynamic_haptics

MyButton().touchable(
  onTap: _submit,
  onPressed: () => haptics.trigger(DynamicHapticPresets.light),
);
```

`enableFeedback` (on by default) additionally plays the platform's own tap
feedback (click sound / OS haptic) via Flutter's `Feedback`.

## Notes

- `enabled: false` fully disables the effect, focus, cursor, and button
  semantics.
- Honours the platform **reduce motion** setting — the sink snaps instead of
  springing; callbacks and feedback still fire.
- A `bouncy` release overshoots a few pixels past rest. If a parent clips
  tightly (`Clip.hardEdge`), give it a little breathing room.

## See also

Part of [dynamic_*](https://github.com/dynamicseismic/flutter-packages) — a set
of polished Flutter packages. Pairs naturally with `dynamic_haptics`.
