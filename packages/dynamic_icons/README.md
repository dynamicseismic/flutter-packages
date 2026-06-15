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
DynamicIcon(icon: LucideIcons.bell)
DynamicIcon(icon: LucideIcons.download, size: 32, color: Colors.indigo, strokeWidth: 2)

// Filled brand mark — its own colours + a brand background chip.
DynamicIcon(icon: CryptoIcons.ethereum, size: 44)
DynamicIcon(icon: CryptoIcons.solana, shape: IconShape.circle)
DynamicIcon(icon: CryptoIcons.bnb, showBackground: false, shape: IconShape.none)
```

The widget renders a stroke glyph or a filled chip automatically, based on the
icon's definition — you don't choose a mode.

### Namespaces

Icons live under the `LucideIcons` and `CryptoIcons` classes — the class name
*is* the namespace, exactly like Flutter's `Icons`. Import the whole package, or
just one family to shrink the surface:

```dart
import 'package:dynamic_icons/lucide.dart';   // LucideIcons + engine
import 'package:dynamic_icons/crypto.dart';   // CryptoIcons + engine
```

| Import | Gives you |
| --- | --- |
| `lucide.dart` | engine + `LucideIcons` + `lucideIcons` |
| `crypto.dart` | engine + `CryptoIcons` + `cryptoIcons` |
| `dynamic_icons.dart` | engine + both + `dynamicIcons` (everything) |

### Triggers

```dart
DynamicIcon(icon: LucideIcons.heart, trigger: AnimationTrigger.hover)       // hover only
DynamicIcon(icon: LucideIcons.heart, trigger: AnimationTrigger.tap)         // tap only
DynamicIcon(icon: LucideIcons.heart, trigger: AnimationTrigger.hoverAndTap) // both (default)
DynamicIcon(icon: LucideIcons.heart, trigger: AnimationTrigger.none)        // controller-driven
```

### Programmatic control

```dart
final controller = IconController();

DynamicIcon(
  icon: LucideIcons.bell,
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

**Stroke (Lucide):** the full Lucide set — `LucideIcons.bell`,
`LucideIcons.download`, `LucideIcons.arrow_down`, `LucideIcons.wifi`, … — all
reachable under `LucideIcons` and through the `lucideIcons` catalog. Families:
rotate/swing, translate/spring, scale/pulse, path-draw, staggered, combos.

**Filled brand marks:**

| Icon | Accessor | Motion |
| --- | --- | --- |
| Ethereum | `CryptoIcons.ethereum` | facets assemble (staggered pop + fade) |
| Solana | `CryptoIcons.solana` | three gradient bars slide in, staggered |
| BNB | `CryptoIcons.bnb` | diamond spins continuously while active |
| Polygon | `CryptoIcons.polygon` | playful bounce-and-tilt |
| Bittensor | `CryptoIcons.bittensor` | strokes wipe on (light chip) |
| Bittensor EVM | `CryptoIcons.bittensor_evm` | same motion, dark chip |

## A note on brand marks

The crypto logos are trademarks of their respective projects. This package is
not affiliated with any of them, and the animations keep each mark's proportions
and colours intact at rest. Use them in line with each owner's brand guidelines
— see [LICENSE](LICENSE).
