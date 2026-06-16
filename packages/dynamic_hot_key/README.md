> Forked from [super_native_extensions](https://github.com/superlistapp/super_native_extensions) by Matej Knopp / Superlist (MIT), with the `super_` prefix renamed to `dynamic_`.

## Features

System-wide hotkeys for macOS and Windows.

## Usage

```dart
final hotKey = await HotKey.create(
  definition: HotKeyDefinition(
    key: PhysicalKeyboardKey.minus,
    alt: true,
    meta: true,
  ),
  callback: () {
    print('hot key pressed');
  },
);

// .. Meta + Alt + Minus will trigger the callback regardless of whether
// the application is in focus

// Unregister the hot key
hotKey.dispose();
```

## Additional information

Hot keys are registered on physical keys. To convert between physical and logical keys you can use the [dynamic_keyboard_layout](https://pub.dev/packages/dynamic_keyboard_layout) package.
