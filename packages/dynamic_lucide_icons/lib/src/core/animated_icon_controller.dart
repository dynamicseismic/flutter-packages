import 'animated_lucide_icon.dart';

/// Programmatic handle for an [DynamicAnimatedLucideIcon], mirroring the
/// `startAnimation` / `stopAnimation` ref API of pqoqubbw/icons.
///
/// Create one, pass it to an [DynamicAnimatedLucideIcon], then drive the animation
/// imperatively:
///
/// ```dart
/// final controller = DynamicAnimatedLucideIconController();
/// // ...
/// DynamicAnimatedLucideIcon(icon: kBellIcon, controller: controller);
/// // later:
/// controller.play();
/// ```
class DynamicAnimatedLucideIconController {
  DynamicAnimatedLucideIconState? _state;

  /// Whether this controller is currently bound to a mounted icon.
  bool get isAttached => _state != null;

  /// Used by [DynamicAnimatedLucideIcon] to bind/unbind. Not part of the public API.
  void attach(DynamicAnimatedLucideIconState state) => _state = state;
  void detach(DynamicAnimatedLucideIconState state) {
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
