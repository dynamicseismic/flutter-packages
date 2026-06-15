## 0.1.0

Initial release — a Flutter port of pqoqubbw/icons.

- Declarative animation engine: per-part rotate / translate / scale / opacity /
  progressive path-draw, composable, with a const-friendly `DynamicSpringCurve`.
- Self-contained SVG path parser (`M/L/H/V/C/S/Q/T/A/Z`, absolute & relative) —
  no third-party runtime dependencies.
- `DynamicAnimatedLucideIcon` widget with hover, tap, and looping triggers, plus an
  `DynamicAnimatedLucideIconController` for programmatic control.
- The full Lucide set — 439 animated icons — exposed individually (`kBellIcon`, …)
  and via the `lucideAnimatedIcons` catalog with search keywords. A hand-tuned
  starter set of ~40 covers every animation archetype.
- Gallery example app (search + grid + hover/tap + dark mode).
