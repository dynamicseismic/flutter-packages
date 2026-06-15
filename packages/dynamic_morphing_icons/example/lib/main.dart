import 'package:flutter/material.dart';
import 'package:dynamic_morphing_icons/dynamic_morphing_icons.dart';

void main() => runApp(const MorphingIconsDemo());

class MorphingIconsDemo extends StatelessWidget {
  const MorphingIconsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Morphing Icons',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF6C5CE7),
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  double _durationMs = 450;
  double _strokeWidth = 2.5;

  DynamicMorphIcon get _current => DynamicMorphIcons.all[_index];

  void _select(int index) => setState(() => _index = index);

  void _cycle() =>
      setState(() => _index = (_index + 1) % DynamicMorphIcons.all.length);

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 560),
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              children: [
                Text(
                  'Morphing Icons',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  'Every icon is three lines, so any icon can morph into any '
                  'other. Tap the icon to cycle, or pick one below.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                ),
                const SizedBox(height: 32),

                // The hero icon — tap to cycle to the next icon.
                Center(
                  child: _HeroIcon(
                    icon: _current,
                    durationMs: _durationMs,
                    strokeWidth: _strokeWidth,
                    onTap: _cycle,
                  ),
                ),
                const SizedBox(height: 12),
                Center(
                  child: Text(
                    _current.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: scheme.primary,
                          fontFeatures: const [FontFeature.tabularFigures()],
                        ),
                  ),
                ),
                const SizedBox(height: 32),

                // The 21-icon picker.
                _IconGrid(
                  selectedIndex: _index,
                  strokeWidth: _strokeWidth,
                  onSelect: _select,
                ),
                const SizedBox(height: 24),

                _LabeledSlider(
                  label: 'Speed',
                  value: _durationMs,
                  min: 120,
                  max: 1600,
                  valueText: '${_durationMs.round()} ms',
                  onChanged: (v) => setState(() => _durationMs = v),
                ),
                _LabeledSlider(
                  label: 'Stroke',
                  value: _strokeWidth,
                  min: 1,
                  max: 6,
                  valueText: _strokeWidth.toStringAsFixed(1),
                  onChanged: (v) => setState(() => _strokeWidth = v),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HeroIcon extends StatelessWidget {
  const _HeroIcon({
    required this.icon,
    required this.durationMs,
    required this.strokeWidth,
    required this.onTap,
  });

  final DynamicMorphIcon icon;
  final double durationMs;
  final double strokeWidth;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Semantics(
      button: true,
      label: 'Cycle to next icon',
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: scheme.surfaceContainerHighest,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: DynamicMorphingIcon(
            icon: icon,
            size: 96,
            color: scheme.onSurface,
            strokeWidth: strokeWidth * 1.6,
            duration: Duration(milliseconds: durationMs.round()),
          ),
        ),
      ),
    );
  }
}

class _IconGrid extends StatelessWidget {
  const _IconGrid({
    required this.selectedIndex,
    required this.strokeWidth,
    required this.onSelect,
  });

  final int selectedIndex;
  final double strokeWidth;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: [
        for (var i = 0; i < DynamicMorphIcons.all.length; i++)
          _GridTile(
            selected: i == selectedIndex,
            onTap: () => onSelect(i),
            child: DynamicMorphingIcon(
              icon: DynamicMorphIcons.all[i],
              size: 28,
              strokeWidth: strokeWidth,
              color: i == selectedIndex ? scheme.onPrimary : scheme.onSurface,
            ),
          ),
      ],
    );
  }
}

class _GridTile extends StatelessWidget {
  const _GridTile({
    required this.selected,
    required this.onTap,
    required this.child,
  });

  final bool selected;
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        width: 52,
        height: 52,
        decoration: BoxDecoration(
          color: selected ? scheme.primary : scheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}

class _LabeledSlider extends StatelessWidget {
  const _LabeledSlider({
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.valueText,
    required this.onChanged,
  });

  final String label;
  final double value;
  final double min;
  final double max;
  final String valueText;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 64,
          child: Text(label, style: Theme.of(context).textTheme.labelLarge),
        ),
        Expanded(
          child: Slider(value: value, min: min, max: max, onChanged: onChanged),
        ),
        SizedBox(
          width: 64,
          child: Text(
            valueText,
            textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
