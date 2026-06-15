/// Lucide **stroke** icons plus the shared `dynamic_icons` engine.
///
/// Icons are namespaced under the [LucideIcons] class (like Flutter's `Icons`):
///
/// ```dart
/// import 'package:dynamic_icons/lucide.dart';
///
/// DynamicIcon(icon: LucideIcons.bell);
/// for (final e in lucideIcons) DynamicIcon(icon: e.data);
/// ```
///
/// For the crypto brand marks see `package:dynamic_icons/crypto.dart`; for both
/// families in one import see `package:dynamic_icons/dynamic_icons.dart`.
library;

// Shared engine.
export 'src/core/dynamic_icon.dart' show DynamicIcon, AnimationTrigger;
export 'src/core/dynamic_icon_controller.dart';
export 'src/core/dynamic_icon_painter.dart' show IconShape;
export 'src/core/icon_part.dart';
export 'src/core/part_animation.dart';
export 'src/core/spring_curve.dart';

// The `LucideIcons` namespace + the `lucideIcons` catalog (and entry types).
export 'src/icons/lucide_icons.dart';
export 'src/icons/icon_registry.dart';
