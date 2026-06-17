import 'package:flutter/widgets.dart';

import 'dynamic_touchable.dart';
import 'touch_spring.dart';

/// Sugar for wrapping any widget in a [DynamicTouchable].
extension TouchableExtension on Widget {
  /// Wraps this widget so it plays the tactile sink-on-press effect.
  ///
  /// ```dart
  /// MyCard().touchable(onTap: _open);
  /// ```
  ///
  /// Forwards the commonly-tuned parameters; reach for the [DynamicTouchable]
  /// constructor directly when you need the rarely-touched ones (focus-ring
  /// geometry, shadow colours, scale alignment, …).
  Widget touchable({
    Key? key,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    VoidCallback? onPressed,
    VoidCallback? onReleased,
    ValueChanged<bool>? onPressChanged,
    bool? enabled,
    double? pressedScale,
    double? hoveredScale,
    Offset? pressedOffset,
    double? restElevation,
    double? pressedElevation,
    TouchSpring? spring,
    SpringDescription? springDescription,
    Duration? pressDuration,
    FocusNode? focusNode,
    bool autofocus = false,
    bool? canRequestFocus,
    bool? showFocusRing,
    MouseCursor? mouseCursor,
    String? semanticLabel,
    bool excludeSemantics = false,
    HitTestBehavior behavior = HitTestBehavior.opaque,
    bool enableFeedback = true,
  }) {
    return DynamicTouchable(
      key: key,
      onTap: onTap,
      onLongPress: onLongPress,
      onPressed: onPressed,
      onReleased: onReleased,
      onPressChanged: onPressChanged,
      enabled: enabled,
      pressedScale: pressedScale,
      hoveredScale: hoveredScale,
      pressedOffset: pressedOffset,
      restElevation: restElevation,
      pressedElevation: pressedElevation,
      spring: spring,
      springDescription: springDescription,
      pressDuration: pressDuration,
      focusNode: focusNode,
      autofocus: autofocus,
      canRequestFocus: canRequestFocus,
      showFocusRing: showFocusRing,
      mouseCursor: mouseCursor,
      semanticLabel: semanticLabel,
      excludeSemantics: excludeSemantics,
      behavior: behavior,
      enableFeedback: enableFeedback,
      child: this,
    );
  }
}
