import 'dart:async';
import 'dart:math';

import 'package:dynamic_confetti/dynamic_confetti.dart';
import 'package:dynamic_confetti/src/confetti_painter.dart';
import 'package:dynamic_confetti/src/confetti_particle.dart';
import 'package:dynamic_confetti/src/confetti_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

const _size = Size(400, 800);
const _white = Color(0xFFFFFFFF);

void main() {
  group('DynamicConfettiOptions', () {
    test('defaults match canvas-confetti', () {
      const o = DynamicConfettiOptions();
      expect(o.particleCount, 50);
      expect(o.angle, 90);
      expect(o.spread, 45);
      expect(o.startVelocity, 45);
      expect(o.decay, 0.9);
      expect(o.gravity, 1);
      expect(o.drift, 0);
      expect(o.flat, false);
      expect(o.ticks, 200);
      expect(o.origin, const Offset(0.5, 0.5));
      expect(o.scalar, 1);
      expect(o.disableForReducedMotion, false);
      expect(kDefaultConfettiColors.length, 7);
      expect(o.shapes, const [
        DynamicConfettiShape.square,
        DynamicConfettiShape.circle,
      ]);
    });

    test('copyWith replaces only named fields', () {
      const o = DynamicConfettiOptions();
      final p = o.copyWith(particleCount: 7, spread: 120);
      expect(p.particleCount, 7);
      expect(p.spread, 120);
      expect(p.startVelocity, o.startVelocity);
      expect(p.colors, same(o.colors));
    });
  });

  group('DynamicConfettiShape', () {
    test('built-ins are const singletons', () {
      expect(DynamicConfettiShape.square, isA<SquareConfettiShape>());
      expect(DynamicConfettiShape.circle, isA<CircleConfettiShape>());
      expect(DynamicConfettiShape.star, isA<StarConfettiShape>());
      expect(
        identical(DynamicConfettiShape.square, DynamicConfettiShape.square),
        isTrue,
      );
    });

    test('factories build path and text shapes', () {
      final path = DynamicConfettiShape.path(Path()..addOval(Rect.largest));
      expect(path, isA<PathConfettiShape>());
      expect((path as PathConfettiShape).bounds, isNotNull);

      final text = DynamicConfettiShape.text('🎉', scalar: 2);
      expect(text, isA<TextConfettiShape>());
      expect((text as TextConfettiShape).painter.width, greaterThan(0));
    });
  });

  group('Fetti physics', () {
    test('a particle moves, ages, then dies after its ticks', () {
      final f = Fetti.random(
        rng: Random(1),
        options: const DynamicConfettiOptions(ticks: 10),
        x: 100,
        y: 100,
        color: _white,
        shape: DynamicConfettiShape.square,
      );
      final x0 = f.x;
      final y0 = f.y;

      f.update(Random(2));
      expect(f.tick, 1);
      expect(f.x != x0 || f.y != y0, isTrue, reason: 'should have moved');
      expect(f.alive, isTrue);
      expect(f.opacity, lessThan(1));

      for (var i = 1; i < 10; i++) {
        f.update(Random(2));
      }
      expect(f.alive, isFalse);
    });

    test('gravity always pulls a particle downward over time', () {
      final f = Fetti.random(
        rng: Random(3),
        options: const DynamicConfettiOptions(ticks: 200, startVelocity: 0),
        x: 0,
        y: 0,
        color: _white,
        shape: DynamicConfettiShape.circle,
      );
      for (var i = 0; i < 30; i++) {
        f.update(Random(4));
      }
      expect(f.y, greaterThan(0));
    });
  });

  group('DynamicConfettiController', () {
    test('fire spawns particleCount particles once a viewport is known', () {
      final c = DynamicConfettiController(random: Random(1))
        ..setViewport(_size);
      c.fire(const DynamicConfettiOptions(particleCount: 12, ticks: 50));
      expect(c.particles.length, 12);
      expect(c.isAnimating, isTrue);
      c.dispose();
    });

    test('fire before layout is queued, then flushed on setViewport', () {
      final c = DynamicConfettiController(random: Random(1));
      c.fire(const DynamicConfettiOptions(particleCount: 5));
      expect(c.particles, isEmpty);
      expect(c.isAnimating, isTrue, reason: 'queued burst still counts');
      c.setViewport(_size);
      expect(c.particles.length, 5);
      c.dispose();
    });

    test(
      'ticking to the end clears particles and resolves the future',
      () async {
        final c = DynamicConfettiController(random: Random(1))
          ..setViewport(_size);
        final done = c.fire(
          const DynamicConfettiOptions(particleCount: 8, ticks: 3),
        );
        var resolved = false;
        unawaited(done.then((_) => resolved = true));

        for (var i = 0; i < 3; i++) {
          c.tick(1 / 60);
        }
        await Future<void>.delayed(Duration.zero);

        expect(c.particles, isEmpty);
        expect(c.isAnimating, isFalse);
        expect(resolved, isTrue);
        c.dispose();
      },
    );

    test('reset clears everything and resolves outstanding futures', () async {
      final c = DynamicConfettiController(random: Random(1))
        ..setViewport(_size);
      final done = c.fire(const DynamicConfettiOptions(particleCount: 30));
      c.reset();
      await done; // completes without hanging
      expect(c.particles, isEmpty);
      expect(c.isAnimating, isFalse);
      c.dispose();
    });

    test('disableForReducedMotion suppresses the burst', () async {
      final c = DynamicConfettiController(random: Random(1))
        ..setViewport(_size)
        ..reduceMotion = true;
      await c.fire(
        const DynamicConfettiOptions(
          particleCount: 50,
          disableForReducedMotion: true,
        ),
      );
      expect(c.particles, isEmpty);
      c.dispose();
    });

    test('an empty burst resolves its future instead of hanging', () async {
      final c = DynamicConfettiController(random: Random(1))
        ..setViewport(_size);
      await c
          .fire(const DynamicConfettiOptions(particleCount: 0))
          .timeout(const Duration(seconds: 1));
      expect(c.particles, isEmpty);
      expect(c.isAnimating, isFalse);
      c.dispose();
    });

    test(
      'an empty burst queued before layout still resolves on flush',
      () async {
        final c = DynamicConfettiController(random: Random(1));
        final done = c.fire(const DynamicConfettiOptions(particleCount: 0));
        c.setViewport(_size);
        await done.timeout(const Duration(seconds: 1));
        expect(c.isAnimating, isFalse);
        c.dispose();
      },
    );

    test(
      'a burst queued before reduce-motion syncs is suppressed on flush',
      () async {
        // reduceMotion still defaults false, so fire() can't suppress it yet and
        // the burst is queued.
        final c = DynamicConfettiController(random: Random(1));
        final done = c.fire(
          const DynamicConfettiOptions(
            particleCount: 50,
            disableForReducedMotion: true,
          ),
        );
        expect(c.isAnimating, isTrue, reason: 'queued before layout');

        // The widget later syncs reduce-motion on, then lays out.
        c.reduceMotion = true;
        c.setViewport(_size);

        await done.timeout(const Duration(seconds: 1));
        expect(
          c.particles,
          isEmpty,
          reason: 'flush must re-check reduceMotion',
        );
        expect(c.isAnimating, isFalse);
        c.dispose();
      },
    );
  });

  group('ConfettiPainter', () {
    test('repaints only when the controller changes', () {
      final a = DynamicConfettiController(random: Random(1));
      final b = DynamicConfettiController(random: Random(2));
      expect(ConfettiPainter(b).shouldRepaint(ConfettiPainter(a)), isTrue);
      expect(ConfettiPainter(a).shouldRepaint(ConfettiPainter(a)), isFalse);
      a.dispose();
      b.dispose();
    });
  });

  group('DynamicConfetti widget', () {
    testWidgets('animates a burst then settles, with no exceptions', (
      tester,
    ) async {
      final c = DynamicConfettiController(random: Random(7));
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SizedBox(
              width: 400,
              height: 800,
              child: DynamicConfetti(controller: c),
            ),
          ),
        ),
      );

      c.fire(const DynamicConfettiOptions(particleCount: 20, ticks: 10));
      await tester.pump();
      expect(c.isAnimating, isTrue);

      for (var i = 0; i < 25; i++) {
        await tester.pump(const Duration(milliseconds: 16));
      }

      expect(c.isAnimating, isFalse);
      expect(tester.takeException(), isNull);
      c.dispose();
    });

    testWidgets('renders every shape kind without throwing', (tester) async {
      final c = DynamicConfettiController(random: Random(9));
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SizedBox(
              width: 400,
              height: 800,
              child: DynamicConfetti(controller: c),
            ),
          ),
        ),
      );

      c.fire(
        DynamicConfettiOptions(
          particleCount: 40,
          ticks: 12,
          shapes: [
            DynamicConfettiShape.square,
            DynamicConfettiShape.circle,
            DynamicConfettiShape.star,
            DynamicConfettiShape.text('🎉'),
            DynamicConfettiShape.path(
              Path()..addOval(const Rect.fromLTWH(0, 0, 10, 10)),
            ),
          ],
        ),
      );
      for (var i = 0; i < 16; i++) {
        await tester.pump(const Duration(milliseconds: 16));
      }
      expect(tester.takeException(), isNull);
      c.dispose();
    });
  });

  testWidgets('DynamicConfetti.fire inserts an overlay and tears it down', (
    tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: SizedBox.expand())),
    );
    final context = tester.element(find.byType(Scaffold));

    final future = DynamicConfetti.fire(
      context,
      const DynamicConfettiOptions(particleCount: 10, ticks: 8),
    );
    await tester.pump();
    expect(find.byType(DynamicConfetti), findsOneWidget);

    for (var i = 0; i < 20; i++) {
      await tester.pump(const Duration(milliseconds: 16));
    }
    await future;
    await tester.pump();

    expect(find.byType(DynamicConfetti), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
