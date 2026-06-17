/// Crypto / blockchain **brand** marks plus the shared `dynamic_icons` engine.
///
/// Icons are namespaced under the [Crypto] class (like Flutter's `Icons`):
///
/// ```dart
/// import 'package:dynamic_icons/crypto.dart';
///
/// DynamicIcon(icon: Crypto.ethereum, size: 44);
/// for (final e in cryptoIcons) DynamicIcon(icon: e.data);
/// ```
///
/// For the Lucide stroke set see `package:dynamic_icons/lucide.dart`; for both
/// families in one import see `package:dynamic_icons/dynamic_icons.dart`.
library;

// Shared engine.
export 'src/core/dynamic_icon.dart' show DynamicIcon, AnimationTrigger;
export 'src/core/dynamic_icon_theme.dart'
    show DynamicIconTheme, DynamicIconThemeData;
export 'src/core/dynamic_icon_controller.dart';
export 'src/core/dynamic_icon_painter.dart' show IconShape;
export 'src/core/icon_part.dart';
export 'src/core/part_animation.dart';
export 'src/core/spring_curve.dart';

// The `Crypto` namespace + the `cryptoIcons` catalog (and entry types).
export 'src/icons/icon_entry.dart';
export 'src/icons/crypto_icons.dart' show Crypto, cryptoIcons;
