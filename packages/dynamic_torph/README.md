# dynamic_torph (Flutter)

Dependency-free **animated text morphing** for Flutter — a faithful port of
[lochie/torph](https://github.com/lochie/torph).

When the text changes, characters that survive glide from their old position to
their new one, newly-added characters emerge from their nearest surviving
neighbour (scaling up and fading in), departing characters drift toward their
anchor while fading out, and the box smoothly resizes. Easing can be a cubic
bezier or real spring physics.

![catalog → database](test/capture/frames/02_mid.png)

## Usage

```dart
import 'package:dynamic_torph/dynamic_torph.dart';

// Just give it text — it animates whenever the text changes.
TextMorph('Hello world')

// Style it like any text.
TextMorph(
  count.toString(),
  style: const TextStyle(fontSize: 48, fontWeight: FontWeight.w600),
)

// Spring physics: the curve *and* the duration are derived from the spring.
TextMorph(
  'Hello world',
  ease: TorphEase.spring(SpringParams(stiffness: 200, damping: 20)),
)
```

### How it segments

Following the original: if the text contains a space it is morphed **by word**,
otherwise **by grapheme** (so `"Hello world"` morphs whole words, while
`"catalog"` morphs letter-by-letter). Shared units keep a stable id so they are
reused — that's what produces the glide instead of a cross-fade.

## Options

| Option | Type | Default | Description |
|---|---|---|---|
| `text` (positional) | `String` | — | The text; animates on change. |
| `style` | `TextStyle?` | inherited | Merged over the ambient `DefaultTextStyle`. |
| `duration` | `Duration` | `400ms` | Used for cubic easing (springs compute their own). |
| `ease` | `TorphEase` | `cubic(0.19, 1, 0.22, 1)` | `TorphEase.cubic(curve)` or `TorphEase.spring(params)`. |
| `scale` | `bool` | `true` | Entering/exiting segments scale `0.95 ↔ 1.0` while fading. |
| `debug` | `bool` | `false` | Outlines the box (magenta) and each segment (cyan). |
| `disabled` | `bool` | `false` | Renders plain text, no animation. |
| `respectReducedMotion` | `bool` | `true` | Honors the platform "reduce motion" setting. |
| `onAnimationStart` | `VoidCallback?` | — | Fires when a (non-initial) morph begins. |
| `onAnimationComplete` | `VoidCallback?` | — | Fires when a morph settles. |

### Springs

`SpringParams(stiffness: 100, damping: 10, mass: 1, precision: 0.001)` is
resolved by numerically integrating a damped harmonic oscillator into a sampled
easing curve plus an auto-computed settle duration — mirroring the web library's
`linear(...)` output. Use `resolveSpring(params)` directly to read the resolved
`curve`/`duration` (e.g. to display the duration in a UI).

## How it works

A FLIP (First-Last-Invert-Play) engine, ported 1:1 from the source:

1. **Segment** the text into stable-id units (`lib/src/segment.dart`).
2. **Measure** the resting layout of each unit with a `TextPainter`
   (`lib/src/flip.dart`).
3. **Diff** old vs new and assign each unit a role — persistent / entering /
   exiting — with per-unit start offset, scale and fade timing
   (`lib/src/morph_engine.dart`).
4. **Play**: a single `AnimationController` drives the eased translate/scale and
   independently-timed linear opacity fades; the container size transitions too
   (`lib/src/text_morph.dart`). Interrupting a morph mid-flight seeds the next
   one from the live visual state, so it stays smooth.

## Example

A full interactive playground (editable text, presets, a counter morph, spring
sliders, scale/debug toggles, auto-cycle) lives in [`example/`](example/):

```bash
cd example
flutter run -d macos   # or: -d chrome
```

## Differences from the web version

- Word segmentation uses a simple space split (the source's fallback path)
  rather than `Intl.Segmenter` word boundaries; grapheme segmentation uses
  `package:characters` and is exact.
- Springs are reproduced as a sampled curve (matching the web `linear(...)`),
  not Flutter's `SpringSimulation`, so the motion matches the original.
- Like the source, content is single-line (no wrapping) and only string text is
  supported.
