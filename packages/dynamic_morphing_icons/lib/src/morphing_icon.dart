import 'package:flutter/widgets.dart';

import 'morph_icon.dart';
import 'morph_painter.dart';
import 'morphing_icon_theme.dart';

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

  /// Width and height in logical pixels. Null falls back to
  /// [DynamicMorphingIconTheme], the ambient [IconThemeData.size], then `24`.
  final double? size;

  /// Stroke colour. Null falls back to [DynamicMorphingIconTheme], the ambient
  /// [IconThemeData.color], then black.
  final Color? color;

  /// Stroke width in logical pixels. Null falls back to
  /// [DynamicMorphingIconTheme], then to `2`.
  final double? strokeWidth;

  /// How long a morph takes. Null falls back to [DynamicMorphingIconTheme],
  /// then to 450 ms.
  final Duration? duration;

  /// Easing applied to the morph. Null falls back to
  /// [DynamicMorphingIconTheme], then to `Curves.easeInOutCubic`.
  final Curve? curve;

  /// Optional description for screen readers.
  final String? semanticLabel;

  const DynamicMorphingIcon({
    super.key,
    required this.icon,
    this.size,
    this.color,
    this.strokeWidth,
    this.duration,
    this.curve,
    this.semanticLabel,
  });

  @override
  State<DynamicMorphingIcon> createState() => _MorphingIconState();
}

class _MorphingIconState extends State<DynamicMorphingIcon>
    with SingleTickerProviderStateMixin {
  static const _kDefaultSize = 24.0;
  static const _kDefaultStrokeWidth = 2.0;
  static const _kDefaultDuration = Duration(milliseconds: 450);
  static const _kDefaultCurve = Curves.easeInOutCubic;

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
    // The effective duration (widget → theme → default) is resolved and synced
    // to the controller in build; start with the built-in default until then.
    _controller = AnimationController(
      vsync: this,
      duration: _kDefaultDuration,
      value: 1,
    );
  }

  @override
  void didUpdateWidget(DynamicMorphingIcon old) {
    super.didUpdateWidget(old);
    if (widget.icon != old.icon) {
      // Start the new morph from whatever we were heading towards. (A morph
      // retriggered mid-flight restarts from `old.icon` rather than the exact
      // current frame — a deliberate v1 simplification.)
      _from = old.icon;
      _to = widget.icon;
      // Sync the resolved duration *before* starting, so a same-frame change to
      // `duration` (or the ambient theme) applies to this morph too — not just
      // the next one. build() keeps it synced for every other case.
      _controller.duration = _resolvedDuration(context);
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// The effective morph duration: the explicit [DynamicMorphingIcon.duration],
  /// else the ambient [DynamicMorphingIconTheme], else the built-in default.
  Duration _resolvedDuration(BuildContext context) =>
      widget.duration ??
      DynamicMorphingIconTheme.of(context).duration ??
      _kDefaultDuration;

  @override
  Widget build(BuildContext context) {
    final theme = DynamicMorphingIconTheme.of(context);
    final iconTheme = IconTheme.of(context);
    final size = widget.size ?? theme.size ?? iconTheme.size ?? _kDefaultSize;
    final color =
        widget.color ??
        theme.color ??
        iconTheme.color ??
        const Color(0xFF000000);
    final strokeWidth =
        widget.strokeWidth ?? theme.strokeWidth ?? _kDefaultStrokeWidth;
    final curve = widget.curve ?? theme.curve ?? _kDefaultCurve;

    // Keep the controller's duration synced for morphs started outside build;
    // didUpdateWidget re-syncs it again right before starting one.
    _controller.duration = _resolvedDuration(context);

    Widget child = RepaintBoundary(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return CustomPaint(
            size: Size.square(size),
            painter: DynamicMorphPainter(
              from: _from,
              to: _to,
              t: curve.transform(_controller.value),
              color: color,
              strokeWidth: strokeWidth,
            ),
          );
        },
      ),
    );

    if (widget.semanticLabel != null) {
      child = Semantics(label: widget.semanticLabel, image: true, child: child);
    }
    return SizedBox(width: size, height: size, child: child);
  }
}
