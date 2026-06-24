import 'package:dynamic_haptics/dynamic_haptics.dart';
import 'package:dynamic_touchable/dynamic_touchable.dart';
import 'package:flutter/material.dart';

void main() => runApp(const TouchableGalleryApp());

class TouchableGalleryApp extends StatefulWidget {
  const TouchableGalleryApp({super.key});

  @override
  State<TouchableGalleryApp> createState() => _TouchableGalleryAppState();
}

class _TouchableGalleryAppState extends State<TouchableGalleryApp> {
  ThemeMode _mode = ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dynamic_touchable',
      debugShowCheckedModeBanner: false,
      themeMode: _mode,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF6366F1),
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: const Color(0xFF6366F1),
        brightness: Brightness.dark,
      ),
      home: GalleryPage(
        onToggleBrightness: () => setState(
          () => _mode = _mode == ThemeMode.dark
              ? ThemeMode.light
              : ThemeMode.dark,
        ),
      ),
    );
  }
}

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key, required this.onToggleBrightness});

  final VoidCallback onToggleBrightness;

  void _toast(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(message), duration: const Duration(seconds: 1)),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('dynamic_touchable'),
        actions: [
          IconButton(
            onPressed: onToggleBrightness,
            icon: const Icon(Icons.brightness_6_outlined),
            tooltip: 'Toggle brightness',
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
        children: [
          const _Section(
            title: '1 · Pure effect (no callbacks)',
            subtitle: 'Wrap anything — it sinks on press even without onTap.',
            child: DynamicTouchable(child: _Tile(label: 'Press me')),
          ),
          _Section(
            title: '2 · Extension + onTap',
            subtitle:
                '.touchable() makes it a button: cursor, semantics, keys.',
            child: const _Tile(
              label: 'Tap → SnackBar',
            ).touchable(onTap: () => _toast(context, 'Tapped!')),
          ),
          _Section(
            title: '3 · Spring presets',
            subtitle: 'Feel the overshoot differ on release.',
            child: Row(
              children: [
                for (final spring in TouchSpring.values)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: _Tile(
                        label: spring.name,
                        compact: true,
                      ).touchable(spring: spring, onTap: () {}),
                    ),
                  ),
              ],
            ),
          ),
          _Section(
            title: '4 · Hover lift (web/desktop)',
            subtitle: 'Opt-in: hoveredScale > 1.',
            child: const _Tile(
              label: 'Hover me',
            ).touchable(hoveredScale: 1.04, onTap: () {}),
          ),
          _Section(
            title: '5 · Shadow that collapses',
            subtitle: 'restElevation → pressedElevation.',
            child: DynamicTouchable(
              onTap: () {},
              pressedScale: 0.94,
              pressedOffset: const Offset(0, 3),
              restElevation: 10,
              pressedElevation: 2,
              child: const _Tile(label: 'Lift & press'),
            ),
          ),
          _Section(
            title: '6 · Keyboard (Tab, then Space/Enter)',
            subtitle: 'Actionable touchables focus & show a ring.',
            child: Row(
              children: [
                Expanded(
                  child: const _Tile(
                    label: 'One',
                    compact: true,
                  ).touchable(onTap: () => _toast(context, 'Activated One')),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: const _Tile(
                    label: 'Two',
                    compact: true,
                  ).touchable(onTap: () => _toast(context, 'Activated Two')),
                ),
              ],
            ),
          ),
          const _Section(
            title: '7 · Inside a scroll list',
            subtitle: 'Presses instantly, releases cleanly when you scroll.',
            child: _ScrollStealDemo(),
          ),
          _Section(
            title: '8 · Disabled',
            subtitle: 'enabled: false — no sink, no cursor, not focusable.',
            child: DynamicTouchable(
              enabled: false,
              onTap: () {},
              child: const _Tile(label: 'Disabled'),
            ),
          ),
          const _Section(
            title: '9 · Haptics (decoupled)',
            subtitle:
                'onPressed → dynamic_haptics. No dependency in the package.',
            child: _HapticsDemo(),
          ),
          const _Section(
            title: '10 · Reading TouchState',
            subtitle: 'A child tints itself while pressed.',
            child: _TouchStateDemo(),
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.title,
    required this.subtitle,
    required this.child,
  });

  final String title;
  final String subtitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(title, style: theme.textTheme.titleMedium),
          const SizedBox(height: 2),
          Text(
            subtitle,
            style: theme.textTheme.bodySmall?.copyWith(color: theme.hintColor),
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile({required this.label, this.compact = false});

  final String label;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      height: compact ? 56 : 72,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: scheme.primaryContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: scheme.onPrimaryContainer,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _ScrollStealDemo extends StatelessWidget {
  const _ScrollStealDemo();

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 220,
      child: ListView.separated(
        itemCount: 20,
        separatorBuilder: (_, _) => const SizedBox(height: 8),
        itemBuilder: (context, i) {
          return Container(
            height: 52,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: scheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text('Row ${i + 1}'),
          ).touchable(onTap: () {});
        },
      ),
    );
  }
}

class _HapticsDemo extends StatelessWidget {
  const _HapticsDemo();

  @override
  Widget build(BuildContext context) {
    final haptics = DynamicHaptics();
    return Row(
      children: [
        for (final preset in const [
          ('light', DynamicHapticPresets.light),
          ('medium', DynamicHapticPresets.medium),
          ('heavy', DynamicHapticPresets.heavy),
        ])
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: _Tile(label: preset.$1, compact: true).touchable(
                onTap: () {},
                onPressed: () => haptics.trigger(preset.$2),
              ),
            ),
          ),
      ],
    );
  }
}

class _TouchStateDemo extends StatelessWidget {
  const _TouchStateDemo();

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return DynamicTouchable(
      onTap: () {},
      child: Builder(
        builder: (context) {
          final pressed = TouchState.of(context).pressed;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 120),
            height: 72,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: pressed ? scheme.primary : scheme.primaryContainer,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              pressed ? 'pressed' : 'idle',
              style: TextStyle(
                color: pressed ? scheme.onPrimary : scheme.onPrimaryContainer,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
      ),
    );
  }
}
