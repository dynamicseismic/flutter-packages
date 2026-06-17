import 'package:flutter/widgets.dart';

import 'dynamic_icon.dart';
import 'dynamic_icon_painter.dart';

/// Ambient defaults for every [DynamicIcon] in a subtree — the `dynamic_icons`
/// analogue of Flutter's `IconTheme`.
///
/// Wrap your app (or any subtree) once instead of passing the same `trigger` /
/// `size` / `strokeWidth` … to every icon:
///
/// ```dart
/// DynamicIconTheme(
///   data: const DynamicIconThemeData(
///     trigger: AnimationTrigger.hover,
///     size: 32,
///     strokeWidth: 1.5,
///   ),
///   child: MyApp(),
/// )
/// ```
///
/// A field a [DynamicIcon] sets explicitly always wins; a field left null falls
/// back to the nearest [DynamicIconTheme], then to the built-in default.
class DynamicIconThemeData {
  const DynamicIconThemeData({
    this.trigger,
    this.size,
    this.color,
    this.strokeWidth,
    this.shape,
    this.cornerRadius,
    this.showBackground,
  });

  /// Default [DynamicIcon.trigger]. Built-in fallback: [AnimationTrigger.hoverAndTap].
  final AnimationTrigger? trigger;

  /// Default [DynamicIcon.size] in logical pixels. Built-in fallback: `28`.
  final double? size;

  /// Default [DynamicIcon.color]. Built-in fallback: the ambient
  /// `IconTheme` / `DefaultTextStyle` colour.
  final Color? color;

  /// Default [DynamicIcon.strokeWidth]. Built-in fallback: `2`.
  final double? strokeWidth;

  /// Default [DynamicIcon.shape] for the brand chip. Built-in fallback:
  /// [IconShape.roundedSquare].
  final IconShape? shape;

  /// Default [DynamicIcon.cornerRadius]. Built-in fallback: `size * 0.28`.
  final double? cornerRadius;

  /// Default [DynamicIcon.showBackground]. Built-in fallback: `true`.
  final bool? showBackground;

  /// A copy with the given fields replaced.
  DynamicIconThemeData copyWith({
    AnimationTrigger? trigger,
    double? size,
    Color? color,
    double? strokeWidth,
    IconShape? shape,
    double? cornerRadius,
    bool? showBackground,
  }) {
    return DynamicIconThemeData(
      trigger: trigger ?? this.trigger,
      size: size ?? this.size,
      color: color ?? this.color,
      strokeWidth: strokeWidth ?? this.strokeWidth,
      shape: shape ?? this.shape,
      cornerRadius: cornerRadius ?? this.cornerRadius,
      showBackground: showBackground ?? this.showBackground,
    );
  }

  /// This theme's set fields win; [other]'s fill in anything left null here.
  /// Used to layer a local theme over an enclosing one.
  DynamicIconThemeData merge(DynamicIconThemeData? other) {
    if (other == null) return this;
    return DynamicIconThemeData(
      trigger: trigger ?? other.trigger,
      size: size ?? other.size,
      color: color ?? other.color,
      strokeWidth: strokeWidth ?? other.strokeWidth,
      shape: shape ?? other.shape,
      cornerRadius: cornerRadius ?? other.cornerRadius,
      showBackground: showBackground ?? other.showBackground,
    );
  }

  @override
  bool operator ==(Object other) =>
      other is DynamicIconThemeData &&
      other.trigger == trigger &&
      other.size == size &&
      other.color == color &&
      other.strokeWidth == strokeWidth &&
      other.shape == shape &&
      other.cornerRadius == cornerRadius &&
      other.showBackground == showBackground;

  @override
  int get hashCode => Object.hash(
    trigger,
    size,
    color,
    strokeWidth,
    shape,
    cornerRadius,
    showBackground,
  );
}

/// Establishes the [DynamicIconThemeData] used by [DynamicIcon] descendants.
class DynamicIconTheme extends InheritedWidget {
  const DynamicIconTheme({super.key, required this.data, required super.child});

  /// The defaults applied to descendant [DynamicIcon]s.
  final DynamicIconThemeData data;

  /// The ambient theme, or an empty (all-default) one if none is in scope.
  static DynamicIconThemeData of(BuildContext context) {
    final theme = context
        .dependOnInheritedWidgetOfExactType<DynamicIconTheme>();
    return theme?.data ?? const DynamicIconThemeData();
  }

  /// Wraps [child] in a theme that layers [data] over any enclosing
  /// [DynamicIconTheme], so a subtree can override just a few fields while
  /// inheriting the rest.
  static Widget merge({
    Key? key,
    required DynamicIconThemeData data,
    required Widget child,
  }) {
    return Builder(
      builder: (context) => DynamicIconTheme(
        key: key,
        data: data.merge(DynamicIconTheme.of(context)),
        child: child,
      ),
    );
  }

  @override
  bool updateShouldNotify(DynamicIconTheme oldWidget) => data != oldWidget.data;
}
