/// Torph for Flutter — dependency-free animated text morphing.
///
/// A faithful port of [torph](https://github.com/lochie/torph). The main entry
/// point is the [DynamicTextMorph] widget; springs are configured via [DynamicSpringParams]
/// and [DynamicTorphEase.spring].
library;

export 'src/defaults.dart';
export 'src/ease.dart' show DynamicTorphEase, DynamicCubicEase, DynamicSpringEase, DynamicResolvedEase;
export 'src/segment.dart' show DynamicSegment, segmentText, kNbsp;
export 'src/spring.dart'
    show DynamicSpringParams, DynamicSpringResult, DynamicSampledSpringCurve, resolveSpring;
export 'src/text_morph.dart' show DynamicTextMorph;
