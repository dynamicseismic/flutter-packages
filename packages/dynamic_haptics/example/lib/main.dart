import 'package:flutter/material.dart';
import 'package:dynamic_haptics/dynamic_haptics.dart';

void main() {
  runApp(const HapticsExampleApp());
}

class HapticsExampleApp extends StatelessWidget {
  const HapticsExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff1d6f5f)),
        useMaterial3: true,
      ),
      home: const HapticsHome(),
    );
  }
}

class HapticsHome extends StatefulWidget {
  const HapticsHome({super.key});

  @override
  State<HapticsHome> createState() => _HapticsHomeState();
}

class _HapticsHomeState extends State<HapticsHome> {
  final DynamicHaptics _haptics = DynamicHaptics();
  bool? _isSupported;
  String _lastEvent = 'None';

  @override
  void initState() {
    super.initState();
    _loadSupport();
  }

  @override
  void dispose() {
    _haptics.destroy();
    super.dispose();
  }

  Future<void> _loadSupport() async {
    final isSupported = await DynamicHaptics.isSupported().catchError(
      (_) => false,
    );
    if (!mounted) {
      return;
    }
    setState(() => _isSupported = isSupported);
  }

  Future<void> _trigger(Object input, String label) async {
    await _haptics.trigger(input);
    if (!mounted) {
      return;
    }
    setState(() => _lastEvent = label);
  }

  Future<void> _cancel() async {
    await _haptics.cancel();
    if (!mounted) {
      return;
    }
    setState(() => _lastEvent = 'Cancelled');
  }

  @override
  Widget build(BuildContext context) {
    final supportedText = switch (_isSupported) {
      true => 'Supported',
      false => 'Unsupported',
      null => 'Checking',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Haptics')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Hardware: $supportedText'),
            subtitle: Text('Last event: $_lastEvent'),
          ),
          const SizedBox(height: 12),
          _Section(
            title: 'Presets',
            children: <Widget>[
              _HapticButton(
                icon: Icons.check_circle_outline,
                label: 'Success',
                onPressed: () => _trigger('success', 'success'),
              ),
              _HapticButton(
                icon: Icons.warning_amber_rounded,
                label: 'Warning',
                onPressed: () => _trigger(DynamicHapticEffect.warning, 'warning'),
              ),
              _HapticButton(
                icon: Icons.error_outline,
                label: 'Error',
                onPressed: () => _trigger('error', 'error'),
              ),
              _HapticButton(
                icon: Icons.touch_app_outlined,
                label: 'Selection',
                onPressed: () => _trigger('selection', 'selection'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _Section(
            title: 'Custom',
            children: <Widget>[
              _HapticButton(
                icon: Icons.more_horiz,
                label: 'Shorthand',
                onPressed: () => _trigger(<int>[100, 50, 100], 'shorthand'),
              ),
              _HapticButton(
                icon: Icons.vibration,
                label: 'Nudge',
                onPressed: () => _trigger('nudge', 'nudge'),
              ),
              _HapticButton(
                icon: Icons.graphic_eq,
                label: 'Pattern',
                onPressed: () => _trigger(const <DynamicHapticVibration>[
                  DynamicHapticVibration(
                    duration: Duration(milliseconds: 80),
                    intensity: 0.8,
                  ),
                  DynamicHapticVibration(
                    delay: Duration(milliseconds: 60),
                    duration: Duration(milliseconds: 120),
                    intensity: 0.35,
                  ),
                ], 'pattern'),
              ),
              _HapticButton(
                icon: Icons.stop_circle_outlined,
                label: 'Cancel',
                onPressed: _cancel,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        Wrap(spacing: 8, runSpacing: 8, children: children),
      ],
    );
  }
}

class _HapticButton extends StatelessWidget {
  const _HapticButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
