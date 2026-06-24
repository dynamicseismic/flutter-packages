import 'package:dynamic_touchable/dynamic_touchable.dart';
import 'package:flutter/material.dart';

/// Demonstrates [DynamicTouchable]: the sink-on-press effect on any widget, the
/// `.touchable()` extension, spring presets, hover lift, a collapsing shadow,
/// clean release inside a scroll view, and reading [TouchState].
class TouchableDemo extends StatelessWidget {
  const TouchableDemo({super.key});

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
      appBar: AppBar(title: const Text('Touchable')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _Section(
            title: 'Extension + onTap',
            subtitle: '.touchable() — cursor, semantics, keyboard, all in.',
            child: const _Tile(
              label: 'Tap me',
            ).touchable(onTap: () => _toast(context, 'Tapped!')),
          ),
          _Section(
            title: 'Spring presets',
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
            title: 'Hover lift (web/desktop)',
            subtitle: 'Opt-in: hoveredScale > 1.',
            child: const _Tile(
              label: 'Hover me',
            ).touchable(hoveredScale: 1.04, onTap: () {}),
          ),
          _Section(
            title: 'Shadow that collapses',
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
            title: 'Inside a scroll list',
            subtitle: 'Presses instantly, releases cleanly when you scroll.',
            child: const _ScrollStealDemo(),
          ),
          _Section(
            title: 'Disabled',
            subtitle: 'enabled: false — no sink, no cursor, not focusable.',
            child: DynamicTouchable(
              enabled: false,
              onTap: () {},
              child: const _Tile(label: 'Disabled'),
            ),
          ),
          _Section(
            title: 'Reading TouchState',
            subtitle: 'A child tints itself while pressed.',
            child: const _TouchStateDemo(),
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
      padding: const EdgeInsets.only(bottom: 24),
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
