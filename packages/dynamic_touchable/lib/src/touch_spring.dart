import 'package:flutter/physics.dart';

/// The spring feel for a [DynamicTouchable]'s release (the spring-back after a
/// press lifts).
///
/// The press *in* is always a short, deliberate ease — it's the release that
/// carries the tactile personality. Pass one to `DynamicTouchable.spring`, or
/// override it entirely with `DynamicTouchable.springDescription`.
enum TouchSpring {
  /// Soft settle, almost no overshoot.
  gentle,

  /// Fast settle with a faint overshoot. The default.
  snappy,

  /// Pronounced springy overshoot past rest.
  bouncy,

  /// No spring — a brief ease back to rest. Also the path taken when the
  /// platform "reduce motion" accessibility setting is on.
  none,
}

/// The [SpringDescription] backing each [TouchSpring] preset.
///
/// `none` still returns a (heavily damped) description for callers that ask for
/// it directly; [DynamicTouchable] special-cases `none` to skip the simulation
/// entirely.
SpringDescription resolveTouchSpring(TouchSpring spring) {
  switch (spring) {
    case TouchSpring.gentle:
      return const SpringDescription(mass: 1, stiffness: 380, damping: 26);
    case TouchSpring.snappy:
      return const SpringDescription(mass: 1, stiffness: 520, damping: 22);
    case TouchSpring.bouncy:
      return const SpringDescription(mass: 1, stiffness: 600, damping: 14);
    case TouchSpring.none:
      return const SpringDescription(mass: 1, stiffness: 500, damping: 40);
  }
}
