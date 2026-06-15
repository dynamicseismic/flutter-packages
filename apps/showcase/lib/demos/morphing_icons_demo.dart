import 'package:flutter/material.dart';
import 'package:dynamic_morphing_icons/dynamic_morphing_icons.dart';

/// Demonstrates [MorphingIcon]: a hero icon that morphs to the next icon on
/// tap, a picker grid of every [MorphIcons.all] entry, and live speed / stroke
/// controls. Changing the `icon` (via setState) is what drives the morph.
class MorphingIconsDemo extends StatefulWidget {
  const MorphingIconsDemo({super.key});

  @override
  State<MorphingIconsDemo> createState() => _MorphingIconsDemoState();
}

class _MorphingIconsDemoState extends State<MorphingIconsDemo> {
  int _index = 0;
  double _durationMs = 450;
  double _strokeWidth = 2.5;

  MorphIcon get _current => MorphIcons.all[_index];

  void _next() =>
      setState(() => _index = (_index + 1) % MorphIcons.all.length);

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Morphing Icons')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Center(
            child: GestureDetector(
              onTap: _next,
              child: Container(
                width: 180,
                height: 180,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: scheme.surfaceContainerHighest,
                  shape: BoxShape.circle,
                ),
                child: MorphingIcon(
                  icon: _current,
                  size: 88,
                  color: scheme.onSurface,
                  strokeWidth: _strokeWidth * 1.6,
                  duration: Duration(milliseconds: _durationMs.round()),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Center(child: Text(_current.name, style: textTheme.titleMedium)),
          const SizedBox(height: 4),
          Center(
            child: Text(
              'Tap the circle to morph to the next icon',
              style: textTheme.bodySmall,
            ),
          ),
          const SizedBox(height: 24),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: [
              for (var i = 0; i < MorphIcons.all.length; i++)
                _PickerCell(
                  icon: MorphIcons.all[i],
                  selected: i == _index,
                  strokeWidth: _strokeWidth,
                  onTap: () => setState(() => _index = i),
                ),
            ],
          ),
          const SizedBox(height: 24),
          _LabeledSlider(
            label: 'Speed',
            value: _durationMs,
            min: 120,
            max: 1600,
            display: '${_durationMs.round()} ms',
            onChanged: (v) => setState(() => _durationMs = v),
          ),
          _LabeledSlider(
            label: 'Stroke',
            value: _strokeWidth,
            min: 1,
            max: 6,
            display: _strokeWidth.toStringAsFixed(1),
            onChanged: (v) => setState(() => _strokeWidth = v),
          ),
        ],
      ),
    );
  }
}

class _PickerCell extends StatelessWidget {
  const _PickerCell({
    required this.icon,
    required this.selected,
    required this.strokeWidth,
    required this.onTap,
  });

  final MorphIcon icon;
  final bool selected;
  final double strokeWidth;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 52,
        height: 52,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? scheme.primary : scheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(12),
        ),
        child: MorphingIcon(
          icon: icon,
          size: 26,
          strokeWidth: strokeWidth,
          color: selected ? scheme.onPrimary : scheme.onSurface,
        ),
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
    required this.display,
    required this.onChanged,
  });

  final String label;
  final double value;
  final double min;
  final double max;
  final String display;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 64, child: Text(label)),
        Expanded(
          child: Slider(value: value, min: min, max: max, onChanged: onChanged),
        ),
        SizedBox(width: 64, child: Text(display, textAlign: TextAlign.end)),
      ],
    );
  }
}
