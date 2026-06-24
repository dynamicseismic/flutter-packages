## 0.1.0

Initial release — make any widget touchable with a tactile sink/depress effect.

- `DynamicTouchable` widget and a `.touchable()` extension on `Widget` — wrap or
  extend anything to get a press "sink" on touch, hover, and tap.
- Real spring-back: an `AnimationController.unbounded` driven by a
  `SpringSimulation` with live velocity hand-off, so an interrupted press
  releases smoothly. Four `TouchSpring` presets (`gentle`, `snappy`, `bouncy`,
  `none`) or a raw `SpringDescription`.
- The sink is `pressedScale` + `pressedOffset` (a small downward shift), with an
  opt-in shadow via `restElevation` / `pressedElevation`. Optional hover lift on
  web/desktop via `hoveredScale` / `hoverElevation`.
- A fully accessible button when given `onTap` / `onLongPress`: keyboard
  activation (Space/Enter), `Semantics(button: true)`, a `click` cursor, and a
  focus ring. Purely decorative (no-callback) touchables stay out of focus
  traversal.
- Robust pointer handling: instant depress, drag-out cancel, and clean release
  when a parent `Scrollable` steals the gesture. Honours the platform
  "reduce motion" setting.
- `DynamicTouchableTheme` for app-wide / local defaults (the `IconTheme`
  pattern), and `TouchState.of(context)` to read a touchable's live state.
- Decoupled haptics: wire `onPressed` to any haptics package — no haptics
  dependency. The example demonstrates the one-liner with `dynamic_haptics`.
