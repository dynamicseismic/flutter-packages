import 'animated_lucide_icon.dart';

/// Programmatic handle for an [AnimatedLucideIcon], mirroring the
/// `startAnimation` / `stopAnimation` ref API of pqoqubbw/icons.
///
/// Create one, pass it to an [AnimatedLucideIcon], then drive the animation
/// imperatively:
///
/// ```dart
/// final controller = AnimatedLucideIconController();
/// // ...
/// AnimatedLucideIcon(icon: kBellIcon, controller: controller);
/// // later:
/// controller.play();
/// ```
class AnimatedLucideIconController {
  AnimatedLucideIconState? _state;

  /// Whether this controller is currently bound to a mounted icon.
  bool get isAttached => _state != null;

  /// Used by [AnimatedLucideIcon] to bind/unbind. Not part of the public API.
  void attach(AnimatedLucideIconState state) => _state = state;
  void detach(AnimatedLucideIconState state) {
    if (identical(_state, state)) _state = null;
  }

  /// Plays the animation forward from its current position (start → end).
  void play() => _state?.playForward();

  /// Plays the animation back to its resting state.
  void reverse() => _state?.playReverse();

  /// Jumps instantly to the resting state.
  void reset() => _state?.resetToStart();

  /// Stops the animation wherever it currently is.
  void stop() => _state?.stopHere();

  /// Repeats the animation continuously until stopped.
  void loop() => _state?.startLoop();
}
