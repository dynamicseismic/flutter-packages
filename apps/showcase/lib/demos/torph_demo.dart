import 'package:flutter/material.dart';
import 'package:torph/torph.dart';

/// Demonstrates [TextMorph]: a live text field bound to a morphing display,
/// letter- and word-level presets, and a choice of spring vs. cubic easing with
/// adjustable parameters.
class TorphDemo extends StatefulWidget {
  const TorphDemo({super.key});

  @override
  State<TorphDemo> createState() => _TorphDemoState();
}

class _TorphDemoState extends State<TorphDemo> {
  final TextEditingController _input = TextEditingController(text: 'Hello');
  String _text = 'Hello';
  bool _useSpring = true;
  double _stiffness = 200;
  double _damping = 20;
  double _mass = 1;
  double _cubicMs = 600;

  TorphEase get _ease => _useSpring
      ? TorphEase.spring(
          SpringParams(
            stiffness: _stiffness,
            damping: _damping,
            mass: _mass,
          ),
        )
      : const TorphEase.cubic(Cubic(0.19, 1, 0.22, 1));

  void _setText(String value) {
    _input.text = value;
    setState(() => _text = value);
  }

  @override
  void dispose() {
    _input.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Torph — text morphing')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            height: 160,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: theme.colorScheme.surfaceContainerHighest,
            ),
            child: TextMorph(
              _text.isEmpty ? ' ' : _text,
              duration: Duration(milliseconds: _cubicMs.round()),
              ease: _ease,
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onSurface,
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _input,
            onChanged: (v) => setState(() => _text = v),
            decoration: const InputDecoration(
              labelText: 'Type to morph',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          Text('Single words morph letter-by-letter',
              style: theme.textTheme.bodySmall),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: [
              for (final p in const ['Hello', 'Goodbye', 'flutter', 'morphing'])
                ActionChip(label: Text(p), onPressed: () => _setText(p)),
            ],
          ),
          const SizedBox(height: 12),
          Text('Phrases morph word-by-word', style: theme.textTheme.bodySmall),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: [
              for (final p in const [
                'the quick fox',
                'the lazy fox',
                'the brown dog',
              ])
                ActionChip(label: Text(p), onPressed: () => _setText(p)),
            ],
          ),
          const Divider(height: 40),
          Text('Easing', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          SegmentedButton<bool>(
            segments: const [
              ButtonSegment(
                value: true,
                label: Text('Spring'),
                icon: Icon(Icons.waves),
              ),
              ButtonSegment(
                value: false,
                label: Text('Cubic'),
                icon: Icon(Icons.show_chart),
              ),
            ],
            selected: {_useSpring},
            onSelectionChanged: (s) => setState(() => _useSpring = s.first),
          ),
          const SizedBox(height: 8),
          if (_useSpring) ...[
            _slider('Stiffness', _stiffness, 20, 400, (v) => _stiffness = v),
            _slider('Damping', _damping, 2, 40, (v) => _damping = v),
            _slider('Mass', _mass, 0.5, 5, (v) => _mass = v),
          ] else
            _slider('Duration', _cubicMs, 120, 1500, (v) => _cubicMs = v),
        ],
      ),
    );
  }

  Widget _slider(
    String label,
    double value,
    double min,
    double max,
    ValueChanged<double> apply,
  ) {
    return Row(
      children: [
        SizedBox(width: 88, child: Text(label)),
        Expanded(
          child: Slider(
            value: value,
            min: min,
            max: max,
            onChanged: (v) => setState(() => apply(v)),
          ),
        ),
        SizedBox(
          width: 48,
          child: Text(
            value.toStringAsFixed(value < 10 ? 1 : 0),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
