# Codebase review — flutter-packages

_Review date: 2026-06-24 · Scope: the six first-party packages plus shared config/CI._

This pass focused on the hand-written first-party packages (`dynamic_confetti`,
`dynamic_haptics`, `dynamic_icons`, `dynamic_morphing_icons`, `dynamic_torph`,
`dynamic_touchable`). The `dynamic_native_extensions` family is a documented MIT
fork of [super_native_extensions](https://github.com/superlistapp/super_native_extensions)
and was treated as vendored code, not reviewed line-by-line.

## Overall

The first-party code is in good shape. Animation/timer lifecycle hygiene — the
usual source of real Flutter bugs — is handled correctly across the board:
`AnimationController`/`Ticker` instances are disposed, `TextPainter`s are
disposed after layout, `RepaintBoundary` scopes repaints, and `shouldRepaint`/
`==`/`hashCode` are implemented where they matter. The ports (canvas-confetti,
torph) are faithful, line-by-line in places. No crashes or leaks were found on
the common paths.

The issues below are interaction-correctness edge cases and cross-platform
behaviour gaps, plus two repo-level gaps (no test/analyze CI; thin test
coverage). None are catastrophic; the handful of Medium items are worth fixing
before publishing to pub.dev.

## Repo-level findings

- **[High] No CI for analyze/test/format.** The only workflow is
  `.github/workflows/deploy-showcase.yml`, which builds the showcase on push to
  `main`. There is no workflow running `melos run analyze` / `test` / `format`
  on pull requests, even though those Melos scripts are defined in
  `pubspec.yaml`. Regressions in any package can land on `main` unnoticed. Add a
  CI workflow that runs the three Melos scripts on PRs and pushes.
- **[Medium] Thin test coverage.** Most packages ship a single `_test.dart`
  (often the plugin-template smoke test). `dynamic_torph` (5) and
  `dynamic_haptics` (2) are the exceptions. The interaction bugs below
  (hover/tap race, focus-node ownership, mid-flight morph) are exactly what
  widget tests would catch. Worth raising coverage before a 1.0.

## Per-package findings

### dynamic_confetti

- **[Medium] Double physics-advance on the first rendered frame.** Two separate
  "advance one frame on spawn so particles aren't stacked on the origin"
  compensations stack:
  - `confetti_controller.dart:152` advances every particle once in `_spawn`.
  - `confetti_widget.dart:126-128` injects a synthetic `dt = 1/60` on the first
    tick, which drives one extra `_step()` → `update()` before the second paint.

  Both carry the same justifying comment, but canvas-confetti advances each
  particle exactly once before its first draw. The port over-advances by one
  step on frame one (particles start one tick "older" and slightly further from
  the origin). Keep one compensation, not both — removing the `_firstTick`
  synthetic delta is the cleaner fix.
- **[Low] Color sequence reversed vs original.** `confetti_controller.dart:144`
  uses `colors[i % len]` counting up; canvas-confetti counts `temp` down from
  `particleCount`. Same palette, reversed per-particle order. Cosmetic, flagged
  only against the "every default matches canvas-confetti" claim.
- **[Low] Static `DynamicConfetti.fire` can leak its OverlayEntry** if the
  inserted surface is never laid out (host route popped same frame, or a
  zero-area overlay). `_pending` never flushes, `_idle` never completes, entry +
  controller leak. The one-shot path has no timeout/fallback teardown.
- **[Low] `particleCount` not coerced** through a positive-int clamp like the
  original's `onlyPositiveInt`. Benign (the spawn loop handles ≤0), noted for
  parity.

### dynamic_haptics

- **[High] iOS preset path silently ignores `intensity`.** Dart always sends a
  `preset` for named effects (`dynamic_haptics_method_channel.dart:28-30`), and
  iOS plays fixed `UINotificationFeedbackGenerator`/`UIImpactFeedbackGenerator`/
  `UISelectionFeedbackGenerator` events that take no intensity argument
  (`DynamicHapticsPlugin.swift:43-46,68-108`). So `DynamicTriggerOptions.intensity`
  is a no-op for all presets on iOS, while Android honours it
  (`DynamicHapticsPlugin.kt:101-106`). Silent, platform-dependent divergence in
  the package's headline feature.
- **[Medium] iOS engine restart fragility.** `cancel()` calls
  `hapticEngine?.stop(...)` but retains the reference; the next `playCoreHaptics`
  reuses the stopped engine and re-`start()`s it, with no retry/notify on the
  CoreHaptics auto-shutdown path (`DynamicHapticsPlugin.swift:41,162-180,203-210`).
  Rapid trigger→cancel→trigger can intermittently fail as a generic
  `haptic_error`. Prefer stopping the player, not the whole engine, and resetting
  the reference after `stop`.
- **[Medium] iOS fallback drops duration/intensity.**
  `DynamicHapticsPlugin.swift:183-201` fires a fixed `kSystemSoundID_Vibrate`
  (~0.4s, fixed strength) per nonzero segment on non-CoreHaptics devices —
  custom patterns and presets feel identical. Degraded-fallback correctness gap.
- **[Low] `isSupported()` semantics.** Reported purely from
  `supportsHaptics` (`:19-20`); a device that can still buzz via
  `AudioServicesPlaySystemSound` reports `false` yet `trigger` still vibrates it,
  so `false` ≠ "no vibration."
- **[Low] Dead API surface.** `DynamicHaptics.debug`/`showSwitch` + their setters
  (`dynamic_haptics.dart:14-15,51-57`) are stored but never read or sent to
  either platform. Wire up or remove.
- **[Low] `DynamicHapticPreset` lacks `==`/`hashCode`** unlike
  `DynamicHapticVibration` (`haptic_models.dart:71-77`). Inconsistent with the
  rest of the value-like model layer.

### dynamic_icons

(The ~12k LOC under `lib/src/icons/gen/` plus the Lucide/crypto glyph tables are
generated data; review focused on `lib/src/core/`.)

- **[Medium] `IconController` is single-owner but doesn't enforce it.** `_state`
  is a single nullable (`dynamic_icon_controller.dart:17,23`); passing one
  controller to two `DynamicIcon`s silently overwrites the first attach and
  orphans the first icon. No assert or doc forbids reuse — easy silent footgun.
  `AnimationController`-style handles normally assert against double-attach.
- **[Medium] Hover/tap handlers race under the default `hoverAndTap` trigger.**
  `dynamic_icon.dart:259-274` wires both `onTap` (`_onTap` → forward then await
  reverse) and `onEnter`/`onExit`. On desktop/web a click fires both on the same
  controller with no "is hovering" coordination, so the icon reverses to rest
  while the cursor is still over it, then `_onExit` reverses again — visible
  flicker on the common path.
- **[Low] Unbounded static path caches.** `svg_path_parser.dart:19` (`_cache`)
  and `dynamic_icon_painter.dart:59` (`_groupCache`) are never evicted. Bounded
  for the fixed catalog, but any app generating unique path strings leaks for the
  process lifetime.
- **[Low] SVG parser can throw on malformed `d` data.**
  `svg_path_parser.dart:250-255,285-286` (`_flag` indexes without bounds check,
  `_number` parses a possibly-empty substring). Inconsistent with the otherwise
  defensive parser; a truncated path crashes rather than degrades.
- **[Low] `didUpdateWidget` doesn't restart a loop on an icon-intrinsic
  `repeats` change** (`dynamic_icon.dart:130-144`); relies on `widget.loop`.
  Minor inconsistency between `repeats`, `_loops`, and `restsAtEnd`.

_Verified correct: controller disposal + external detach, `RepaintBoundary` +
`AnimatedBuilder` scoping, gradient shader alpha handling, memoised `SpringCurve`,
theme precedence._

### dynamic_morphing_icons

- **[Medium] Mid-flight morph re-trigger snaps.** `morphing_icon.dart:99-110`
  sets `_from = old.icon` and restarts `forward(from: 0)` without capturing the
  current interpolated frame, so toggling the icon mid-morph jumps
  discontinuously. The code calls this a deliberate v1 simplification; it's still
  a real visual glitch for rapid toggles.
- **[Low] `_paintRotating` assumes identical base lines within a group**
  (`morph_painter.dart:65-82`), enforced only by convention (shared
  `_plusBase`/`_arrowBase`/`_chevronBase` constants). A group member with a
  different base silently uses only `from`'s lines. An `assert` would make the
  invariant explicit.

_Verified correct: single controller created/disposed, duration re-synced before
`forward`, `shouldRepaint`/`==`/`hashCode` all implemented._

### dynamic_torph

- **[Medium] `onAnimationComplete` is unbalanced under interruption.**
  `text_morph.dart:124-133` fires it on every `AnimationStatus.completed`, but an
  interrupted morph restarts via `forward(from: 0)` and never emits `completed`
  for the superseded animation — whose `onAnimationStart` already fired. Callers
  pairing start/complete callbacks see unbalanced counts.
- **[Medium] Unbounded spring cache.** `spring.dart:115,146` `_cache` is a
  process-global map never evicted; each entry holds a sampled curve list.
  Animating spring params continuously (e.g. a slider building new
  `DynamicSpringParams` per frame) grows it without bound. Add an LRU/size cap.
- **[Low] `_reconcile` runs `TextPainter.layout` on every dependency change**
  (`text_morph.dart:106-116`) even when nothing relevant changed — minor cost on
  frequent inherited-widget rebuilds.
- **[Low] Wall-clock fade vs eased motion can desync** when the controller is
  paused/slowed (`morph_engine.dart:64-73`). Mostly cosmetic.
- **[Low] Empty-string height uses a literal ZWSP** sentinel in source
  (`text_morph.dart:186-196`); use `'​'` for clarity/robustness.

_Verified correct: single controller disposed, every measurement `TextPainter`
disposed after layout._

### dynamic_touchable

- **[High] Dual focus-node creation sites make ownership fragile.** A node is
  created both lazily in the `_focusNode` getter (`dynamic_touchable.dart:188`,
  `??=`) and eagerly in `initState` (`:228`), with another `??=` in
  `didUpdateWidget` (`:239`). The eager init makes the getter's `??=` dead in the
  common case, but the multiple creation sites leave a plausible leak path when
  switching between external/internal nodes. Consolidate to a single creation
  site and dispose deterministically on switch-to-external.
- **[Medium] Reduce-motion change mid-animation doesn't re-settle.**
  `_reduceMotion` is cached per build (`:479`); toggling OS "reduce motion" while
  a spring is in flight lets it keep overshooting. `didChangeDependencies` could
  stop-and-snap the controller when it flips true. Accessibility gap.
- **[Medium] Sink can stick for tap+long-press inside a `Scrollable`.**
  `onTapCancel` is intentionally unwired when both `onTap` and `onLongPress` are
  set (`:553-555`); the pointer-move slop (`:353`) is then the only release path.
  A vertical scroll starting below the slop threshold before the parent claims
  the arena can leave the "pressed" visual stuck during a fling. Worth a
  ListView test.
- **[Low] `TouchStateScope` exposes only binary press/hover/focus**, not the
  continuous depth (`touch_state.dart:16-22`); the "live state" doc comment
  oversells what descendants can observe.
- **[Low] Enter activates with no press visual while Space drives the full
  sink** (`:412-429`) — inconsistent keyboard feel for a tactile widget.
- **[Low] Focus ring is always a rounded rect** of `focusRingRadius`
  (`:644-651`), ignoring circular/pill child shapes; no custom `ShapeBorder` hook.

_Verified correct: controller/focus-node disposal, drag-out slop, arena
cancellation, disabled-mid-press cancel, spring velocity units._

## Suggested priority order

1. Add analyze/test/format CI (repo-level High).
2. iOS haptics: surface or document the preset-intensity gap (High).
3. dynamic_touchable: consolidate focus-node ownership (High).
4. The Medium interaction bugs: confetti double-advance, icons hover/tap race +
   single-owner controller, morphing-icon mid-flight snap, torph callback
   balance + spring cache bound, touchable reduce-motion/scrollable edge cases.
5. The Low parity/robustness/API notes as cleanup before 1.0.
