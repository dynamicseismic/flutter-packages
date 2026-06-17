import 'dart:ui' show lerpDouble;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/services.dart';

import 'dynamic_touchable_theme.dart';
import 'touch_spring.dart';
import 'touch_state.dart';

/// Distance, in logical pixels, a pointer may drift after pressing before the
/// press is treated as a drag-out and cancelled.
const double _kPressSlop = kTouchSlop;

/// Default focus-ring accent when neither the widget nor the theme sets one.
const Color _kDefaultFocusRing = Color(0xFF3B82F6);

/// Wraps any [child] so it plays a tactile "sink / 下沉" effect on touch, hover,
/// and tap — like a physical button being pressed into the surface — springing
/// back on release.
///
/// ```dart
/// DynamicTouchable(onTap: _submit, child: MyCard());
/// MyCard().touchable(onTap: _submit);          // the .touchable() extension, same effect
/// ```
///
/// The effect works with no callbacks at all (a purely decorative press). Add
/// [onTap] / [onLongPress] and it becomes a fully accessible button: keyboard
/// activatable (Space/Enter), announced via `Semantics(button: true)`, with a
/// `click` cursor on hover.
///
/// Every visual/timing field falls back to [DynamicTouchableTheme] and then to
/// a built-in default — the resolution order is always
/// `explicit argument ?? theme ?? default`.
class DynamicTouchable extends StatefulWidget {
  const DynamicTouchable({
    super.key,
    required this.child,
    this.onTap,
    this.onLongPress,
    this.onPressed,
    this.onReleased,
    this.onPressChanged,
    this.enabled,
    this.pressedScale,
    this.hoveredScale,
    this.pressedOffset,
    this.restElevation,
    this.pressedElevation,
    this.hoverElevation,
    this.shadowColor,
    this.spring,
    this.springDescription,
    this.pressDuration,
    this.focusNode,
    this.autofocus = false,
    this.canRequestFocus,
    this.showFocusRing,
    this.focusRingColor,
    this.focusRingWidth,
    this.focusRingRadius,
    this.mouseCursor,
    this.semanticLabel,
    this.excludeSemantics = false,
    this.behavior = HitTestBehavior.opaque,
    this.enableFeedback,
    this.scaleAlignment = Alignment.center,
  });

  /// The widget made touchable.
  final Widget child;

  /// Called on a completed tap (pointer, Space/Enter, or assistive activation).
  /// Its presence makes this a button (semantics, cursor, keyboard focus).
  final VoidCallback? onTap;

  /// Called on a long press. Also makes this a button.
  final VoidCallback? onLongPress;

  /// Called the instant a press engages (pointer-down or Space-down). The
  /// decoupled hook for haptics — see the package README.
  final VoidCallback? onPressed;

  /// Called when a press is released while still inside (pointer-up within
  /// slop, or Space-up). Not called when the press is cancelled.
  final VoidCallback? onReleased;

  /// Called with the live pressed state whenever it flips.
  final ValueChanged<bool>? onPressChanged;

  /// Whether the touchable reacts. Null defaults to `true` (the effect plays
  /// even with no callbacks); pass `false` to fully disable it.
  final bool? enabled;

  /// Scale at full press. Null falls back to [DynamicTouchableTheme], then `0.96`.
  final double? pressedScale;

  /// Scale on hover (web/desktop). Null falls back to theme, then `1.0` (none).
  final double? hoveredScale;

  /// Downward translate at full press. Null falls back to theme, then
  /// `Offset(0, 1.5)`.
  final Offset? pressedOffset;

  /// Resting shadow elevation. `0` (the default) means no shadow is drawn at all.
  final double? restElevation;

  /// Shadow elevation at full press. Null falls back to theme, then `0`.
  final double? pressedElevation;

  /// Shadow elevation on hover. Null falls back to theme, then [restElevation].
  final double? hoverElevation;

  /// Shadow colour. Null falls back to theme, then `Color(0x33000000)`.
  final Color? shadowColor;

  /// Release spring preset. Null falls back to theme, then [TouchSpring.snappy].
  final TouchSpring? spring;

  /// Raw release spring; wins over [spring]. Null falls back to theme, then the
  /// preset's description.
  final SpringDescription? springDescription;

  /// Press-in tween duration. Null falls back to theme, then `90ms`.
  final Duration? pressDuration;

  /// An external focus node. When null an internal one is created and disposed.
  final FocusNode? focusNode;

  /// Whether to autofocus. Defaults to false.
  final bool autofocus;

  /// Whether this can take keyboard focus. Null defaults to "actionable" — i.e.
  /// it has an [onTap]/[onLongPress] and is enabled — so purely decorative
  /// touchables stay out of the focus traversal.
  final bool? canRequestFocus;

  /// Whether to paint a focus ring while focused. Null falls back to theme,
  /// then `true`.
  final bool? showFocusRing;

  /// Focus-ring colour. Null falls back to theme, then a blue accent.
  final Color? focusRingColor;

  /// Focus-ring stroke width. Null falls back to theme, then `2`.
  final double? focusRingWidth;

  /// Focus-ring corner radius. Null falls back to theme, then `8`.
  final double? focusRingRadius;

  /// Mouse cursor on hover. Null falls back to theme, then `click` when
  /// actionable else the inherited cursor.
  final MouseCursor? mouseCursor;

  /// Accessibility label. When set (or when actionable) the child is announced
  /// as a button.
  final String? semanticLabel;

  /// Whether to drop the child's own semantics (treat it as one opaque button).
  final bool excludeSemantics;

  /// Hit-test behaviour for the gesture layer.
  final HitTestBehavior behavior;

  /// Whether a completed tap/long-press plays the platform feedback
  /// (click sound + OS haptic) via `Feedback`. Null falls back to
  /// [DynamicTouchableTheme], then `true`. Independent of `dynamic_haptics`.
  final bool? enableFeedback;

  /// Alignment of the press scale. Defaults to [Alignment.center].
  final Alignment scaleAlignment;

  @override
  State<DynamicTouchable> createState() => _DynamicTouchableState();
}

class _DynamicTouchableState extends State<DynamicTouchable>
    with SingleTickerProviderStateMixin {
  /// Signed "depth" axis: `0` rest, `+1` fully pressed (sunk), `-1` hover lift.
  /// Unbounded so a bouncy spring can overshoot past either end.
  late final AnimationController _depth = AnimationController.unbounded(
    vsync: this,
  );

  FocusNode? _internalFocusNode;
  FocusNode get _focusNode =>
      widget.focusNode ?? (_internalFocusNode ??= FocusNode());

  bool _hovered = false;
  bool _focused = false;
  bool _pointerDown = false;
  bool _keyDown = false;

  int? _activePointer;
  Offset _downPosition = Offset.zero;
  bool _gestureValid = false;

  // Values resolved in build() that the input handlers need between frames.
  Duration _resPressDuration = const Duration(milliseconds: 90);
  TouchSpring _resSpring = TouchSpring.snappy;
  SpringDescription _resSpringDescription = resolveTouchSpring(
    TouchSpring.snappy,
  );
  bool _resHasHoverLift = false;
  bool _reduceMotion = false;
  bool _resEnableFeedback = true;

  bool get _enabled => widget.enabled ?? true;

  /// "Actionable" — exposes button semantics, a click cursor, and focusability.
  bool get _actionable =>
      _enabled && (widget.onTap != null || widget.onLongPress != null);

  bool get _pressed => _enabled && (_pointerDown || _keyDown);

  /// Where the depth settles when not pressed: the hover notch, or flat rest.
  double get _restDepth =>
      (_enabled && _hovered && _resHasHoverLift) ? -1.0 : 0.0;

  @override
  void initState() {
    super.initState();
    if (widget.focusNode == null) _internalFocusNode = FocusNode();
  }

  @override
  void didUpdateWidget(covariant DynamicTouchable oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.focusNode != widget.focusNode) {
      if (widget.focusNode != null) {
        _internalFocusNode?.dispose();
        _internalFocusNode = null;
      } else {
        _internalFocusNode ??= FocusNode();
      }
    }
    if (!_enabled && (_pointerDown || _keyDown || _depth.value != 0)) {
      _pointerDown = false;
      _keyDown = false;
      _activePointer = null;
      _gestureValid = false;
      _depth
        ..stop()
        ..value = 0;
    }
  }

  @override
  void dispose() {
    _depth.dispose();
    _internalFocusNode?.dispose();
    super.dispose();
  }

  // ---- Press lifecycle ---------------------------------------------------

  void _engage() {
    widget.onPressed?.call();
    if (_reduceMotion) {
      _depth.value = 1.0;
    } else {
      _depth.animateTo(1.0, duration: _resPressDuration, curve: Curves.easeOut);
    }
  }

  void _release() {
    final target = _restDepth;
    if (_reduceMotion) {
      _depth.value = target;
    } else if (_resSpring == TouchSpring.none) {
      _depth.animateTo(
        target,
        duration: const Duration(milliseconds: 140),
        curve: Curves.easeOut,
      );
    } else {
      _depth.animateWith(
        SpringSimulation(
          _resSpringDescription,
          _depth.value,
          target,
          _depth.velocity,
        ),
      );
    }
  }

  void _setPointerDown(bool value) {
    if (_pointerDown == value) return;
    final wasPressed = _pressed;
    setState(() => _pointerDown = value);
    _reconcilePress(wasPressed);
  }

  void _setKeyDown(bool value) {
    if (_keyDown == value) return;
    final wasPressed = _pressed;
    setState(() => _keyDown = value);
    _reconcilePress(wasPressed);
  }

  void _reconcilePress(bool wasPressed) {
    final nowPressed = _pressed;
    if (nowPressed == wasPressed) return;
    widget.onPressChanged?.call(nowPressed);
    if (nowPressed) {
      _engage();
    } else {
      _release();
    }
  }

  /// Primary activation — a tap, Space/Enter, or assistive "activate". Invokes
  /// [DynamicTouchable.onTap], falling back to [DynamicTouchable.onLongPress] so
  /// a long-press-only control is still keyboard- and assistive-activatable.
  void _activate() {
    if (!_enabled) return;
    final callback = widget.onTap ?? widget.onLongPress;
    if (callback == null) return;
    if (_resEnableFeedback) Feedback.forTap(context);
    callback();
  }

  void _fireLongPress() {
    if (!_enabled || widget.onLongPress == null) return;
    if (_resEnableFeedback) Feedback.forLongPress(context);
    widget.onLongPress!.call();
  }

  // ---- Pointer handlers (drive the visual; instant, arena-independent) ----

  void _onPointerDown(PointerDownEvent event) {
    if (!_enabled || _activePointer != null) return;
    if (event.kind == PointerDeviceKind.mouse &&
        event.buttons != kPrimaryButton) {
      return; // ignore non-primary mouse buttons
    }
    _activePointer = event.pointer;
    _downPosition = event.position;
    _gestureValid = true;
    _setPointerDown(true);
  }

  void _onPointerMove(PointerMoveEvent event) {
    if (event.pointer != _activePointer || !_gestureValid) return;
    if ((event.position - _downPosition).distance > _kPressSlop) {
      _gestureValid = false;
      _activePointer = null;
      _setPointerDown(false); // drag-out: release without firing onReleased
    }
  }

  void _onPointerUp(PointerUpEvent event) {
    if (event.pointer != _activePointer) return;
    final valid = _gestureValid;
    _activePointer = null;
    _gestureValid = false;
    if (_pointerDown) {
      _setPointerDown(false);
      if (valid) widget.onReleased?.call();
    }
  }

  void _onPointerCancel(PointerCancelEvent event) {
    if (event.pointer != _activePointer) return;
    _activePointer = null;
    _gestureValid = false;
    _setPointerDown(false);
  }

  /// The gesture arena's authoritative "this is no longer a tap" — fired when a
  /// parent Scrollable steals the gesture. Release the visual immediately.
  void _onTapCancel() {
    if (!_pointerDown) return;
    _gestureValid = false;
    _activePointer = null;
    _setPointerDown(false);
  }

  // ---- Hover --------------------------------------------------------------

  void _onHoverChange(bool hovered) {
    if (_hovered == hovered) return;
    setState(() => _hovered = hovered);
    if (_pressed) return; // press visual dominates; settle on release
    final target = _restDepth;
    if (_reduceMotion) {
      _depth.value = target;
    } else {
      _depth.animateTo(
        target,
        duration: const Duration(milliseconds: 160),
        curve: Curves.easeOut,
      );
    }
  }

  // ---- Keyboard -----------------------------------------------------------

  KeyEventResult _handleKeyEvent(FocusNode node, KeyEvent event) {
    if (!_actionable) return KeyEventResult.ignored;
    final key = event.logicalKey;
    if (event is KeyDownEvent) {
      if (key == LogicalKeyboardKey.enter ||
          key == LogicalKeyboardKey.numpadEnter) {
        _activate();
        return KeyEventResult.handled;
      }
      if (key == LogicalKeyboardKey.space && !_keyDown) {
        _setKeyDown(true);
        return KeyEventResult.handled;
      }
    } else if (event is KeyUpEvent && key == LogicalKeyboardKey.space) {
      if (_keyDown) {
        _setKeyDown(false);
        widget.onReleased?.call();
        _activate();
      }
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  // ---- Build --------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final theme = DynamicTouchableTheme.of(context);
    final enabled = _enabled;

    final pressedScale = widget.pressedScale ?? theme.pressedScale ?? 0.96;
    final hoveredScale = widget.hoveredScale ?? theme.hoveredScale ?? 1.0;
    final pressedOffset =
        widget.pressedOffset ?? theme.pressedOffset ?? const Offset(0, 1.5);
    final restElevation = widget.restElevation ?? theme.restElevation ?? 0.0;
    final pressedElevation =
        widget.pressedElevation ?? theme.pressedElevation ?? 0.0;
    final hoverElevation =
        widget.hoverElevation ?? theme.hoverElevation ?? restElevation;
    final shadowColor =
        widget.shadowColor ?? theme.shadowColor ?? const Color(0x33000000);
    final showFocusRing = widget.showFocusRing ?? theme.showFocusRing ?? true;
    final focusRingColor =
        widget.focusRingColor ?? theme.focusRingColor ?? _kDefaultFocusRing;
    final focusRingWidth = widget.focusRingWidth ?? theme.focusRingWidth ?? 2.0;
    final focusRingRadius =
        widget.focusRingRadius ?? theme.focusRingRadius ?? 8.0;

    // Cache values the input handlers read between frames.
    _resPressDuration =
        widget.pressDuration ??
        theme.pressDuration ??
        const Duration(milliseconds: 90);
    _resSpring = widget.spring ?? theme.spring ?? TouchSpring.snappy;
    _resSpringDescription =
        widget.springDescription ??
        theme.springDescription ??
        resolveTouchSpring(_resSpring);
    _resHasHoverLift = hoveredScale != 1.0 || hoverElevation != restElevation;
    _reduceMotion = MediaQuery.maybeOf(context)?.disableAnimations ?? false;
    _resEnableFeedback = widget.enableFeedback ?? theme.enableFeedback ?? true;

    final hasShadow =
        restElevation > 0 || pressedElevation > 0 || hoverElevation > 0;

    final cursor =
        widget.mouseCursor ??
        theme.mouseCursor ??
        (_actionable ? SystemMouseCursors.click : MouseCursor.defer);

    final state = TouchState(
      enabled: enabled,
      hovered: enabled && _hovered,
      pressed: _pressed,
      focused: enabled && _focused,
    );

    Widget content = AnimatedBuilder(
      animation: _depth,
      child: TouchStateScope(
        state: state,
        child: RepaintBoundary(child: widget.child),
      ),
      builder: (context, child) {
        final d = _depth.value;
        final sink = d.clamp(0.0, double.infinity);
        final lift = (-d).clamp(0.0, double.infinity);
        final scale = d >= 0
            ? lerpDouble(1.0, pressedScale, sink)!
            : lerpDouble(1.0, hoveredScale, lift)!;
        final offset = Offset.lerp(Offset.zero, pressedOffset, sink)!;

        Widget c = child!;
        if (hasShadow) {
          final elevation = d >= 0
              ? lerpDouble(restElevation, pressedElevation, sink)!
              : lerpDouble(restElevation, hoverElevation, lift)!;
          c = _shadowed(c, elevation, shadowColor);
        }
        if (offset != Offset.zero) {
          c = Transform.translate(offset: offset, child: c);
        }
        return Transform.scale(
          scale: scale,
          alignment: widget.scaleAlignment,
          child: c,
        );
      },
    );

    // Focus ring sits outside the transform so it doesn't scale with the sink.
    if (showFocusRing) {
      content = _FocusRing(
        show: enabled && _focused,
        color: focusRingColor,
        width: focusRingWidth,
        radius: focusRingRadius,
        child: content,
      );
    }

    content = GestureDetector(
      behavior: widget.behavior,
      onTap: enabled && (widget.onTap != null) ? _activate : null,
      onLongPress: enabled && (widget.onLongPress != null)
          ? _fireLongPress
          : null,
      child: content,
    );

    content = Listener(
      onPointerDown: enabled ? _onPointerDown : null,
      onPointerMove: enabled ? _onPointerMove : null,
      onPointerUp: enabled ? _onPointerUp : null,
      onPointerCancel: enabled ? _onPointerCancel : null,
      child: content,
    );

    content = MouseRegion(
      cursor: cursor,
      onEnter: enabled ? (_) => _onHoverChange(true) : null,
      onExit: enabled ? (_) => _onHoverChange(false) : null,
      child: content,
    );

    content = Focus(
      focusNode: _focusNode,
      autofocus: widget.autofocus,
      canRequestFocus: widget.canRequestFocus ?? _actionable,
      onKeyEvent: _handleKeyEvent,
      onFocusChange: (f) {
        setState(() => _focused = f);
        // Losing focus mid-press (route change, dialog, programmatic unfocus)
        // must release a held Space as well as any pointer press.
        if (!f) {
          if (_keyDown) _setKeyDown(false);
          _onTapCancel();
        }
      },
      child: content,
    );

    return Semantics(
      enabled: enabled,
      button: _actionable,
      label: widget.semanticLabel,
      excludeSemantics: widget.excludeSemantics,
      onTap: _actionable ? _activate : null,
      onLongPress: _actionable && widget.onLongPress != null
          ? _fireLongPress
          : null,
      child: content,
    );
  }

  Widget _shadowed(Widget child, double elevation, Color color) {
    if (elevation <= 0) return child;
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: elevation * 2.0,
            spreadRadius: elevation * 0.1,
            offset: Offset(0, elevation * 0.5),
          ),
        ],
      ),
      child: child,
    );
  }
}

/// A non-layout-affecting focus outline drawn on top of [child].
class _FocusRing extends StatelessWidget {
  const _FocusRing({
    required this.show,
    required this.color,
    required this.width,
    required this.radius,
    required this.child,
  });

  final bool show;
  final Color color;
  final double width;
  final double radius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!show) return child;
    return DecoratedBox(
      position: DecorationPosition.foreground,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: color, width: width),
      ),
      child: child,
    );
  }
}
