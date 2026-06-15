import 'package:flutter/widgets.dart';

import 'defaults.dart';
import 'ease.dart';
import 'morph_engine.dart';
import 'segment.dart';

/// An animated text-morphing widget.
///
/// A faithful Flutter port of [torph](https://github.com/lochie/torph). When
/// [text] changes, shared characters glide from their old position to their new
/// one, newly-added characters emerge from their nearest surviving neighbour
/// (scaling up and fading in), departing characters drift toward their anchor
/// while fading out, and the box smoothly resizes — all driven by a single
/// [AnimationController] and a configurable [ease].
///
/// ```dart
/// DynamicTextMorph('Hello world')
/// DynamicTextMorph('Hello world', ease: DynamicTorphEase.spring(DynamicSpringParams(stiffness: 200, damping: 20)))
/// ```
class DynamicTextMorph extends StatefulWidget {
  const DynamicTextMorph(
    this.text, {
    super.key,
    this.style,
    this.duration = kTorphDefaultDuration,
    this.ease = kTorphDefaultEase,
    this.scale = kTorphDefaultScale,
    this.debug = kTorphDefaultDebug,
    this.disabled = false,
    this.respectReducedMotion = kTorphDefaultRespectReducedMotion,
    this.onAnimationStart,
    this.onAnimationComplete,
  });

  /// The text to display. Animates whenever it changes.
  final String text;

  /// Text style. Merged over the ambient [DefaultTextStyle].
  final TextStyle? style;

  /// Duration used for cubic easing. Ignored for springs, which compute their
  /// own settle time.
  final Duration duration;

  /// Easing: a [DynamicTorphEase.cubic] curve or [DynamicTorphEase.spring] physics.
  final DynamicTorphEase ease;

  /// Whether entering/exiting segments scale while fading.
  final bool scale;

  /// Draws debug outlines around the box and each segment.
  final bool debug;

  /// Disables all animation; renders plain text.
  final bool disabled;

  /// When true, honors the platform "reduce motion" accessibility setting.
  final bool respectReducedMotion;

  /// Called when a (non-initial) morph begins.
  final VoidCallback? onAnimationStart;

  /// Called when a morph settles.
  final VoidCallback? onAnimationComplete;

  @override
  State<DynamicTextMorph> createState() => _TextMorphState();
}

class _TextMorphState extends State<DynamicTextMorph>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late DynamicResolvedEase _ease;
  int? _easeKey;

  // Resolved rendering context, refreshed on every reconcile.
  TextStyle _style = const TextStyle();
  TextDirection _dir = TextDirection.ltr;
  TextScaler _scaler = TextScaler.noScaling;
  int? _layoutKey;
  bool _plain = false;

  // Current render set + last resting layout (the FLIP "previous" frame).
  List<MorphItem> _items = [];
  Map<String, Offset> _prevLayout = {};
  List<String> _prevIds = [];
  Map<String, String> _prevStrings = {};
  Size _sizeFrom = Size.zero;
  Size _sizeTo = Size.zero;

  bool _initialized = false;
  String _renderedText = '';

  double get _durationMs => _ease.duration.inMilliseconds.toDouble();

  @override
  void initState() {
    super.initState();
    _ease = widget.ease.resolve(widget.duration);
    _easeKey = Object.hash(widget.ease, widget.duration);
    _controller = AnimationController(vsync: this, duration: _ease.duration)
      ..addStatusListener(_onStatus);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _reconcile();
  }

  @override
  void didUpdateWidget(DynamicTextMorph oldWidget) {
    super.didUpdateWidget(oldWidget);
    _reconcile();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onStatus(AnimationStatus status) {
    if (status != AnimationStatus.completed) return;
    final hadExiting = _items.any((i) => i.role == MorphRole.exiting);
    if (hadExiting && mounted) {
      setState(() {
        _items = _items.where((i) => i.role != MorphRole.exiting).toList();
      });
    }
    widget.onAnimationComplete?.call();
  }

  /// Resolves context + props and decides whether to snap (re-layout) or morph.
  void _reconcile() {
    // Keep the resolved ease/controller duration in sync with props.
    final easeKey = Object.hash(widget.ease, widget.duration);
    if (easeKey != _easeKey) {
      _easeKey = easeKey;
      _ease = widget.ease.resolve(widget.duration);
      _controller.duration = _ease.duration;
    }

    _style = DefaultTextStyle.of(context).style.merge(widget.style);
    _dir = Directionality.maybeOf(context) ?? TextDirection.ltr;
    final media = MediaQuery.maybeOf(context);
    _scaler = media?.textScaler ?? TextScaler.noScaling;

    final reduceMotion =
        widget.respectReducedMotion && (media?.disableAnimations ?? false);
    _plain = widget.disabled || reduceMotion;
    if (_plain) {
      // Force a fresh snap if/when animation is re-enabled.
      _initialized = false;
      _renderedText = widget.text;
      return;
    }

    final layoutKey = Object.hash(_style, _dir, _scaler, widget.scale);

    if (!_initialized || layoutKey != _layoutKey) {
      _layoutKey = layoutKey;
      _initialized = true;
      _snapTo(widget.text);
    } else if (widget.text != _renderedText) {
      _startMorph(widget.text);
    }
  }

  // ---- Measurement -------------------------------------------------------

  double _measureWidth(String s) {
    if (s.isEmpty) return 0;
    final tp = TextPainter(
      text: TextSpan(text: s, style: _style),
      textDirection: _dir,
      textScaler: _scaler,
      maxLines: 1,
    )..layout();
    final w = tp.width;
    tp.dispose();
    return w;
  }

  double _measureHeight(String text) {
    final tp = TextPainter(
      text: TextSpan(text: text.isEmpty ? '​' : text, style: _style),
      textDirection: _dir,
      textScaler: _scaler,
      maxLines: 1,
    )..layout();
    final h = tp.height;
    tp.dispose();
    return h;
  }

  Map<String, double> _measureWidths(List<DynamicSegment> segs) =>
      {for (final s in segs) s.id: _measureWidth(s.string)};

  // ---- Layout transitions ------------------------------------------------

  void _snapTo(String text) {
    final segs = segmentText(text);
    final res = staticMorph(segs, _measureWidths(segs), _measureHeight(text));
    _items = res.items;
    _prevLayout = res.layout;
    _prevIds = res.ids;
    _prevStrings = {for (final s in segs) s.id: s.string};
    _sizeFrom = res.size;
    _sizeTo = res.size;
    _renderedText = text;
    _controller.value = 1; // settled, no animation
  }

  void _startMorph(String text) {
    final curved = _ease.curve.transform(_controller.value);
    final elapsedMs = _controller.value * _durationMs;

    // Capture live visual state so an interrupted morph continues smoothly.
    final carry = <String, MorphCarry>{};
    for (final item in _items) {
      final v = item.visualAt(curved, elapsedMs);
      carry[item.id] = MorphCarry(v.offset - item.base, v.opacity);
    }
    final currentSize = Size.lerp(_sizeFrom, _sizeTo, curved)!;

    final segs = segmentText(text);
    final res = computeMorph(
      segments: segs,
      widths: _measureWidths(segs),
      height: _measureHeight(text),
      prevLayout: _prevLayout,
      prevIds: _prevIds,
      prevStrings: _prevStrings,
      carry: carry,
      scaleEnabled: widget.scale,
      durationMs: _durationMs,
    );

    _items = res.items;
    _prevLayout = res.layout;
    _prevIds = res.ids;
    _prevStrings = {for (final s in segs) s.id: s.string};
    _sizeFrom = currentSize;
    _sizeTo = res.size;
    _renderedText = text;

    widget.onAnimationStart?.call();
    _controller.forward(from: 0);
  }

  // ---- Painting ----------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    if (_plain) {
      return Text(
        widget.text,
        style: widget.style,
        textDirection: _dir,
        softWrap: false,
        maxLines: 1,
      );
    }
    return AnimatedBuilder(animation: _controller, builder: (_, _) => _paint());
  }

  Widget _paint() {
    final v = _controller.value;
    final curved = _ease.curve.transform(v);
    final elapsedMs = v * _durationMs;
    final size = Size.lerp(_sizeFrom, _sizeTo, curved)!;

    final children = <Widget>[
      for (final item in _items) _buildChild(item, curved, elapsedMs),
    ];

    Widget box = SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(clipBehavior: Clip.none, children: children),
    );

    if (widget.debug) {
      box = DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFFF00FF), width: 2),
        ),
        child: box,
      );
    }
    return box;
  }

  Widget _buildChild(MorphItem item, double curved, double elapsedMs) {
    final vis = item.visualAt(curved, elapsedMs);
    Widget child = Text(
      item.string,
      style: _style,
      textDirection: _dir,
      textScaler: _scaler,
      softWrap: false,
      maxLines: 1,
    );
    if (widget.debug) {
      child = DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF00FFFF), width: 1),
        ),
        child: child,
      );
    }
    return Positioned(
      left: vis.offset.dx,
      top: vis.offset.dy,
      child: IgnorePointer(
        child: Opacity(
          opacity: vis.opacity,
          child: Transform.scale(scale: vis.scale, child: child),
        ),
      ),
    );
  }
}
