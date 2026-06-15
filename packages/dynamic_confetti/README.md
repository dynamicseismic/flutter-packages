# dynamic_confetti

A faithful Flutter port of [canvas-confetti](https://github.com/catdad/canvas-confetti) —
**performant, dependency-free particle confetti** drawn with a single
`CustomPainter`.

The particle physics are a direct port of canvas-confetti's engine, stepped at a
fixed 60fps so a burst looks the same on a 60Hz phone and a 120Hz tablet. Every
option name and default matches the original, so recipes from the canvas-confetti
docs translate almost line-for-line.

## Install

```yaml
dependencies:
  dynamic_confetti: ^0.1.0
```

## Fire from anywhere

The simplest path mirrors canvas-confetti's global `confetti()` — one call, no
controller, no widget to place. A self-managed layer is dropped into the app's
`Overlay`, plays, and tears itself down. Pointer events pass straight through.

```dart
import 'package:dynamic_confetti/dynamic_confetti.dart';

// the bare burst
DynamicConfetti.fire(context);

// tuned
DynamicConfetti.fire(
  context,
  const DynamicConfettiOptions(particleCount: 120, spread: 70),
);

// it returns a Future that completes when the burst settles
await DynamicConfetti.fire(context);
```

> `DynamicConfetti.fire` needs an `Overlay` ancestor — always present under a
> `MaterialApp` or `CupertinoApp`.

## Placed & controlled

When you want a persistent canvas, a precise launch origin, or continuous
effects (fireworks, snow), keep a `DynamicConfettiController` and place a
`DynamicConfetti` widget over your content with a `Stack`:

```dart
final confetti = DynamicConfettiController();

@override
Widget build(BuildContext context) {
  return Stack(
    children: [
      YourPage(),
      DynamicConfetti(controller: confetti), // transparent, ignores pointers
    ],
  );
}

// fire as many overlapping bursts as you like
confetti.fire(const DynamicConfettiOptions(spread: 90, startVelocity: 30));

// stop everything and clear the canvas
confetti.reset();

@override
void dispose() {
  confetti.dispose();
  super.dispose();
}
```

## Options

`DynamicConfettiOptions` carries every canvas-confetti knob, with identical
defaults:

| Option | Default | Meaning |
| --- | --- | --- |
| `particleCount` | `50` | How many particles to launch |
| `angle` | `90` | Launch angle in degrees — `90` is straight up |
| `spread` | `45` | How far off-centre, in degrees, they spray |
| `startVelocity` | `45` | Starting speed in pixels |
| `decay` | `0.9` | Speed lost per tick (0–1) |
| `gravity` | `1` | How fast they're pulled down |
| `drift` | `0` | Sideways drift |
| `flat` | `false` | Disable the 3D tilt & wobble |
| `ticks` | `200` | Lifetime in ticks (frames at 60fps) |
| `origin` | `Offset(0.5, 0.5)` | Launch point, normalised `(0,0)`→top-left … `(1,1)`→bottom-right |
| `colors` | 7 brand colours | Palette, cycled per particle |
| `shapes` | `[square, circle]` | Picked at random per particle |
| `scalar` | `1` | Per-particle scale factor |
| `disableForReducedMotion` | `false` | Suppress when the OS asks for reduced motion |

## Shapes

```dart
// built-ins
DynamicConfettiOptions(shapes: [DynamicConfettiShape.star]);
DynamicConfettiOptions(
  shapes: const [DynamicConfettiShape.square, DynamicConfettiShape.circle],
);

// emoji / text — parity with shapeFromText
DynamicConfetti.fire(
  context,
  DynamicConfettiOptions(
    shapes: [DynamicConfettiShape.text('🎉'), DynamicConfettiShape.text('⭐')],
    scalar: 2,
  ),
);

// any Path — parity with shapeFromPath
final heart = Path()
  ..moveTo(12, 21)
  ..cubicTo(-6, 9, 3, -1, 12, 7)
  ..cubicTo(21, -1, 30, 9, 12, 21);
DynamicConfettiOptions(shapes: [DynamicConfettiShape.path(heart)]);
```

## Recipes

The classic canvas-confetti recipes port directly. A "realistic" look fires
several overlapping bursts at once:

```dart
void celebrate(DynamicConfettiController c) {
  void burst(double ratio, DynamicConfettiOptions o) =>
      c.fire(o.copyWith(particleCount: (200 * ratio).floor()));

  const base = DynamicConfettiOptions(origin: Offset(0.5, 0.7));
  burst(0.25, base.copyWith(spread: 26, startVelocity: 55));
  burst(0.20, base.copyWith(spread: 60));
  burst(0.35, base.copyWith(spread: 100, decay: 0.91, scalar: 0.8));
  burst(0.10, base.copyWith(spread: 120, startVelocity: 25, decay: 0.92, scalar: 1.2));
  burst(0.10, base.copyWith(spread: 120, startVelocity: 45));
}
```

Fireworks, snow and school-pride cannons (driven by a `Timer`) are all in the
[example app](example/lib/main.dart).

## Credits

A port of [canvas-confetti](https://github.com/catdad/canvas-confetti) by Kiril
Vatev (ISC). See [LICENSE](LICENSE) for the third-party notice.
