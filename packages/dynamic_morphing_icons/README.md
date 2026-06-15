# dynamic_morphing_icons

Icons that **morph** into one another instead of crossfading. The hamburger that
rotates into a cross, the play button that becomes pause, the arrow that bends
into a check mark — the lines themselves slide, rotate, and grow.

The trick: **every icon is exactly three line segments.** Icons that need fewer
lines collapse the extras to an invisible point. Because all 21 icons share that
three-line skeleton, *any* icon can transform into *any* other.

Technique adapted from Benji Taylor's
[Morphing icons with Claude](https://benji.org/morphing-icons-with-claude).

## Usage

Add the dependency, then drive the animation just by changing the `icon`:

```dart
import 'package:dynamic_morphing_icons/dynamic_morphing_icons.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({super.key});
  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  bool _open = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => setState(() => _open = !_open),
      icon: DynamicMorphingIcon(
        icon: _open ? DynamicMorphIcons.cross : DynamicMorphIcons.menu,
        size: 28,
        // color & size fall back to the ambient IconTheme when omitted.
      ),
    );
  }
}
```

That's it — when `icon` changes, `DynamicMorphingIcon` animates from the old shape to
the new one.

### `DynamicMorphingIcon` parameters

| Parameter       | Default              | Description                                   |
| --------------- | -------------------- | --------------------------------------------- |
| `icon`          | (required)           | The `DynamicMorphIcon` to show. Change it to morph.  |
| `size`          | `IconTheme` → `24`   | Width/height in logical pixels.               |
| `color`         | `IconTheme` → black  | Stroke colour.                                |
| `strokeWidth`   | `2.0`                | Line thickness in logical pixels.             |
| `duration`      | `450ms`              | Morph duration.                               |
| `curve`         | `easeInOutCubic`     | Morph easing.                                 |
| `semanticLabel` | `null`               | Optional screen-reader description.           |

## The icons

All are exposed as `const` values on `DynamicMorphIcons`, and the full ordered list is
`DynamicMorphIcons.all`:

`menu` · `cross` · `plus` · `minus` · `equals` · `asterisk` · `more` · `check` ·
`play` · `pause` · `download` · `upload` · `external` · `arrowRight` ·
`arrowDown` · `arrowLeft` · `arrowUp` · `chevronRight` · `chevronDown` ·
`chevronLeft` · `chevronUp` · `scan`

The 21 article icons are each three lines. `scan` (a viewfinder frame) is the
one exception — it needs eight (two per corner). The engine pads the shorter
icon with hidden lines when morphing, so `scan` still transforms into any other
icon: its extra segments shrink to the centre and fade out.

## How the morph works

* **Coordinate tween** — for two unrelated icons, each of the three line slots is
  interpolated through coordinate space. Collapsed lines (opacity `0`) fade in or
  out as they grow from / shrink to a point. This produces the "magical"
  transforms like `arrowRight → check`.
* **Rotation groups** — some icons are the *same shape at a different angle*: the
  four arrows and four chevrons (90° apart) and `plus`/`cross` (45° apart). These
  share a `rotationGroup`, so morphing between them spins the rigid shape rather
  than warping the coordinates — `arrowRight → arrowDown` just rotates.

## Defining your own icons

A `DynamicMorphIcon` is a name plus a list of `DynamicMorphLine`s in a 24×24 box — three by
convention, but any number works (the engine pads the shorter side when
morphing). Use `DynamicMorphLine.hidden` (an invisible point at the centre) for unused
slots, and `DynamicMorphLine.dot` for a visible dot:

```dart
const heart = DynamicMorphIcon('heart', [
  DynamicMorphLine(Offset(12, 20), Offset(4, 10)),
  DynamicMorphLine(Offset(12, 20), Offset(20, 10)),
  DynamicMorphLine.hidden,
]);
```

To make a set of icons rotate into one another, give them the same
`rotationGroup` and identical base `lines`, differing only in `rotationDegrees`.

## Example

A runnable demo (tap-to-cycle hero icon, 21-icon picker, speed/stroke sliders)
lives in [`example/`](example):

```sh
cd example
flutter run -d chrome
```
