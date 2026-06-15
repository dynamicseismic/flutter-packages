# dynamic-flutter-packages

A [Melos](https://melos.invertase.dev/)-managed monorepo of small, focused Flutter
packages — plus a single web **showcase** that demos them all.

### ▶️ Live demo: https://dynamicseismic.github.io/dynamic-flutter-packages/

## Packages

| Package | What it does |
|---|---|
| [`dynamic_haptics`](packages/dynamic_haptics) | WebHaptics-style haptic presets & custom vibration patterns (Android/iOS plugin) |
| [`dynamic_lucide_icons`](packages/dynamic_lucide_icons) | Hover/tap-animated Lucide icons |
| [`dynamic_morphing_icons`](packages/dynamic_morphing_icons) | Icons that morph into one another — every icon is three line segments |
| [`dynamic_torph`](packages/dynamic_torph) | Dependency-free animated text morphing |

Each package keeps its own `example/` app.

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
