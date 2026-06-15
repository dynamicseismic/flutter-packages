import 'package:flutter/material.dart';
import 'package:dynamic_haptics/dynamic_haptics.dart';

/// Demonstrates [DynamicHaptics]: built-in presets, the polymorphic `trigger`
/// API (shorthand int lists & custom [DynamicHapticVibration] patterns), and cancel.
///
/// The plugin only registers Android & iOS implementations, so on macOS / web /
/// desktop the method channel throws [MissingPluginException]. Every call is
/// wrapped in try/catch and a support badge tells the user when haptics are
/// unavailable — the demo still runs, the buttons just no-op.
class HapticsDemo extends StatefulWidget {
  const HapticsDemo({super.key});

  @override
  State<HapticsDemo> createState() => _HapticsDemoState();
}

class _HapticsDemoState extends State<HapticsDemo> {
  final DynamicHaptics _haptics = DynamicHaptics();
  bool? _supported; // null while checking
  String _last = '—';

  @override
  void initState() {
    super.initState();
    DynamicHaptics.isSupported().catchError((_) => false).then((value) {
      if (mounted) setState(() => _supported = value);
    });
  }

  @override
  void dispose() {
    // destroy() routes to the same channel and can throw where unregistered.
    try {
      _haptics.destroy();
    } catch (_) {
      // ignore: demo cleanup on a platform without the plugin
    }
    super.dispose();
  }

  Future<void> _fire(Object input, String label) async {
    try {
      await _haptics.trigger(input);
    } catch (_) {
      // MissingPluginException on desktop/web — ignore so the demo stays alive.
    }
    if (mounted) setState(() => _last = label);
  }

  Future<void> _cancel() async {
    try {
      await _haptics.cancel();
    } catch (_) {
      // ignore on unsupported platforms
    }
    if (mounted) setState(() => _last = 'cancel');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final supported = _supported;

    const effects = <(String, DynamicHapticEffect)>[
      ('Success', DynamicHapticEffect.success),
      ('Warning', DynamicHapticEffect.warning),
      ('Error', DynamicHapticEffect.error),
      ('Selection', DynamicHapticEffect.selection),
      ('Light', DynamicHapticEffect.light),
      ('Medium', DynamicHapticEffect.medium),
      ('Heavy', DynamicHapticEffect.heavy),
      ('Soft', DynamicHapticEffect.soft),
      ('Rigid', DynamicHapticEffect.rigid),
      ('Nudge', DynamicHapticEffect.nudge),
      ('Buzz', DynamicHapticEffect.buzz),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Haptics')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            color: switch (supported) {
              true => theme.colorScheme.secondaryContainer,
              false => theme.colorScheme.errorContainer,
              null => theme.colorScheme.surfaceContainerHighest,
            },
            child: ListTile(
              leading: Icon(switch (supported) {
                true => Icons.check_circle,
                false => Icons.do_not_disturb_on,
                null => Icons.hourglass_empty,
              }),
              title: Text(switch (supported) {
                true => 'Haptics supported',
                false => 'Unavailable on this platform',
                null => 'Checking…',
              }),
              subtitle: Text('Last fired: $_last'),
            ),
          ),
          if (supported == false)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Run on a physical Android or iOS device to feel the haptics. '
                'The buttons still work here — they just no-op.',
              ),
            ),
          const SizedBox(height: 8),
          Text('Presets (DynamicHapticEffect)', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final (label, effect) in effects)
                FilledButton.tonal(
                  onPressed: () => _fire(effect, label),
                  child: Text(label),
                ),
            ],
          ),
          const SizedBox(height: 24),
          Text('Custom patterns', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              FilledButton(
                onPressed: () =>
                    _fire(const <int>[100, 50, 100], 'shorthand [100, 50, 100]'),
                child: const Text('Shorthand [100, 50, 100]'),
              ),
              FilledButton(
                onPressed: () => _fire(
                  const <DynamicHapticVibration>[
                    DynamicHapticVibration(
                      duration: Duration(milliseconds: 80),
                      intensity: 0.9,
                    ),
                    DynamicHapticVibration(
                      delay: Duration(milliseconds: 60),
                      duration: Duration(milliseconds: 160),
                      intensity: 0.35,
                    ),
                  ],
                  'custom DynamicHapticVibration pattern',
                ),
                child: const Text('Vibration pattern'),
              ),
              OutlinedButton.icon(
                onPressed: _cancel,
                icon: const Icon(Icons.stop),
                label: const Text('Cancel'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
