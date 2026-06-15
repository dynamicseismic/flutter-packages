import 'package:flutter/animation.dart';
import 'package:flutter/physics.dart';

/// A [Curve] that follows an under/critically-damped spring, matching the
/// `transition: { type: "spring", stiffness, damping, mass }` springs used by
/// Motion in pqoqubbw/icons.
///
/// The constructor is `const` (so icon definitions stay `const`); the actual
/// simulation is computed lazily and memoised by spring parameters. The spring
/// is simulated once over its natural settling time and remapped to the
/// `[0, 1]` curve domain. Overshoot above 1.0 is preserved — that bounce is the
/// point of a spring.
class SpringCurve extends Curve {
  const SpringCurve({this.stiffness = 100, this.damping = 10, this.mass = 1});

  final double stiffness;
  final double damping;
  final double mass;

  static final Map<String, _Spring> _cache = <String, _Spring>{};

  _Spring get _spring => _cache.putIfAbsent(
    '$mass/$stiffness/$damping',
    () => _Spring(mass, stiffness, damping),
  );

  @override
  double transformInternal(double t) => _spring.value(t);
}

/// Memoised spring simulation plus its settling time.
class _Spring {
  _Spring(double mass, double stiffness, double damping)
    : _sim = SpringSimulation(
        SpringDescription(mass: mass, stiffness: stiffness, damping: damping),
        0,
        1,
        0,
      ),
      _settleTime = _computeSettleTime(mass, stiffness, damping);

  final SpringSimulation _sim;
  final double _settleTime;

  double value(double t) => _sim.x(t * _settleTime);

  static double _computeSettleTime(
    double mass,
    double stiffness,
    double damping,
  ) {
    final sim = SpringSimulation(
      SpringDescription(mass: mass, stiffness: stiffness, damping: damping),
      0,
      1,
      0,
    );
    var t = 0.0;
    const step = 1 / 240; // 240 Hz sampling
    const maxTime = 10.0;
    while (t < maxTime && !sim.isDone(t)) {
      t += step;
    }
    return t <= 0 ? step : t;
  }
}
