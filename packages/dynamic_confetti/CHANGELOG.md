## 0.1.0

Initial release — a faithful Flutter port of
[canvas-confetti](https://github.com/catdad/canvas-confetti).

- One `CustomPainter` engine, no runtime dependencies. The particle physics are
  a direct port of canvas-confetti's `randomPhysics` / `updateFetti`, stepped at
  a fixed 60fps so playback is identical across display refresh rates.
- `DynamicConfetti.fire(context)` — a fire-from-anywhere overlay one-liner, the
  Flutter analogue of the global `confetti()`. Returns a `Future` that completes
  when the burst settles.
- `DynamicConfettiController` + `DynamicConfetti` widget for a placed or
  continuously-driven canvas, with `fire()` (returns a `Future`) and `reset()`.
- `DynamicConfettiOptions` — every knob and default matches canvas-confetti:
  `particleCount`, `angle`, `spread`, `startVelocity`, `decay`, `gravity`,
  `drift`, `flat`, `ticks`, `origin`, `colors`, `shapes`, `scalar`,
  `disableForReducedMotion`.
- `DynamicConfettiShape`: built-in `square`, `circle`, `star`, plus custom
  `DynamicConfettiShape.path` (any `Path`) and `DynamicConfettiShape.text`
  (emoji / text) — parity with `shapeFromPath` / `shapeFromText`.
- Honours the platform "reduce motion" setting via `disableForReducedMotion`.
- Example app: tap-to-burst plus the classic recipes — realistic, fireworks,
  snow, school pride, stars and emoji.
