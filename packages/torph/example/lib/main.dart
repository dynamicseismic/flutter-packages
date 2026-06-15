import 'dart:async';

import 'package:flutter/material.dart';
import 'package:torph/torph.dart';

void main() => runApp(const TorphApp());

class TorphApp extends StatelessWidget {
  const TorphApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Torph — Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7C5CFF),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF0E0E12),
      ),
      home: const Playground(),
    );
  }
}

// Single words (no spaces) morph letter-by-letter, so shared letters glide
// between them — e.g. Hello -> Goodbye keeps and slides the 'e' and 'o'.
const _letterPresets = <String>[
  'Hello',
  'Goodbye',
  'catalog',
  'database',
  'flutter',
  'morphing',
];

// Phrases (with spaces) morph word-by-word. Sharing 'the'/'fox' keeps those
// words and only swaps the middle one.
const _wordPresets = <String>[
  'the quick fox',
  'the lazy fox',
  'the brown dog',
];

class Playground extends StatefulWidget {
  const Playground({super.key});

  @override
  State<Playground> createState() => _PlaygroundState();
}

class _PlaygroundState extends State<Playground> {
  final _controller = TextEditingController(text: 'Hello');
  String _text = 'Hello';

  bool _useSpring = true;
  double _stiffness = 200;
  double _damping = 20;
  double _mass = 1;
  double _cubicMs = 400;

  bool _scale = true;
  bool _debug = false;

  bool _autoCycle = false;
  int _cycleIndex = 0;
  int _counter = 1234;
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  TorphEase get _ease => _useSpring
      ? TorphEase.spring(SpringParams(
          stiffness: _stiffness,
          damping: _damping,
          mass: _mass,
        ))
      : const TorphEase.cubic(Cubic(0.19, 1.0, 0.22, 1.0));

  Duration get _resolvedDuration => _useSpring
      ? resolveSpring(SpringParams(
          stiffness: _stiffness,
          damping: _damping,
          mass: _mass,
        )).duration
      : Duration(milliseconds: _cubicMs.round());

  void _setText(String value) {
    setState(() {
      _text = value;
      if (_controller.text != value) {
        _controller.text = value;
      }
    });
  }

  void _toggleAutoCycle(bool on) {
    setState(() => _autoCycle = on);
    _timer?.cancel();
    if (on) {
      _timer = Timer.periodic(const Duration(milliseconds: 1600), (_) {
        _cycleIndex = (_cycleIndex + 1) % _letterPresets.length;
        _setText(_letterPresets[_cycleIndex]);
      });
    }
  }

  void _bumpCounter(int delta) {
    _counter = (_counter + delta).clamp(0, 99999);
    // Group digits with commas so the morph shuffles separators too.
    final grouped = _counter.toString().replaceAllMapped(
          RegExp(r'(\d)(?=(\d{3})+$)'),
          (m) => '${m[1]},',
        );
    _setText(grouped);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Torph — Flutter'),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 40),
            children: [
              _stage(theme),
              const SizedBox(height: 28),
              _textField(),
              const SizedBox(height: 20),
              _sectionLabel('Morph by letter'),
              const SizedBox(height: 4),
              _hint('Single words share letters — Hello → Goodbye glides the '
                  'shared e and o.'),
              const SizedBox(height: 8),
              _chips(_letterPresets),
              const SizedBox(height: 16),
              _sectionLabel('Morph by word'),
              const SizedBox(height: 4),
              _hint('A space switches to word-level — the shared "the"/"fox" '
                  'stay put while the middle word swaps.'),
              const SizedBox(height: 8),
              _chips(_wordPresets),
              const SizedBox(height: 16),
              _counterRow(),
              const SizedBox(height: 24),
              _sectionLabel('Easing'),
              const SizedBox(height: 8),
              _easeControls(theme),
              const SizedBox(height: 24),
              _sectionLabel('Options'),
              const SizedBox(height: 4),
              _optionToggles(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _stage(ThemeData theme) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Color(0xFF15131F), Color(0xFF0F1320)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: Colors.white.withValues(alpha: 0.06)),
      ),
      child: TextMorph(
        _text,
        ease: _ease,
        duration: Duration(milliseconds: _cubicMs.round()),
        scale: _scale,
        debug: _debug,
        style: TextStyle(
          fontSize: 52,
          fontWeight: FontWeight.w600,
          letterSpacing: -1,
          color: theme.colorScheme.onSurface,
        ),
      ),
    );
  }

  Widget _textField() {
    return TextField(
      controller: _controller,
      onChanged: (v) => setState(() => _text = v),
      decoration: InputDecoration(
        labelText: 'Text',
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => _setText(''),
        ),
      ),
    );
  }

  Widget _chips(List<String> presets) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final p in presets)
          ActionChip(
            label: Text(p),
            onPressed: () => _setText(p),
          ),
      ],
    );
  }

  Widget _hint(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
        height: 1.3,
        color: Colors.white.withValues(alpha: 0.45),
      ),
    );
  }

  Widget _counterRow() {
    return Row(
      children: [
        const Text('Counter morph:'),
        const SizedBox(width: 12),
        IconButton.filledTonal(
          onPressed: () => _bumpCounter(-111),
          icon: const Icon(Icons.remove),
        ),
        const SizedBox(width: 8),
        IconButton.filledTonal(
          onPressed: () => _bumpCounter(111),
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }

  Widget _easeControls(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SegmentedButton<bool>(
          segments: const [
            ButtonSegment(value: true, label: Text('Spring')),
            ButtonSegment(value: false, label: Text('Cubic bezier')),
          ],
          selected: {_useSpring},
          onSelectionChanged: (s) => setState(() => _useSpring = s.first),
        ),
        const SizedBox(height: 8),
        Text(
          'Resolved duration: ${_resolvedDuration.inMilliseconds} ms',
          style: theme.textTheme.bodySmall
              ?.copyWith(color: theme.colorScheme.primary),
        ),
        if (_useSpring) ...[
          _slider('Stiffness', _stiffness, 20, 400,
              (v) => setState(() => _stiffness = v)),
          _slider(
              'Damping', _damping, 2, 40, (v) => setState(() => _damping = v)),
          _slider('Mass', _mass, 0.5, 5, (v) => setState(() => _mass = v)),
        ] else
          _slider('Duration (ms)', _cubicMs, 120, 1200,
              (v) => setState(() => _cubicMs = v)),
      ],
    );
  }

  Widget _slider(String label, double value, double min, double max,
      ValueChanged<double> onChanged) {
    return Row(
      children: [
        SizedBox(width: 96, child: Text(label)),
        Expanded(
          child: Slider(
            value: value,
            min: min,
            max: max,
            onChanged: onChanged,
          ),
        ),
        SizedBox(
          width: 48,
          child: Text(
            value.toStringAsFixed(value < 10 ? 1 : 0),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }

  Widget _optionToggles() {
    return Column(
      children: [
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Scale on enter/exit'),
          value: _scale,
          onChanged: (v) => setState(() => _scale = v),
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Debug outlines'),
          value: _debug,
          onChanged: (v) => setState(() => _debug = v),
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Auto-cycle presets'),
          value: _autoCycle,
          onChanged: _toggleAutoCycle,
        ),
      ],
    );
  }

  Widget _sectionLabel(String text) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(
        fontSize: 12,
        letterSpacing: 1.5,
        fontWeight: FontWeight.w700,
        color: Colors.white.withValues(alpha: 0.5),
      ),
    );
  }
}
