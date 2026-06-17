/// Make any widget *touchable* — wrap it (or call `.touchable()`) and it plays
/// a tactile "sink / 下沉" effect on touch, hover, and tap, springing back on
/// release with real spring physics.
///
/// ```dart
/// import 'package:dynamic_touchable/dynamic_touchable.dart';
///
/// DynamicTouchable(onTap: _open, child: MyCard());  // wrapper
/// MyCard().touchable(onTap: _open);                 // extension — same effect
/// ```
///
/// The effect works with no callbacks (a purely decorative press). Add [onTap]
/// or [onLongPress] and it becomes a fully accessible button — keyboard
/// activatable (Space/Enter), announced as a button, with a `click` cursor.
///
/// Tune the feel per-widget, or app-wide via [DynamicTouchableTheme] (the same
/// pattern as Flutter's `IconTheme`). The release spring is chosen with
/// [TouchSpring]. For haptics, wire `onPressed` to your haptics package of
/// choice — this package has no haptics dependency of its own.
library;

export 'src/dynamic_touchable.dart' show DynamicTouchable;
export 'src/dynamic_touchable_theme.dart'
    show DynamicTouchableTheme, DynamicTouchableThemeData;
export 'src/touch_spring.dart' show TouchSpring, resolveTouchSpring;
export 'src/touch_state.dart' show TouchState;
export 'src/touchable_extension.dart' show TouchableExtension;
