import 'dart:async';
import 'dart:math';

import 'package:dynamic_confetti/dynamic_confetti.dart';
import 'package:flutter/material.dart';

/// Demonstrates [DynamicConfetti]: tap-to-spray plus the classic
/// canvas-confetti recipes — realistic, stars, emoji, fireworks, snow and
/// school-pride cannons — driven through a [DynamicConfettiController].
class ConfettiDemo extends StatefulWidget {
  const ConfettiDemo({super.key});

  @override
  State<ConfettiDemo> createState() => _ConfettiDemoState();
}

class _ConfettiDemoState extends State<ConfettiDemo> {
  final DynamicConfettiController _confetti = DynamicConfettiController();
  final Random _rng = Random();

  Timer? _fireworks;
  Timer? _snow;
  Timer? _pride;

  @override
  void dispose() {
    _fireworks?.cancel();
    _snow?.cancel();
    _pride?.cancel();
    _confetti.dispose();
    super.dispose();
  }

  double _range(double min, double max) =>
      _rng.nextDouble() * (max - min) + min;

  // Spray from wherever the user tapped, relative to the demo body.
  void _fireAt(Offset local, Size size) {
    if (size.isEmpty) return;
    _confetti.fire(
      DynamicConfettiOptions(
        particleCount: 30,
        spread: 70,
        startVelocity: 35,
        origin: Offset(local.dx / size.width, local.dy / size.height),
      ),
    );
  }

  // The fire-from-anywhere one-liner — covers the whole screen, no controller.
  void _basic() => DynamicConfetti.fire(context);

  void _realistic() {
    void burst(double ratio, DynamicConfettiOptions options) {
      _confetti.fire(options.copyWith(particleCount: (200 * ratio).floor()));
    }

    const base = DynamicConfettiOptions(origin: Offset(0.5, 0.7));
    burst(0.25, base.copyWith(spread: 26, startVelocity: 55));
    burst(0.20, base.copyWith(spread: 60));
    burst(0.35, base.copyWith(spread: 100, decay: 0.91, scalar: 0.8));
    burst(
      0.10,
      base.copyWith(spread: 120, startVelocity: 25, decay: 0.92, scalar: 1.2),
    );
    burst(0.10, base.copyWith(spread: 120, startVelocity: 45));
  }

  void _stars() {
    const options = DynamicConfettiOptions(
      shapes: [DynamicConfettiShape.star],
      colors: [Color(0xFFFFD700), Color(0xFFFFA500), Color(0xFFFF8C00)],
      origin: Offset(0.5, 0.6),
    );
    _confetti.fire(
      options.copyWith(
        particleCount: 40,
        scalar: 1.2,
        spread: 70,
        startVelocity: 30,
      ),
    );
    _confetti.fire(
      options.copyWith(
        particleCount: 10,
        scalar: 0.75,
        spread: 120,
        startVelocity: 25,
      ),
    );
  }

  void _emoji() {
    _confetti.fire(
      DynamicConfettiOptions(
        particleCount: 30,
        spread: 100,
        startVelocity: 35,
        scalar: 2.4,
        origin: const Offset(0.5, 0.6),
        shapes: [
          DynamicConfettiShape.text('🎉'),
          DynamicConfettiShape.text('✨'),
          DynamicConfettiShape.text('🎊'),
          DynamicConfettiShape.text('💫'),
        ],
      ),
    );
  }

  void _toggleFireworks() {
    if (_fireworks != null) {
      _fireworks!.cancel();
      setState(() => _fireworks = null);
      return;
    }
    setState(() {
      _fireworks = Timer.periodic(const Duration(milliseconds: 250), (_) {
        const shared = DynamicConfettiOptions(
          particleCount: 40,
          startVelocity: 30,
          spread: 360,
          ticks: 60,
        );
        _confetti.fire(
          shared.copyWith(origin: Offset(_range(0.1, 0.3), _range(0.1, 0.5))),
        );
        _confetti.fire(
          shared.copyWith(origin: Offset(_range(0.7, 0.9), _range(0.1, 0.5))),
        );
      });
    });
  }

  void _toggleSnow() {
    if (_snow != null) {
      _snow!.cancel();
      setState(() => _snow = null);
      return;
    }
    setState(() {
      _snow = Timer.periodic(const Duration(milliseconds: 16), (_) {
        _confetti.fire(
          DynamicConfettiOptions(
            particleCount: 1,
            startVelocity: 0,
            ticks: 320,
            gravity: _range(0.4, 0.6),
            scalar: _range(0.4, 1),
            drift: _range(-0.4, 0.4),
            origin: Offset(_rng.nextDouble(), -0.1),
            colors: const [Color(0xFFFFFFFF)],
            shapes: const [DynamicConfettiShape.circle],
          ),
        );
      });
    });
  }

  void _togglePride() {
    if (_pride != null) {
      _pride!.cancel();
      setState(() => _pride = null);
      return;
    }
    setState(() {
      _pride = Timer.periodic(const Duration(milliseconds: 40), (_) {
        const colors = [Color(0xFFEF4444), Color(0xFFFFFFFF)];
        _confetti.fire(
          const DynamicConfettiOptions(
            particleCount: 4,
            angle: 60,
            spread: 55,
            origin: Offset(0, 0.65),
            colors: colors,
          ),
        );
        _confetti.fire(
          const DynamicConfettiOptions(
            particleCount: 4,
            angle: 120,
            spread: 55,
            origin: Offset(1, 0.65),
            colors: colors,
          ),
        );
      });
    });
  }

  void _reset() {
    _fireworks?.cancel();
    _snow?.cancel();
    _pride?.cancel();
    _confetti.reset();
    setState(() {
      _fireworks = null;
      _snow = null;
      _pride = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Confetti — canvas-confetti port')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final size = Size(constraints.maxWidth, constraints.maxHeight);
          return Stack(
            children: [
              Listener(
                behavior: HitTestBehavior.translucent,
                onPointerDown: (event) => _fireAt(event.localPosition, size),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.celebration_outlined,
                                size: 56,
                                color: theme.colorScheme.primary,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                'Tap anywhere to spray',
                                style: theme.textTheme.titleMedium,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'or try a preset below',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        alignment: WrapAlignment.center,
                        children: [
                          FilledButton.tonal(
                            onPressed: _basic,
                            child: const Text('🎉 Basic'),
                          ),
                          FilledButton.tonal(
                            onPressed: _realistic,
                            child: const Text('✨ Realistic'),
                          ),
                          FilledButton.tonal(
                            onPressed: _stars,
                            child: const Text('⭐ Stars'),
                          ),
                          FilledButton.tonal(
                            onPressed: _emoji,
                            child: const Text('😄 Emoji'),
                          ),
                          _ToggleButton(
                            label: 'Fireworks',
                            active: _fireworks != null,
                            onPressed: _toggleFireworks,
                          ),
                          _ToggleButton(
                            label: 'Snow',
                            active: _snow != null,
                            onPressed: _toggleSnow,
                          ),
                          _ToggleButton(
                            label: 'School Pride',
                            active: _pride != null,
                            onPressed: _togglePride,
                          ),
                          OutlinedButton.icon(
                            onPressed: _reset,
                            icon: const Icon(Icons.clear_all),
                            label: const Text('Reset'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Confetti renders on top and lets pointer events pass through.
              Positioned.fill(child: DynamicConfetti(controller: _confetti)),
            ],
          );
        },
      ),
    );
  }
}

class _ToggleButton extends StatelessWidget {
  const _ToggleButton({
    required this.label,
    required this.active,
    required this.onPressed,
  });

  final String label;
  final bool active;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return FilledButton.icon(
      onPressed: onPressed,
      style: active
          ? FilledButton.styleFrom(
              backgroundColor: scheme.error,
              foregroundColor: scheme.onError,
            )
          : null,
      icon: Icon(active ? Icons.stop : Icons.play_arrow, size: 18),
      label: Text(label),
    );
  }
}
