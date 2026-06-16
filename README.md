# flutter-packages

A [Melos](https://melos.invertase.dev/)-managed monorepo of small, focused Flutter
packages — plus a single web **showcase** that demos them all.

### ▶️ Live demo: https://dynamicseismic.github.io/flutter-packages/

## Packages

| Package | What it does |
|---|---|
| [`dynamic_confetti`](packages/dynamic_confetti) | A faithful Flutter port of canvas-confetti — particle confetti with a fire-from-anywhere one-liner |
| [`dynamic_haptics`](packages/dynamic_haptics) | WebHaptics-style haptic presets & custom vibration patterns (Android/iOS plugin) |
| [`dynamic_icons`](packages/dynamic_icons) | Hover/tap-animated icons — Lucide stroke glyphs + filled crypto brand marks |
| [`dynamic_morphing_icons`](packages/dynamic_morphing_icons) | Icons that morph into one another — every icon is three line segments |
| [`dynamic_torph`](packages/dynamic_torph) | Dependency-free animated text morphing |
| [`dynamic_native_extensions`](packages/dynamic_native_extensions) | Low-level native interface (Rust + FFI) powering the packages below — not used directly |
| [`dynamic_clipboard`](packages/dynamic_clipboard) | Rich clipboard read/write — text, images, custom formats — across platforms |
| [`dynamic_context_menu`](packages/dynamic_context_menu) | Native context menus that transition to drag & drop on mobile |
| [`dynamic_drag_and_drop`](packages/dynamic_drag_and_drop) | Native drag & drop of rich data in and out of the app |
| [`dynamic_hot_key`](packages/dynamic_hot_key) | System-wide hot keys |
| [`dynamic_keyboard_layout`](packages/dynamic_keyboard_layout) | Physical keyboard layout mapping |

The first five packages keep their own `example/` app. The native-extensions
family (`dynamic_native_extensions` + the four built on it) is forked from
[super_native_extensions](https://github.com/superlistapp/super_native_extensions)
(MIT) with the `super_` prefix renamed to `dynamic_`; their upstream example apps
are omitted here.

## Apps

- [`apps/showcase`](apps/showcase) — one demo app exercising all four packages.
  Built for the web and deployed to GitHub Pages on every push to `main` via
  [`.github/workflows/deploy-showcase.yml`](.github/workflows/deploy-showcase.yml).

## Develop

This is a [Dart pub workspace](https://dart.dev/tools/pub/workspaces) managed with Melos 7.

```bash
dart pub global activate melos   # once; ensure ~/.pub-cache/bin is on PATH
flutter pub get                  # bootstrap the whole workspace (single lockfile)
melos run analyze                # dart analyze across all packages
melos run test                   # flutter test across all packages
```

Run the showcase locally:

```bash
cd apps/showcase
flutter run -d chrome            # or -d macos / a device (haptics needs a real device)
```

## Layout

```
packages/     # the four packages, each with its own example/
apps/showcase # the unified demo app (deployed to Pages)
pubspec.yaml  # workspace root: members + melos scripts
```
