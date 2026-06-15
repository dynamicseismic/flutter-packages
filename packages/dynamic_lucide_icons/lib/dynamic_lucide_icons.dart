/// Beautifully animated, hover/tap-triggered Lucide icons for Flutter.
///
/// A faithful port of the React project [pqoqubbw/icons](https://github.com/pqoqubbw/icons).
///
/// ```dart
/// import 'package:dynamic_lucide_icons/dynamic_lucide_icons.dart';
///
/// AnimatedLucideIcon(icon: kBellIcon, size: 32);
/// ```
///
/// See [lucideAnimatedIcons] for the full catalog, and
/// [AnimatedLucideIconController] for driving animations programmatically.
library;

// Public engine API.
export 'src/core/animated_icon_controller.dart';
export 'src/core/animated_lucide_icon.dart'
    show AnimatedLucideIcon, AnimationTrigger;
export 'src/core/icon_part.dart';
export 'src/core/part_animation.dart';
export 'src/core/spring_curve.dart';

// Icon definitions.
export 'src/icons/combo_icons.dart';
export 'src/icons/draw_icons.dart';
export 'src/icons/icon_registry.dart';
export 'src/icons/rotate_icons.dart';
export 'src/icons/scale_icons.dart';
export 'src/icons/stagger_icons.dart';
export 'src/icons/translate_icons.dart';
