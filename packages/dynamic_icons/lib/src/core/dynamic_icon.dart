import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'dynamic_icon_controller.dart';
import 'dynamic_icon_painter.dart';
import 'icon_part.dart';

/// What makes a [DynamicIcon] play its animation.
enum AnimationTrigger {
  /// Play on pointer hover (web/desktop). Reverses to rest on exit.
  hover,

  /// Play a one-shot on tap/press (forward, then settle back).
  tap,

  /// Both [hover] and [tap]. The default — feels right on every platform.
  hoverAndTap,

  /// No built-in trigger; drive it via a [IconController].
  none,
}

/// An animated icon — a stroke-based Lucide glyph or a filled brand mark.
///
/// Renders [icon] and plays its micro-animation on hover (web/desktop), tap
/// (mobile), or under programmatic control via [controller]. Everything is
/// drawn with `CustomPainter` — no SVG assets, no runtime dependencies.
///
/// ```dart
/// DynamicIcon(icon: kBellIcon)               // stroke glyph
/// DynamicIcon(icon: kEthereumIcon, size: 44) // filled brand chip
/// ```
class DynamicIcon extends StatefulWidget {
  const DynamicIcon({
    super.key,
    required this.icon,
    this.size = 28,
    this.color,
    this.strokeWidth = 2,
    this.shape = IconShape.roundedSquare,
    this.cornerRadius,
    this.showBackground = true,
    this.controller,
    this.trigger = AnimationTrigger.hoverAndTap,
    this.loop = false,
    this.semanticLabel,
  });

  /// The icon definition (e.g. `kBellIcon`, `kEthereumIcon`).
  final DynamicIconData icon;

  /// Edge length in logical pixels.
  final double size;

  /// Ambient colour for parts without an explicit colour — `currentColor` for
  /// stroke glyphs. Defaults to the ambient `IconTheme`/`DefaultTextStyle`.
  final Color? color;

  /// Stroke width in logical pixels for stroke-style parts (Lucide's is 2).
  final double strokeWidth;

  /// Shape of the brand background chip (only drawn when the icon declares a
  /// [DynamicIconData.backgroundColor]).
  final IconShape shape;

  /// Corner radius for [IconShape.roundedSquare], in logical pixels.
  /// Defaults to `size * 0.28` (a soft app-icon squircle look).
  final double? cornerRadius;

  /// Whether to paint the brand background. Ignored when the icon has no
  /// [DynamicIconData.backgroundColor].
  final bool showBackground;

  /// Optional handle for driving the animation imperatively.
  final IconController? controller;

  /// What triggers the animation.
  final AnimationTrigger trigger;

  /// Whether to loop the animation continuously (e.g. a spinner).
  final bool loop;

  /// Accessibility label.
  final String? semanticLabel;

  @override
  State<DynamicIcon> createState() => IconState();
}

class IconState extends State<DynamicIcon> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  /// True when the icon's visible rest state is the END of its timeline
  /// (draw-on / wipe-on / fade-in icons), so it must idle at `t = 1`.
  bool _restAtEnd = false;

  /// The controller value the icon settles to when idle.
  double get _restValue => _restAtEnd ? 1.0 : 0.0;

  @override
  void initState() {
    super.initState();
    _restAtEnd = widget.icon.restsAtEnd;
    _controller = AnimationController(
      vsync: this,
      duration: widget.icon.duration,
    );
    widget.controller?.attach(this);
    if (widget.loop) {
      _controller.repeat();
    } else {
      _controller.value = _restValue;
    }
  }

  @override
  void didUpdateWidget(DynamicIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller?.detach(this);
      widget.controller?.attach(this);
    }
    if (oldWidget.icon.duration != widget.icon.duration) {
      _controller.duration = widget.icon.duration;
    }
    if (!identical(oldWidget.icon, widget.icon)) {
      _restAtEnd = widget.icon.restsAtEnd;
      if (!widget.loop) _controller.value = _restValue;
    }
    if (oldWidget.loop != widget.loop) {
      if (widget.loop) {
        _controller.repeat();
      } else {
        _controller.stop();
        _controller.animateTo(_restValue);
      }
    }
  }

  @override
  void dispose() {
    widget.controller?.detach(this);
    _controller.dispose();
    super.dispose();
  }

  // ---- Imperative API used by IconController ----

  /// Plays the icon's effect. Draw-on/wipe-on/fade-in icons replay from empty
  /// (t=0) and end fully visible (t=1); others play forward from rest.
  void playForward() =>
      _restAtEnd ? _controller.forward(from: 0) : _controller.forward();

  /// Returns the icon to its visible rest state.
  void playReverse() =>
      _restAtEnd ? _controller.animateTo(1.0) : _controller.reverse();

  void resetToStart() => _controller.value = _restValue;
  void stopHere() => _controller.stop();
  void startLoop() => _controller.repeat();

  // ---- Trigger handlers ----

  bool get _hoverEnabled =>
      widget.trigger == AnimationTrigger.hover ||
      widget.trigger == AnimationTrigger.hoverAndTap;

  bool get _tapEnabled =>
      widget.trigger == AnimationTrigger.tap ||
      widget.trigger == AnimationTrigger.hoverAndTap;

  /// True when the animation should loop while the icon is active, either
  /// because the caller forced [DynamicIcon.loop] or the icon itself is
  /// defined as repeating (spinners, pulsing indicators).
  bool get _loops => widget.loop || widget.icon.repeats;

  void _onEnter(PointerEnterEvent _) {
    if (widget.loop) return; // already looping from initState
    if (_loops) {
      _controller.repeat();
    } else {
      playForward();
    }
  }

  void _onExit(PointerExitEvent _) {
    if (widget.loop) return;
    if (_loops) {
      _controller.stop();
      _controller.animateTo(
        _restValue,
        duration: const Duration(milliseconds: 200),
      );
    } else {
      playReverse();
    }
  }

  Future<void> _onTap() async {
    if (widget.loop) return;
    if (_loops) {
      // One full loop on tap, then settle back to rest.
      _controller.value = 0;
      await _controller.forward();
      if (mounted) _controller.value = _restValue;
      return;
    }
    if (_restAtEnd) {
      // Replay the appearance from empty; ends fully visible.
      await _controller.forward(from: 0);
      return;
    }
    await _controller.forward();
    if (mounted) _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    final color =
        widget.color ??
        IconTheme.of(context).color ??
        DefaultTextStyle.of(context).style.color ??
        const Color(0xFF000000);
    final radius = widget.cornerRadius ?? widget.size * 0.28;

    Widget child = RepaintBoundary(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) => CustomPaint(
          size: Size.square(widget.size),
          painter: IconPainter(
            data: widget.icon,
            t: _controller.value,
            color: color,
            strokeWidth: widget.strokeWidth,
            shape: widget.shape,
            cornerRadius: radius,
            showBackground: widget.showBackground,
          ),
        ),
      ),
    );

    if (_tapEnabled) {
      child = GestureDetector(
        onTap: _onTap,
        behavior: HitTestBehavior.opaque,
        child: child,
      );
    }

    if (_hoverEnabled) {
      child = MouseRegion(
        onEnter: _onEnter,
        onExit: _onExit,
        cursor: SystemMouseCursors.basic,
        child: child,
      );
    }

    if (widget.semanticLabel != null) {
      child = Semantics(label: widget.semanticLabel, image: true, child: child);
    }
    return child;
  }
}
