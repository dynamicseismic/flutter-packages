import 'package:flutter/widgets.dart';

import 'touch_spring.dart';

/// Ambient defaults for every [DynamicTouchable] in a subtree — the
/// `dynamic_touchable` analogue of Flutter's `IconTheme`.
///
/// Wrap your app (or any subtree) once instead of passing the same `spring` /
/// `pressedScale` / … to every touchable:
///
/// ```dart
/// DynamicTouchableTheme(
///   data: const DynamicTouchableThemeData(
///     spring: TouchSpring.bouncy,
///     pressedScale: 0.94,
///   ),
///   child: MyApp(),
/// )
/// ```
///
/// A field a [DynamicTouchable] sets explicitly always wins; a field left null
/// falls back to the nearest [DynamicTouchableTheme], then to the built-in
/// default.
class DynamicTouchableThemeData {
  const DynamicTouchableThemeData({
    this.pressedScale,
    this.hoveredScale,
    this.pressedOffset,
    this.restElevation,
    this.pressedElevation,
    this.hoverElevation,
    this.shadowColor,
    this.spring,
    this.springDescription,
    this.pressDuration,
    this.showFocusRing,
    this.focusRingColor,
    this.focusRingWidth,
    this.focusRingRadius,
    this.mouseCursor,
    this.enableFeedback,
  });

  /// Default scale at full press. Built-in fallback: `0.96`.
  final double? pressedScale;

  /// Default scale on hover (web/desktop). Built-in fallback: `1.0` (no lift).
  final double? hoveredScale;

  /// Default downward translate at full press, in logical pixels. Built-in
  /// fallback: `Offset(0, 1.5)`.
  final Offset? pressedOffset;

  /// Default resting shadow elevation. Built-in fallback: `0` (no shadow).
  final double? restElevation;

  /// Default shadow elevation at full press. Built-in fallback: `0`.
  final double? pressedElevation;

  /// Default shadow elevation on hover. Built-in fallback: [restElevation].
  final double? hoverElevation;

  /// Default shadow colour. Built-in fallback: `Color(0x33000000)`.
  final Color? shadowColor;

  /// Default release spring preset. Built-in fallback: [TouchSpring.snappy].
  final TouchSpring? spring;

  /// Default raw release spring; wins over [spring] when set. Built-in
  /// fallback: derived from [spring].
  final SpringDescription? springDescription;

  /// Default press-in tween duration. Built-in fallback: `90ms`.
  final Duration? pressDuration;

  /// Default for whether to paint a focus ring. Built-in fallback: `true`.
  final bool? showFocusRing;

  /// Default focus-ring colour. Built-in fallback: `Color(0xFF3B82F6)`.
  final Color? focusRingColor;

  /// Default focus-ring stroke width. Built-in fallback: `2`.
  final double? focusRingWidth;

  /// Default focus-ring corner radius. Built-in fallback: `8`.
  final double? focusRingRadius;

  /// Default mouse cursor. Built-in fallback: `click` when actionable, else the
  /// inherited cursor.
  final MouseCursor? mouseCursor;

  /// Default for platform tap feedback (sound/haptic). Built-in fallback:
  /// `true`.
  final bool? enableFeedback;

  /// A copy with the given fields replaced.
  DynamicTouchableThemeData copyWith({
    double? pressedScale,
    double? hoveredScale,
    Offset? pressedOffset,
    double? restElevation,
    double? pressedElevation,
    double? hoverElevation,
    Color? shadowColor,
    TouchSpring? spring,
    SpringDescription? springDescription,
    Duration? pressDuration,
    bool? showFocusRing,
    Color? focusRingColor,
    double? focusRingWidth,
    double? focusRingRadius,
    MouseCursor? mouseCursor,
    bool? enableFeedback,
  }) {
    return DynamicTouchableThemeData(
      pressedScale: pressedScale ?? this.pressedScale,
      hoveredScale: hoveredScale ?? this.hoveredScale,
      pressedOffset: pressedOffset ?? this.pressedOffset,
      restElevation: restElevation ?? this.restElevation,
      pressedElevation: pressedElevation ?? this.pressedElevation,
      hoverElevation: hoverElevation ?? this.hoverElevation,
      shadowColor: shadowColor ?? this.shadowColor,
      spring: spring ?? this.spring,
      springDescription: springDescription ?? this.springDescription,
      pressDuration: pressDuration ?? this.pressDuration,
      showFocusRing: showFocusRing ?? this.showFocusRing,
      focusRingColor: focusRingColor ?? this.focusRingColor,
      focusRingWidth: focusRingWidth ?? this.focusRingWidth,
      focusRingRadius: focusRingRadius ?? this.focusRingRadius,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      enableFeedback: enableFeedback ?? this.enableFeedback,
    );
  }

  /// This theme's set fields win; [other]'s fill in anything left null here.
  /// Used to layer a local theme over an enclosing one.
  DynamicTouchableThemeData merge(DynamicTouchableThemeData? other) {
    if (other == null) return this;
    // [spring] and [springDescription] are a single choice: if this theme sets
    // either, its spring wins as a unit, so [other]'s raw description can't
    // leak past a local preset (a raw description always beats a preset at
    // build time). Mirrors the widget-level resolution in DynamicTouchable.
    final ownsSpring = spring != null || springDescription != null;
    return DynamicTouchableThemeData(
      pressedScale: pressedScale ?? other.pressedScale,
      hoveredScale: hoveredScale ?? other.hoveredScale,
      pressedOffset: pressedOffset ?? other.pressedOffset,
      restElevation: restElevation ?? other.restElevation,
      pressedElevation: pressedElevation ?? other.pressedElevation,
      hoverElevation: hoverElevation ?? other.hoverElevation,
      shadowColor: shadowColor ?? other.shadowColor,
      spring: ownsSpring ? spring : other.spring,
      springDescription: ownsSpring
          ? springDescription
          : other.springDescription,
      pressDuration: pressDuration ?? other.pressDuration,
      showFocusRing: showFocusRing ?? other.showFocusRing,
      focusRingColor: focusRingColor ?? other.focusRingColor,
      focusRingWidth: focusRingWidth ?? other.focusRingWidth,
      focusRingRadius: focusRingRadius ?? other.focusRingRadius,
      mouseCursor: mouseCursor ?? other.mouseCursor,
      enableFeedback: enableFeedback ?? other.enableFeedback,
    );
  }

  @override
  bool operator ==(Object other) =>
      other is DynamicTouchableThemeData &&
      other.pressedScale == pressedScale &&
      other.hoveredScale == hoveredScale &&
      other.pressedOffset == pressedOffset &&
      other.restElevation == restElevation &&
      other.pressedElevation == pressedElevation &&
      other.hoverElevation == hoverElevation &&
      other.shadowColor == shadowColor &&
      other.spring == spring &&
      other.springDescription == springDescription &&
      other.pressDuration == pressDuration &&
      other.showFocusRing == showFocusRing &&
      other.focusRingColor == focusRingColor &&
      other.focusRingWidth == focusRingWidth &&
      other.focusRingRadius == focusRingRadius &&
      other.mouseCursor == mouseCursor &&
      other.enableFeedback == enableFeedback;

  @override
  int get hashCode => Object.hash(
    pressedScale,
    hoveredScale,
    pressedOffset,
    restElevation,
    pressedElevation,
    hoverElevation,
    shadowColor,
    spring,
    springDescription,
    pressDuration,
    showFocusRing,
    focusRingColor,
    focusRingWidth,
    focusRingRadius,
    mouseCursor,
    enableFeedback,
  );
}

/// Establishes the [DynamicTouchableThemeData] used by [DynamicTouchable]
/// descendants.
class DynamicTouchableTheme extends InheritedWidget {
  const DynamicTouchableTheme({
    super.key,
    required this.data,
    required super.child,
  });

  /// The defaults applied to descendant touchables.
  final DynamicTouchableThemeData data;

  /// The ambient theme, or an empty (all-default) one if none is in scope.
  static DynamicTouchableThemeData of(BuildContext context) {
    final theme = context
        .dependOnInheritedWidgetOfExactType<DynamicTouchableTheme>();
    return theme?.data ?? const DynamicTouchableThemeData();
  }

  /// Wraps [child] in a theme that layers [data] over any enclosing
  /// [DynamicTouchableTheme], so a subtree can override just a few fields while
  /// inheriting the rest.
  static Widget merge({
    Key? key,
    required DynamicTouchableThemeData data,
    required Widget child,
  }) {
    return Builder(
      builder: (context) => DynamicTouchableTheme(
        key: key,
        data: data.merge(DynamicTouchableTheme.of(context)),
        child: child,
      ),
    );
  }

  @override
  bool updateShouldNotify(DynamicTouchableTheme oldWidget) =>
      data != oldWidget.data;
}
