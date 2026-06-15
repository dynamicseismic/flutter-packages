/// Torph for Flutter — dependency-free animated text morphing.
///
/// A faithful port of [torph](https://github.com/lochie/torph). The main entry
/// point is the [TextMorph] widget; springs are configured via [SpringParams]
/// and [TorphEase.spring].
library;

export 'src/defaults.dart';
export 'src/ease.dart' show TorphEase, CubicEase, SpringEase, ResolvedEase;
export 'src/segment.dart' show Segment, segmentText, kNbsp;
export 'src/spring.dart'
    show SpringParams, SpringResult, SampledSpringCurve, resolveSpring;
export 'src/text_morph.dart' show TextMorph;
