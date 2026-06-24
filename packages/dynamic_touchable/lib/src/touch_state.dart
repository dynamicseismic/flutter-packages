import 'package:flutter/widgets.dart';

/// An immutable snapshot of a [DynamicTouchable]'s interaction state.
///
/// A descendant can read the nearest touchable's live state with
/// [TouchState.of] (or [TouchState.maybeOf]) to style itself — e.g. tint a
/// label while the surface is pressed — without rebuilding the whole subtree:
///
/// ```dart
/// Builder(builder: (context) {
///   final pressed = TouchState.of(context).pressed;
///   return Text('Tap', style: TextStyle(color: pressed ? Colors.white : null));
/// })
/// ```
@immutable
class TouchState {
  const TouchState({
    required this.enabled,
    required this.hovered,
    required this.pressed,
    required this.focused,
  });

  /// Whether the touchable is interactive.
  final bool enabled;

  /// Whether a pointer is hovering over it (web/desktop only).
  final bool hovered;

  /// Whether it is currently held down (pointer or keyboard).
  final bool pressed;

  /// Whether it holds keyboard focus.
  final bool focused;

  /// Neither hovered, pressed, nor focused.
  bool get idle => !pressed && !hovered && !focused;

  /// The nearest enclosing [DynamicTouchable]'s state, or null if there is no
  /// touchable ancestor.
  static TouchState? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<TouchStateScope>()?.state;

  /// The nearest enclosing [DynamicTouchable]'s state. Asserts one exists.
  static TouchState of(BuildContext context) {
    final state = maybeOf(context);
    assert(
      state != null,
      'TouchState.of() was called without a DynamicTouchable ancestor.',
    );
    return state!;
  }

  @override
  bool operator ==(Object other) =>
      other is TouchState &&
      other.enabled == enabled &&
      other.hovered == hovered &&
      other.pressed == pressed &&
      other.focused == focused;

  @override
  int get hashCode => Object.hash(enabled, hovered, pressed, focused);

  @override
  String toString() =>
      'TouchState(enabled: $enabled, hovered: $hovered, pressed: $pressed, '
      'focused: $focused)';
}

/// Exposes a [TouchState] to descendants of a [DynamicTouchable].
///
/// Public so the touchable can construct it, but intentionally not exported —
/// read it through [TouchState.of].
class TouchStateScope extends InheritedWidget {
  const TouchStateScope({super.key, required this.state, required super.child});

  final TouchState state;

  @override
  bool updateShouldNotify(TouchStateScope oldWidget) =>
      state != oldWidget.state;
}
