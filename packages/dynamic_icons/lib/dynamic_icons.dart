/// Beautifully animated, hover/tap-triggered icons for Flutter — stroke-based
/// [Lucide](https://lucide.dev) glyphs and filled crypto / blockchain brand
/// marks, under one engine.
///
/// Everything is drawn with `CustomPainter` — no SVG assets, no runtime
/// dependencies. Icons play a tasteful micro-animation on **hover**
/// (web/desktop), **tap** (mobile), or under **programmatic control**.
///
/// Icons are namespaced under [Lucide] and [Crypto] (like Flutter's
/// `Icons`):
///
/// ```dart
/// import 'package:dynamic_icons/dynamic_icons.dart';
///
/// DynamicIcon(icon: Lucide.bell);                  // stroke glyph
/// DynamicIcon(icon: Crypto.ethereum, size: 44);    // filled brand chip
/// ```
///
/// Catalogs: [lucideIcons] (stroke set), [cryptoIcons] (brand marks), and
/// [dynamicIcons] (everything). Drive animations with a
/// [IconController].
///
/// To pull in just one family, import `package:dynamic_icons/lucide.dart` or
/// `package:dynamic_icons/crypto.dart` instead.
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

// Namespaces + catalogs.
export 'src/icons/lucide_icons.dart'; // Lucide
export 'src/icons/crypto_icons.dart' show Crypto, cryptoIcons;
export 'src/icons/icon_registry.dart'; // lucideIcons + entry types
export 'src/icons/catalog.dart'; // dynamicIcons
