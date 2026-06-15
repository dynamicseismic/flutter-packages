/// Icons that morph into one another.
///
/// Every icon is built from exactly three line segments, with unused lines
/// collapsed to an invisible point. Because all icons share that structure, any
/// icon can transform into any other — the lines slide, rotate, and grow rather
/// than crossfading.
///
/// See [MorphingIcon] for the widget and [MorphIcons] for the built-in set.
///
/// Technique adapted from <https://benji.org/morphing-icons-with-claude>.
library;

export 'src/morph_icon.dart';
export 'src/morph_icons.dart';
export 'src/morph_painter.dart';
export 'src/morphing_icon.dart';
