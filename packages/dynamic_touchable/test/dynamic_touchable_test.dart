import 'package:dynamic_touchable/dynamic_touchable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

/// The x-scale of the touchable's scale `Transform` (the value furthest from
/// 1.0 among its transforms — at rest there's only the identity scale).
double _scaleX(WidgetTester tester) {
  final transforms = tester.widgetList<Transform>(
    find.descendant(
      of: find.byType(DynamicTouchable),
      matching: find.byType(Transform),
    ),
  );
  if (transforms.isEmpty) return 1.0;
  return transforms
      .map((t) => t.transform.storage[0])
      .reduce((a, b) => (a - 1.0).abs() >= (b - 1.0).abs() ? a : b);
}

Widget _host(
  Widget child, {
  bool reduceMotion = false,
  DynamicTouchableThemeData? theme,
}) {
  Widget body = Center(child: child);
  if (theme != null) {
    body = DynamicTouchableTheme(data: theme, child: body);
  }
  return MaterialApp(
    home: Scaffold(
      body: Builder(
        builder: (context) => MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(disableAnimations: reduceMotion),
          child: body,
        ),
      ),
    ),
  );
}

const Widget _box = SizedBox(width: 120, height: 80);

void main() {
  group('effect', () {
    testWidgets('rests at scale 1.0', (tester) async {
      await tester.pumpWidget(_host(const DynamicTouchable(child: _box)));
      expect(_scaleX(tester), closeTo(1.0, 1e-6));
    });

    testWidgets('sinks on press even with no callbacks', (tester) async {
      await tester.pumpWidget(
        _host(
          const DynamicTouchable(pressedScale: 0.7, child: _box),
          reduceMotion: true,
        ),
      );
      final gesture = await tester.startGesture(
        tester.getCenter(find.byType(DynamicTouchable)),
      );
      await tester.pump();
      expect(_scaleX(tester), closeTo(0.7, 1e-3));
      await gesture.up();
      await tester.pump();
      expect(_scaleX(tester), closeTo(1.0, 1e-6));
      expect(tester.takeException(), isNull);
    });

    testWidgets('explicit pressedScale beats theme', (tester) async {
      await tester.pumpWidget(
        _host(
          const DynamicTouchable(pressedScale: 0.8, child: _box),
          reduceMotion: true,
          theme: const DynamicTouchableThemeData(pressedScale: 0.5),
        ),
      );
      final gesture = await tester.startGesture(
        tester.getCenter(find.byType(DynamicTouchable)),
      );
      await tester.pump();
      expect(_scaleX(tester), closeTo(0.8, 1e-3));
      await gesture.up();
    });

    testWidgets('theme pressedScale wins over the built-in default', (
      tester,
    ) async {
      await tester.pumpWidget(
        _host(
          const DynamicTouchable(child: _box),
          reduceMotion: true,
          theme: const DynamicTouchableThemeData(pressedScale: 0.5),
        ),
      );
      final gesture = await tester.startGesture(
        tester.getCenter(find.byType(DynamicTouchable)),
      );
      await tester.pump();
      expect(_scaleX(tester), closeTo(0.5, 1e-3));
      await gesture.up();
    });

    testWidgets('disabled does not sink', (tester) async {
      await tester.pumpWidget(
        _host(
          const DynamicTouchable(
            enabled: false,
            pressedScale: 0.5,
            child: _box,
          ),
          reduceMotion: true,
        ),
      );
      final gesture = await tester.startGesture(
        tester.getCenter(find.byType(DynamicTouchable)),
      );
      await tester.pump();
      expect(_scaleX(tester), closeTo(1.0, 1e-6));
      await gesture.up();
    });
  });

  group('callbacks', () {
    testWidgets('onTap fires on tap', (tester) async {
      var taps = 0;
      await tester.pumpWidget(
        _host(DynamicTouchable(onTap: () => taps++, child: _box)),
      );
      await tester.tap(find.byType(DynamicTouchable));
      await tester.pumpAndSettle();
      expect(taps, 1);
    });

    testWidgets('onPressChanged reports the press lifecycle', (tester) async {
      final events = <bool>[];
      await tester.pumpWidget(
        _host(DynamicTouchable(onPressChanged: events.add, child: _box)),
      );
      final gesture = await tester.startGesture(
        tester.getCenter(find.byType(DynamicTouchable)),
      );
      await tester.pump();
      expect(events, [true]);
      await gesture.up();
      await tester.pumpAndSettle();
      expect(events, [true, false]);
    });

    testWidgets('onPressed fires the instant the press engages', (
      tester,
    ) async {
      var pressed = 0;
      await tester.pumpWidget(
        _host(DynamicTouchable(onPressed: () => pressed++, child: _box)),
      );
      final gesture = await tester.startGesture(
        tester.getCenter(find.byType(DynamicTouchable)),
      );
      await tester.pump();
      expect(pressed, 1);
      await gesture.up();
      await tester.pumpAndSettle();
    });
  });

  group('accessibility', () {
    testWidgets('exposes button semantics when actionable', (tester) async {
      final handle = tester.ensureSemantics();
      await tester.pumpWidget(
        _host(DynamicTouchable(onTap: () {}, child: _box)),
      );
      final data = tester
          .getSemantics(find.byType(DynamicTouchable))
          .getSemanticsData();
      expect(data.flagsCollection.isButton, isTrue);
      handle.dispose();
    });

    testWidgets('a pure-effect touchable has no button role or enabled state', (
      tester,
    ) async {
      final handle = tester.ensureSemantics();
      await tester.pumpWidget(_host(const DynamicTouchable(child: _box)));
      final data = tester
          .getSemantics(find.byType(DynamicTouchable))
          .getSemanticsData();
      expect(data.flagsCollection.isButton, isFalse);
      expect(data.flagsCollection.isEnabled.toBoolOrNull(), isNull);
      handle.dispose();
    });

    testWidgets('a disabled control is still a (disabled) button', (
      tester,
    ) async {
      final handle = tester.ensureSemantics();
      await tester.pumpWidget(
        _host(DynamicTouchable(enabled: false, onTap: () {}, child: _box)),
      );
      final data = tester
          .getSemantics(find.byType(DynamicTouchable))
          .getSemanticsData();
      expect(data.flagsCollection.isButton, isTrue, reason: 'role kept');
      expect(
        data.flagsCollection.isEnabled.toBoolOrNull(),
        isNotNull,
        reason: 'has enabled state',
      );
      expect(
        data.flagsCollection.isEnabled.toBoolOrNull(),
        isFalse,
        reason: 'announced disabled',
      );
      handle.dispose();
    });
  });

  group('the .touchable() extension', () {
    testWidgets('wraps the widget in a DynamicTouchable', (tester) async {
      var taps = 0;
      await tester.pumpWidget(_host(_box.touchable(onTap: () => taps++)));
      expect(find.byType(DynamicTouchable), findsOneWidget);
      await tester.tap(find.byType(DynamicTouchable));
      await tester.pumpAndSettle();
      expect(taps, 1);
    });
  });

  group('keyboard & focus', () {
    testWidgets('a long-press-only control is keyboard-activatable', (
      tester,
    ) async {
      var longPresses = 0;
      final focusNode = FocusNode();
      addTearDown(focusNode.dispose);
      await tester.pumpWidget(
        _host(
          DynamicTouchable(
            focusNode: focusNode,
            onLongPress: () => longPresses++,
            child: _box,
          ),
        ),
      );
      focusNode.requestFocus();
      await tester.pump();
      expect(focusNode.hasFocus, isTrue);

      await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      await tester.pump();
      expect(longPresses, 1, reason: 'Enter falls back to onLongPress');
    });

    testWidgets('losing focus while Space is held releases the press', (
      tester,
    ) async {
      final events = <bool>[];
      final focusNode = FocusNode();
      addTearDown(focusNode.dispose);
      await tester.pumpWidget(
        _host(
          DynamicTouchable(
            focusNode: focusNode,
            onTap: () {},
            onPressChanged: events.add,
            child: _box,
          ),
        ),
      );
      focusNode.requestFocus();
      await tester.pump();

      await tester.sendKeyDownEvent(LogicalKeyboardKey.space);
      await tester.pump();
      expect(events, [true]);

      focusNode.unfocus(); // route change / dialog / programmatic unfocus
      await tester.pumpAndSettle();
      expect(events, [true, false], reason: 'press must not stick');

      await tester.sendKeyUpEvent(LogicalKeyboardKey.space);
    });
  });

  group('feedback', () {
    Iterable<String> feedbackCalls(List<String> calls) => calls.where(
      (m) => m.contains('HapticFeedback') || m.contains('SystemSound'),
    );

    testWidgets('theme enableFeedback: false suppresses platform feedback', (
      tester,
    ) async {
      final calls = <String>[];
      tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        (MethodCall call) async {
          calls.add(call.method);
          return null;
        },
      );
      addTearDown(
        () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
          SystemChannels.platform,
          null,
        ),
      );

      // Control: feedback on by default → a tap emits platform feedback.
      await tester.pumpWidget(
        _host(DynamicTouchable(onTap: () {}, child: _box)),
      );
      await tester.tap(find.byType(DynamicTouchable));
      await tester.pumpAndSettle();
      expect(feedbackCalls(calls), isNotEmpty);

      // Theme turns it off and the widget doesn't override → no feedback.
      calls.clear();
      await tester.pumpWidget(
        _host(
          DynamicTouchable(onTap: () {}, child: _box),
          theme: const DynamicTouchableThemeData(enableFeedback: false),
        ),
      );
      await tester.tap(find.byType(DynamicTouchable));
      await tester.pumpAndSettle();
      expect(feedbackCalls(calls), isEmpty);
    });
  });

  group('robustness', () {
    testWidgets('disabling mid-press reports the release', (tester) async {
      final events = <bool>[];
      Widget build(bool enabled) => _host(
        DynamicTouchable(
          enabled: enabled,
          onPressChanged: events.add,
          child: _box,
        ),
        reduceMotion: true,
      );
      await tester.pumpWidget(build(true));
      final gesture = await tester.startGesture(
        tester.getCenter(find.byType(DynamicTouchable)),
      );
      await tester.pump();
      expect(events, [true]);

      await tester.pumpWidget(build(false)); // disable mid-press
      await tester.pump();
      expect(events, [true, false], reason: 'cancel must notify pressed→false');
      await gesture.up();
    });

    testWidgets('releases when a scroll steals the gesture', (tester) async {
      final events = <bool>[];
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ListView(
              children: [
                DynamicTouchable(
                  onTap: () {},
                  onPressChanged: events.add,
                  child: const SizedBox(
                    height: 80,
                    child: Center(child: Text('row')),
                  ),
                ),
                for (var i = 0; i < 30; i++)
                  SizedBox(height: 80, child: Center(child: Text('filler $i'))),
              ],
            ),
          ),
        ),
      );
      final gesture = await tester.startGesture(
        tester.getCenter(find.text('row')),
      );
      await tester.pump();
      expect(events, [true]);

      await gesture.moveBy(const Offset(0, -250)); // scroll the list away
      await tester.pump();
      expect(events, [true, false]);
      await gesture.up();
      await tester.pumpAndSettle();
    });

    testWidgets('disabled ignores a custom mouseCursor', (tester) async {
      await tester.pumpWidget(
        _host(
          const DynamicTouchable(
            enabled: false,
            mouseCursor: SystemMouseCursors.click,
            child: _box,
          ),
        ),
      );
      final region = tester.widget<MouseRegion>(
        find.descendant(
          of: find.byType(DynamicTouchable),
          matching: find.byType(MouseRegion),
        ),
      );
      expect(region.cursor, MouseCursor.defer);
    });
  });

  group('spring resolution', () {
    // Tracks the peak scale during the release settle. A bouncy spring
    // overshoots rest (scale climbs past 1.0 when hoveredScale > 1); a plain
    // ease (`none`) never does.
    Future<double> peakScaleAfterRelease(
      WidgetTester tester,
      Widget app,
    ) async {
      await tester.pumpWidget(app);
      final gesture = await tester.startGesture(
        tester.getCenter(find.byType(DynamicTouchable)),
      );
      await tester.pump();
      await gesture.up();
      var peak = 1.0;
      for (var i = 0; i < 40; i++) {
        await tester.pump(const Duration(milliseconds: 16));
        final s = _scaleX(tester);
        if (s > peak) peak = s;
      }
      await tester.pumpAndSettle();
      return peak;
    }

    testWidgets('explicit spring: none wins over a theme springDescription', (
      tester,
    ) async {
      final bouncy = resolveTouchSpring(TouchSpring.bouncy);

      // Control: the theme's bouncy raw description overshoots past rest.
      final overshoot = await peakScaleAfterRelease(
        tester,
        _host(
          const DynamicTouchable(
            hoveredScale: 1.2,
            pressedScale: 0.8,
            child: _box,
          ),
          theme: DynamicTouchableThemeData(springDescription: bouncy),
        ),
      );
      expect(overshoot, greaterThan(1.0 + 1e-3));

      // Explicit `none` must win over the theme → a plain ease, no overshoot.
      final eased = await peakScaleAfterRelease(
        tester,
        _host(
          const DynamicTouchable(
            spring: TouchSpring.none,
            hoveredScale: 1.2,
            pressedScale: 0.8,
            child: _box,
          ),
          theme: DynamicTouchableThemeData(springDescription: bouncy),
        ),
      );
      expect(eased, lessThanOrEqualTo(1.0 + 1e-3));
    });
  });

  group('DynamicTouchableThemeData', () {
    test('defaults are all null', () {
      const data = DynamicTouchableThemeData();
      expect(data.pressedScale, isNull);
      expect(data.hoveredScale, isNull);
      expect(data.spring, isNull);
      expect(data.shadowColor, isNull);
      expect(data.enableFeedback, isNull);
    });

    test('copyWith replaces only the named fields', () {
      const base = DynamicTouchableThemeData(
        pressedScale: 0.9,
        hoveredScale: 1.1,
      );
      final next = base.copyWith(pressedScale: 0.5);
      expect(next.pressedScale, 0.5);
      expect(next.hoveredScale, 1.1);
    });

    test('merge: this wins, other fills nulls', () {
      const local = DynamicTouchableThemeData(pressedScale: 0.5);
      const base = DynamicTouchableThemeData(
        pressedScale: 0.9,
        hoveredScale: 1.2,
      );
      final merged = local.merge(base);
      expect(merged.pressedScale, 0.5); // local wins
      expect(merged.hoveredScale, 1.2); // filled from base
      expect(local.merge(null), same(local));
    });

    test('merge: a local spring preset suppresses an enclosing raw spring', () {
      // spring + springDescription merge as one unit. A local preset must not
      // let the enclosing raw description leak through — raw beats preset at
      // build time, so leaking it would silently ignore the local choice.
      final base = DynamicTouchableThemeData(
        springDescription: resolveTouchSpring(TouchSpring.bouncy),
      );
      const local = DynamicTouchableThemeData(spring: TouchSpring.gentle);
      final merged = local.merge(base);
      expect(merged.spring, TouchSpring.gentle);
      expect(merged.springDescription, isNull, reason: 'raw must not leak');

      // The reverse still fills from base when the local sets no spring at all.
      const noSpring = DynamicTouchableThemeData(pressedScale: 0.5);
      expect(noSpring.merge(base).springDescription, base.springDescription);
    });

    test('== and hashCode are value-based', () {
      const a = DynamicTouchableThemeData(
        pressedScale: 0.9,
        spring: TouchSpring.bouncy,
      );
      const b = DynamicTouchableThemeData(
        pressedScale: 0.9,
        spring: TouchSpring.bouncy,
      );
      expect(a, b);
      expect(a.hashCode, b.hashCode);
      expect(a == const DynamicTouchableThemeData(pressedScale: 0.8), isFalse);
    });
  });

  group('primitives', () {
    test('resolveTouchSpring maps presets to descriptions', () {
      expect(
        resolveTouchSpring(TouchSpring.bouncy).damping,
        lessThan(resolveTouchSpring(TouchSpring.gentle).damping),
      );
    });

    test('TouchState idle and equality', () {
      const idle = TouchState(
        enabled: true,
        hovered: false,
        pressed: false,
        focused: false,
      );
      expect(idle.idle, isTrue);
      expect(
        idle,
        const TouchState(
          enabled: true,
          hovered: false,
          pressed: false,
          focused: false,
        ),
      );
      const pressed = TouchState(
        enabled: true,
        hovered: false,
        pressed: true,
        focused: false,
      );
      expect(pressed.idle, isFalse);
    });
  });
}
