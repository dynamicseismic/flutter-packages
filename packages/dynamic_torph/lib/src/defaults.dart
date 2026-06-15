import 'package:flutter/animation.dart';

import 'ease.dart';

/// Default option values, ported from `DEFAULT_TEXT_MORPH_OPTIONS`.

/// Default animation duration (used for cubic easing; springs compute their own).
const Duration kTorphDefaultDuration = Duration(milliseconds: 400);

/// Default easing — the source's `"cubic-bezier(0.19, 1, 0.22, 1)"`.
const DynamicTorphEase kTorphDefaultEase = DynamicTorphEase.cubic(Cubic(0.19, 1.0, 0.22, 1.0));

/// Whether entering/exiting segments scale (0.95 ↔ 1.0) while fading.
const bool kTorphDefaultScale = true;

/// Whether to skip animation when the platform requests reduced motion.
const bool kTorphDefaultRespectReducedMotion = true;

/// Whether to draw debug outlines around the container and each segment.
const bool kTorphDefaultDebug = false;
