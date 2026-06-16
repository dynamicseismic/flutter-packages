/// A faithful Flutter port of [canvas-confetti](https://github.com/catdad/canvas-confetti)
/// — performant, dependency-free particle confetti drawn with `CustomPainter`.
///
/// The simplest path mirrors canvas-confetti's global `confetti()` — fire a
/// burst from anywhere you have a [BuildContext]:
///
/// ```dart
/// import 'package:dynamic_confetti/dynamic_confetti.dart';
///
/// DynamicConfetti.fire(context);
/// DynamicConfetti.fire(
///   context,
///   const DynamicConfettiOptions(particleCount: 120, spread: 70),
/// );
/// ```
///
/// For a placed or continuously-driven canvas, keep a
/// [DynamicConfettiController] and drop a [DynamicConfetti] widget over your
/// content:
///
/// ```dart
/// final confetti = DynamicConfettiController();
/// // in build:
/// Stack(children: [page, DynamicConfetti(controller: confetti)]);
/// // later:
/// confetti.fire(const DynamicConfettiOptions(spread: 90));
/// ```
///
/// Tune a burst with [DynamicConfettiOptions] (every knob and default matches
/// canvas-confetti) and pick particle [DynamicConfettiShape]s — `square`,
/// `circle`, `star`, or custom `path`/`text` (emoji) shapes.
library;

export 'src/confetti_controller.dart' show DynamicConfettiController;
export 'src/confetti_options.dart'
    show DynamicConfettiOptions, kDefaultConfettiColors, kDefaultConfettiShapes;
export 'src/confetti_shape.dart' show DynamicConfettiShape;
export 'src/confetti_widget.dart' show DynamicConfetti;
