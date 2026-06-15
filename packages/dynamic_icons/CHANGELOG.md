## 0.1.0

Initial release — merges `dynamic_lucide_icons` and `dynamic_crypto_icons` into
one package and engine.

- One `CustomPainter` engine that renders both **stroke** glyphs (Lucide) and
  **filled** brand marks (per-part colour, gradient fills, static opacity tiers,
  and a brand background chip), selected per icon via `DynamicIconData.style` /
  `backgroundColor`.
- Animation primitives: rotate / translate / scale (per-axis, custom pivot) /
  opacity / progressive stroke **draw-on** / **clip-wipe** fill reveal, all
  composable, with a const-friendly `SpringCurve`.
- Self-contained SVG path parser (`M/L/H/V/C/S/Q/T/A/Z`, absolute & relative) —
  no third-party runtime dependencies.
- One widget, `DynamicIcon`, with hover / tap / looping triggers and a
  `IconController` for programmatic control.
- Icons are namespaced under the `LucideIcons` and `CryptoIcons` classes (like
  Flutter's `Icons`): `LucideIcons.bell`, `CryptoIcons.ethereum`. Import
  `package:dynamic_icons/lucide.dart` or `…/crypto.dart` for just one family,
  or `…/dynamic_icons.dart` for both.
- Catalogs: `lucideIcons` (the full Lucide set), `cryptoIcons` (the brand
  marks), and `dynamicIcons` (everything), all carrying search keywords; crypto
  entries also carry a ticker `symbol`.
- Combined gallery example (search + grid + hover/tap + dark mode).
