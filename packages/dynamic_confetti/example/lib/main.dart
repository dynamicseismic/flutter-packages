import 'dart:async';
import 'dart:math';

import 'package:dynamic_confetti/dynamic_confetti.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ConfettiApp());

class ConfettiApp extends StatelessWidget {
  const ConfettiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dynamic_confetti',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF6366F1),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
      ),
      home: const DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
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

  // Spray from wherever the user tapped — a quick demo of `origin`.
  void _fireAt(Offset globalPosition) {
    final size = MediaQuery.sizeOf(context);
    _confetti.fire(
      DynamicConfettiOptions(
        particleCount: 30,
        spread: 70,
        startVelocity: 35,
        origin: Offset(
          globalPosition.dx / size.width,
          globalPosition.dy / size.height,
        ),
      ),
    );
  }

  // The fire-from-anywhere one-liner — no controller needed.
  void _basic() => DynamicConfetti.fire(context);

  // canvas-confetti's "realistic look": several overlapping bursts at once.
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
    return Stack(
      children: [
        Listener(
          behavior: HitTestBehavior.translucent,
          onPointerDown: (event) => _fireAt(event.position),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 8),
                    Text(
                      'dynamic_confetti',
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'A Flutter port of canvas-confetti. Tap anywhere to spray.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white.withValues(alpha: 0.6),
                      ),
                    ),
                    const Spacer(),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      alignment: WrapAlignment.center,
                      children: [
                        _Btn('🎉 Basic', _basic, tonal: true),
                        _Btn('✨ Realistic', _realistic),
                        _Btn('⭐ Stars', _stars),
                        _Btn('😄 Emoji', _emoji),
                        _Btn(
                          _fireworks == null ? '🎆 Fireworks' : '⏹ Fireworks',
                          _toggleFireworks,
                          active: _fireworks != null,
                        ),
                        _Btn(
                          _snow == null ? '❄️ Snow' : '⏹ Snow',
                          _toggleSnow,
                          active: _snow != null,
                        ),
                        _Btn(
                          _pride == null ? '🏫 School Pride' : '⏹ School Pride',
                          _togglePride,
                          active: _pride != null,
                        ),
                        _Btn('🧹 Reset', _reset, tonal: true),
                      ],
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
        ),
        // The confetti canvas sits on top of everything and ignores pointers.
        Positioned.fill(child: DynamicConfetti(controller: _confetti)),
      ],
    );
  }
}

class _Btn extends StatelessWidget {
  const _Btn(
    this.label,
    this.onPressed, {
    this.active = false,
    this.tonal = false,
  });

  final String label;
  final VoidCallback onPressed;
  final bool active;
  final bool tonal;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    if (active) {
      return FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: scheme.error,
          foregroundColor: scheme.onError,
        ),
        child: Text(label),
      );
    }
    return tonal
        ? FilledButton.tonal(onPressed: onPressed, child: Text(label))
        : FilledButton(onPressed: onPressed, child: Text(label));
  }
}
