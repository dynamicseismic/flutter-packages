# dynamic_icons

Beautifully animated, hover/tap-triggered icons for Flutter — **stroke-based
[Lucide](https://lucide.dev) glyphs** and **filled crypto / blockchain brand
marks**, under one engine.

Everything is drawn with `CustomPainter` — no SVG assets, no runtime
dependencies. Each icon plays a tasteful micro-animation on **hover**
(web/desktop), **tap** (mobile), or under **programmatic control**.

## Install

```yaml
dependencies:
  dynamic_icons: ^0.1.0
```

## Usage

```dart
import 'package:dynamic_icons/dynamic_icons.dart';

// Stroke glyph — tinted by the ambient IconTheme (currentColor).
DynamicIcon(icon: Lucide.bell)
DynamicIcon(icon: Lucide.download, size: 32, color: Colors.indigo, strokeWidth: 2)

// Filled brand mark — its own colours + a brand background chip.
DynamicIcon(icon: Crypto.ethereum, size: 44)
DynamicIcon(icon: Crypto.solana, shape: IconShape.circle)
DynamicIcon(icon: Crypto.bnb, showBackground: false, shape: IconShape.none)
```

The widget renders a stroke glyph or a filled chip automatically, based on the
icon's definition — you don't choose a mode.

### Namespaces

Icons live under the `Lucide` and `Crypto` classes — the class name
*is* the namespace, exactly like Flutter's `Icons`. Import the whole package, or
just one family to shrink the surface:

```dart
import 'package:dynamic_icons/lucide.dart';   // Lucide + engine
import 'package:dynamic_icons/crypto.dart';   // Crypto + engine
```

| Import | Gives you |
| --- | --- |
| `lucide.dart` | engine + `Lucide` + `lucideIcons` |
| `crypto.dart` | engine + `Crypto` + `cryptoIcons` |
| `dynamic_icons.dart` | engine + both + `dynamicIcons` (everything) |

### Triggers

```dart
DynamicIcon(icon: Lucide.heart, trigger: AnimationTrigger.hover)       // hover only
DynamicIcon(icon: Lucide.heart, trigger: AnimationTrigger.tap)         // tap only
DynamicIcon(icon: Lucide.heart, trigger: AnimationTrigger.hoverAndTap) // both (default)
DynamicIcon(icon: Lucide.heart, trigger: AnimationTrigger.none)        // controller-driven
```

### Global defaults

Wrap a subtree in a `DynamicIconTheme` to set defaults once instead of repeating
`trigger` / `size` / `strokeWidth` … on every icon — the `dynamic_icons`
analogue of Flutter's `IconTheme`:

```dart
DynamicIconTheme(
  data: const DynamicIconThemeData(
    trigger: AnimationTrigger.hover,
    size: 32,
    strokeWidth: 1.5,
  ),
  child: MaterialApp(/* … */),   // every DynamicIcon below inherits these
)
```

Each field resolves **explicit widget value → nearest `DynamicIconTheme` →
built-in default**, so any icon can still override locally:

```dart
DynamicIcon(icon: Lucide.bell)            // hover, 32, 1.5 (from the theme)
DynamicIcon(icon: Lucide.bell, size: 20)  // overrides just size
```

Covers `trigger`, `size`, `color`, `strokeWidth`, `shape`, `cornerRadius`, and
`showBackground`. Nest another `DynamicIconTheme` — or use
`DynamicIconTheme.merge` — to override part of an outer theme for a subtree.

### Programmatic control

```dart
final controller = IconController();

DynamicIcon(
  icon: Lucide.bell,
  controller: controller,
  trigger: AnimationTrigger.none,
);

controller.play();     // play forward
controller.reverse();  // play back to rest
controller.reset();    // jump to rest
controller.loop();     // repeat until stopped
controller.stop();
```

### Catalogs

```dart
lucideIcons   // the full Lucide stroke set (with search keywords)
cryptoIcons   // the brand marks (each with a ticker `symbol`)
dynamicIcons  // everything, for a combined gallery

for (final entry in dynamicIcons) {
  DynamicIcon(icon: entry.data);   // entry.name, entry.symbol, entry.keywords
}
```

## What's included

**Stroke (Lucide):** the full Lucide set — `Lucide.bell`,
`Lucide.download`, `Lucide.arrow_down`, `Lucide.wifi`, … — all
reachable under `Lucide` and through the `lucideIcons` catalog. Families:
rotate/swing, translate/spring, scale/pulse, path-draw, staggered, combos.

**Filled brand marks:**

| Icon | Accessor | Motion |
| --- | --- | --- |
| Ethereum | `Crypto.ethereum` | facets assemble (staggered pop + fade) |
| Solana | `Crypto.solana` | three gradient bars slide in, staggered |
| BNB | `Crypto.bnb` | diamond spins continuously while active |
| Polygon | `Crypto.polygon` | playful bounce-and-tilt |
| Bittensor | `Crypto.bittensor` | strokes wipe on (light chip) |
| Bittensor EVM | `Crypto.bittensor_evm` | same motion, dark chip |

## A note on brand marks

The crypto logos are trademarks of their respective projects. This package is
not affiliated with any of them, and the animations keep each mark's proportions
and colours intact at rest. Use them in line with each owner's brand guidelines
— see [LICENSE](LICENSE).
