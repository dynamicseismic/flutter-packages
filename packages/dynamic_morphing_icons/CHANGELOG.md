## 0.1.0

* Initial release.
* `DynamicMorphingIcon` widget that morphs from its previous shape to a new one when
  `icon` changes.
* `DynamicMorphingIconTheme` — an `InheritedWidget` (like Flutter's `IconTheme`)
  setting ambient defaults for `size`, `color`, `strokeWidth`, `duration`, and
  `curve`; an explicit value on the widget overrides it.
* 21 built-in icons (`DynamicMorphIcons`), each built from three line segments.
* Two morph modes: coordinate interpolation across shapes, and rigid rotation
  within rotation groups (arrows, chevrons, plus/cross).
* Public `DynamicMorphIcon` / `DynamicMorphLine` model for defining custom icons.
* Interactive web example.
