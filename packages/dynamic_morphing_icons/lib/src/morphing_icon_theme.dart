import 'package:flutter/widgets.dart';

import 'morphing_icon.dart';

/// Ambient defaults for every [DynamicMorphingIcon] in a subtree — the
/// `dynamic_morphing_icons` analogue of Flutter's `IconTheme`.
///
/// Wrap your app (or any subtree) once instead of passing the same `size` /
/// `color` / `duration` … to every icon:
///
/// ```dart
/// DynamicMorphingIconTheme(
///   data: const DynamicMorphingIconThemeData(
///     size: 32,
///     strokeWidth: 1.5,
///     duration: Duration(milliseconds: 300),
///   ),
///   child: MyApp(),
/// )
/// ```
///
/// A field a [DynamicMorphingIcon] sets explicitly always wins; a field left
/// null falls back to the nearest [DynamicMorphingIconTheme], then (for `size`
/// and `color`) the ambient `IconTheme`, then the built-in default.
class DynamicMorphingIconThemeData {
  const DynamicMorphingIconThemeData({
    this.size,
    this.color,
    this.strokeWidth,
    this.duration,
    this.curve,
  });

  /// Default [DynamicMorphingIcon.size]. Built-in fallback: the ambient
  /// `IconTheme`, then `24`.
  final double? size;

  /// Default [DynamicMorphingIcon.color]. Built-in fallback: the ambient
  /// `IconTheme`, then black.
  final Color? color;

  /// Default [DynamicMorphingIcon.strokeWidth]. Built-in fallback: `2`.
  final double? strokeWidth;

  /// Default [DynamicMorphingIcon.duration]. Built-in fallback: 450 ms.
  final Duration? duration;

  /// Default [DynamicMorphingIcon.curve]. Built-in fallback:
  /// `Curves.easeInOutCubic`.
  final Curve? curve;

  /// A copy with the given fields replaced.
  DynamicMorphingIconThemeData copyWith({
    double? size,
    Color? color,
    double? strokeWidth,
    Duration? duration,
    Curve? curve,
  }) {
    return DynamicMorphingIconThemeData(
      size: size ?? this.size,
      color: color ?? this.color,
      strokeWidth: strokeWidth ?? this.strokeWidth,
      duration: duration ?? this.duration,
      curve: curve ?? this.curve,
    );
  }

  /// This theme's set fields win; [other]'s fill in anything left null here.
  /// Used to layer a local theme over an enclosing one.
  DynamicMorphingIconThemeData merge(DynamicMorphingIconThemeData? other) {
    if (other == null) return this;
    return DynamicMorphingIconThemeData(
      size: size ?? other.size,
      color: color ?? other.color,
      strokeWidth: strokeWidth ?? other.strokeWidth,
      duration: duration ?? other.duration,
      curve: curve ?? other.curve,
    );
  }

  @override
  bool operator ==(Object other) =>
      other is DynamicMorphingIconThemeData &&
      other.size == size &&
      other.color == color &&
      other.strokeWidth == strokeWidth &&
      other.duration == duration &&
      other.curve == curve;

  @override
  int get hashCode => Object.hash(size, color, strokeWidth, duration, curve);
}

/// Establishes the [DynamicMorphingIconThemeData] used by descendant
/// [DynamicMorphingIcon]s.
class DynamicMorphingIconTheme extends InheritedWidget {
  const DynamicMorphingIconTheme({
    super.key,
    required this.data,
    required super.child,
  });

  /// The defaults applied to descendant [DynamicMorphingIcon]s.
  final DynamicMorphingIconThemeData data;

  /// The ambient theme, or an empty (all-default) one if none is in scope.
  static DynamicMorphingIconThemeData of(BuildContext context) {
    final theme = context
        .dependOnInheritedWidgetOfExactType<DynamicMorphingIconTheme>();
    return theme?.data ?? const DynamicMorphingIconThemeData();
  }

  /// Wraps [child] in a theme that layers [data] over any enclosing
  /// [DynamicMorphingIconTheme], so a subtree can override just a few fields
  /// while inheriting the rest.
  static Widget merge({
    Key? key,
    required DynamicMorphingIconThemeData data,
    required Widget child,
  }) {
    return Builder(
      builder: (context) => DynamicMorphingIconTheme(
        key: key,
        data: data.merge(DynamicMorphingIconTheme.of(context)),
        child: child,
      ),
    );
  }

  @override
  bool updateShouldNotify(DynamicMorphingIconTheme oldWidget) =>
      data != oldWidget.data;
}
