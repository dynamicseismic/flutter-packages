# dynamic_lucide_icons

Beautifully animated, hover/tap-triggered [Lucide](https://lucide.dev) icons for
Flutter — a faithful port of the React project
[pqoqubbw/icons](https://github.com/pqoqubbw/icons).

Each icon is a stroke-based Lucide glyph that plays a tasteful micro-animation
on **hover** (web/desktop), **tap** (mobile), or under **programmatic control**.
Everything is drawn with `CustomPainter` — no SVG assets, no extra runtime
dependencies.

## Install

```yaml
dependencies:
  dynamic_lucide_icons: ^0.1.0
```

## Usage

```dart
import 'package:dynamic_lucide_icons/dynamic_lucide_icons.dart';

// Plays on hover (desktop/web) and tap (mobile) by default.
DynamicAnimatedLucideIcon(icon: kBellIcon)

// Customise size, colour, stroke width.
DynamicAnimatedLucideIcon(
  icon: kDownloadIcon,
  size: 32,
  color: Colors.indigo,   // defaults to the ambient IconTheme / text colour
  strokeWidth: 2,
)
```

### Triggers

```dart
DynamicAnimatedLucideIcon(icon: kHeartIcon, trigger: DynamicAnimationTrigger.hover)       // hover only
DynamicAnimatedLucideIcon(icon: kHeartIcon, trigger: DynamicAnimationTrigger.tap)         // tap only
DynamicAnimatedLucideIcon(icon: kHeartIcon, trigger: DynamicAnimationTrigger.hoverAndTap) // both (default)
DynamicAnimatedLucideIcon(icon: kHeartIcon, trigger: DynamicAnimationTrigger.none)        // controller-driven
```

### Programmatic control

The equivalent of pqoqubbw's `startAnimation` / `stopAnimation` ref handle:

```dart
final controller = DynamicAnimatedLucideIconController();

DynamicAnimatedLucideIcon(
  icon: kBellIcon,
  controller: controller,
  trigger: DynamicAnimationTrigger.none,
);

// elsewhere
controller.play();     // play forward
controller.reverse();  // play back to rest
controller.reset();    // jump to rest
controller.loop();     // repeat until stopped
controller.stop();
```

### The catalog

Every icon is also available through a registry, handy for galleries and search:

```dart
for (final entry in lucideAnimatedIcons) {
  print('${entry.name}: ${entry.keywords}');   // e.g. "bell: [notification, alarm, ring]"
  DynamicAnimatedLucideIcon(icon: entry.data);
}
```

## What's included

**The full Lucide set — 439 animated icons** (`kBellIcon`, `kDownloadIcon`,
`kArrowBigUpIcon`, `kGitMergeIcon`, … one `const` per icon), all reachable through
the `lucideAnimatedIcons` catalog.

A hand-tuned starter set covers every animation archetype and is the best place to
see what's possible:

| Family | Examples |
| --- | --- |
| Rotate / swing | `bell` `cog` `refresh-cw` `rotate-cw` `plus` `loader-circle` `compass` `moon` |
| Translate / spring | `download` `upload` `arrow-down` `arrow-right` `send` `chevron-down` `logout` `corner-down-left` |
| Scale / pulse | `heart` `sparkles` `search` `bookmark` `eye` `battery-charging` |
| Path-draw | `activity` `zap` `check` `check-check` `heart-pulse` `trending-up` `square-pen` `x` |
| Staggered | `wifi` `volume` `audio-lines` `radio` `bluetooth-searching` `cast` `sun` |
| Combos | `lock` `menu` |

Looping icons (spinners, equalizers, charging/pairing indicators) animate
continuously while active.

The remaining ~400 icons are ported from the same source; their motion maps onto
the same engine. A handful whose original effect relies on capabilities a
stroke-only painter doesn't have (animated `strokeWidth`, `fill` fades, moving
gradient fills) use a tasteful equivalent instead.

## Adding your own icon

The engine is declarative. An icon is a `DynamicLucideIconData` made of `DynamicIconPart`s,
each with an optional animation (`DynamicRotatePart`, `DynamicTranslatePart`, `DynamicScalePart`,
`DynamicOpacityPart`, `DynamicDrawPart`, or a `DynamicCompositePart` of several). Paste the Lucide
path data and describe the motion:

```dart
const kMyArrow = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart('M5 12h14'),                                      // static
    DynamicIconPart(
      'm12 5 7 7-7 7',
      DynamicTranslatePart([Offset.zero, Offset(2, 0), Offset.zero]), // bobs right
    ),
  ],
);
```

Shapes use the standard SVG path grammar (`M/L/H/V/C/S/Q/T/A/Z`, absolute and
relative). Convert `<circle>`/`<line>`/`<rect>` to a `d` string.

## Example app

`example/` is a gallery (search + grid + hover/tap + dark mode) mirroring
[icons.pqoqubbw.dev](https://icons.pqoqubbw.dev). Hover is best seen on the web
or desktop build:

```bash
cd example
flutter run -d chrome   # or: flutter run -d macos
```

## Credits & license

This package is MIT-licensed. Icon geometry is from Lucide (ISC) and the
animation designs are from pqoqubbw/icons (MIT). See
[ATTRIBUTION.md](ATTRIBUTION.md).
