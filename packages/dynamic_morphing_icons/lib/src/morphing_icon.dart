import 'package:flutter/widgets.dart';

import 'morph_icon.dart';
import 'morph_painter.dart';

/// An icon that animates — *morphs* — from its previous shape into a new one
/// whenever its [icon] changes.
///
/// Every icon is three line segments, so any icon can transform into any other:
/// the lines slide, rotate, and grow/shrink rather than crossfading. Change the
/// [icon] property (e.g. in `setState`) and the transition runs automatically.
///
/// ```dart
/// DynamicMorphingIcon(
///   icon: _open ? DynamicMorphIcons.cross : DynamicMorphIcons.menu,
///   size: 32,
///   color: Theme.of(context).colorScheme.onSurface,
/// )
/// ```
///
/// Behaves like a normal [Icon]: when [size] or [color] are omitted it inherits
/// from the ambient [IconTheme].
class DynamicMorphingIcon extends StatefulWidget {
  /// The icon to display. Changing it animates from the previously shown icon.
  final DynamicMorphIcon icon;

  /// Width and height in logical pixels. Defaults to the ambient
  /// [IconThemeData.size], then `24`.
  final double? size;

  /// Stroke colour. Defaults to the ambient [IconThemeData.color], then black.
  final Color? color;

  /// Stroke width in logical pixels.
  final double strokeWidth;

  /// How long a morph takes.
  final Duration duration;

  /// Easing applied to the morph.
  final Curve curve;

  /// Optional description for screen readers.
  final String? semanticLabel;

  const DynamicMorphingIcon({
    super.key,
    required this.icon,
    this.size,
    this.color,
    this.strokeWidth = 2.0,
    this.duration = const Duration(milliseconds: 450),
    this.curve = Curves.easeInOutCubic,
    this.semanticLabel,
  });

  @override
  State<DynamicMorphingIcon> createState() => _MorphingIconState();
}

class _MorphingIconState extends State<DynamicMorphingIcon>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  /// The shape the current morph starts from.
  late DynamicMorphIcon _from;

  /// The shape the current morph ends on — always the latest [widget.icon].
  late DynamicMorphIcon _to;

  @override
  void initState() {
    super.initState();
    _from = widget.icon;
    _to = widget.icon;
    // value: 1 == "fully showing `_to`", so the first frame is the icon at rest.
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
      value: 1,
    );
  }

  @override
  void didUpdateWidget(DynamicMorphingIcon old) {
    super.didUpdateWidget(old);
    if (widget.duration != old.duration) {
      _controller.duration = widget.duration;
    }
    if (widget.icon != old.icon) {
      // Start the new morph from whatever we were heading towards. (A morph
      // retriggered mid-flight restarts from `old.icon` rather than the exact
      // current frame — a deliberate v1 simplification.)
      _from = old.icon;
      _to = widget.icon;
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final iconTheme = IconTheme.of(context);
    final size = widget.size ?? iconTheme.size ?? 24.0;
    final color = widget.color ?? iconTheme.color ?? const Color(0xFF000000);

    Widget child = RepaintBoundary(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return CustomPaint(
            size: Size.square(size),
            painter: DynamicMorphPainter(
              from: _from,
              to: _to,
              t: widget.curve.transform(_controller.value),
              color: color,
              strokeWidth: widget.strokeWidth,
            ),
          );
        },
      ),
    );

    if (widget.semanticLabel != null) {
      child = Semantics(
        label: widget.semanticLabel,
        image: true,
        child: child,
      );
    }
    return SizedBox(width: size, height: size, child: child);
  }
}
