import 'package:flutter/material.dart';
import 'package:dynamic_clipboard/dynamic_clipboard.dart';

/// Demonstrates [SystemClipboard] from `dynamic_clipboard` — writing rich text
/// to, and reading it back from, the OS clipboard through the native Rust+FFI
/// layer in `dynamic_native_extensions`.
///
/// [SystemClipboard.instance] is null where the platform has no implementation,
/// in which case the demo shows a badge and disables the buttons.
class ClipboardDemo extends StatefulWidget {
  const ClipboardDemo({super.key});

  @override
  State<ClipboardDemo> createState() => _ClipboardDemoState();
}

class _ClipboardDemoState extends State<ClipboardDemo> {
  final TextEditingController _input = TextEditingController(
    text: 'Hello from dynamic_clipboard 👋',
  );
  String _readBack = '—';
  String _status = '';

  bool get _available => SystemClipboard.instance != null;

  Future<void> _copy() async {
    final clipboard = SystemClipboard.instance;
    if (clipboard == null) return;
    final item = DataWriterItem()
      ..add(Formats.plainText(_input.text))
      ..add(Formats.htmlText('<i>${_input.text}</i>'));
    try {
      await clipboard.write([item]);
      if (mounted) {
        setState(
          () => _status = 'Copied ${_input.text.length} chars to the clipboard',
        );
      }
    } catch (e) {
      if (mounted) setState(() => _status = 'Copy failed: $e');
    }
  }

  Future<void> _paste() async {
    final clipboard = SystemClipboard.instance;
    if (clipboard == null) return;
    try {
      final reader = await clipboard.read();
      final text = await reader.readValue(Formats.plainText);
      if (mounted) {
        setState(() {
          _readBack = text ?? '(no plain text on the clipboard)';
          _status = 'Read from the clipboard';
        });
      }
    } catch (e) {
      if (mounted) setState(() => _status = 'Paste failed: $e');
    }
  }

  @override
  void dispose() {
    _input.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final available = _available;

    return Scaffold(
      appBar: AppBar(title: const Text('Clipboard')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            color: available
                ? theme.colorScheme.secondaryContainer
                : theme.colorScheme.errorContainer,
            child: ListTile(
              leading: Icon(
                available ? Icons.check_circle : Icons.do_not_disturb_on,
              ),
              title: Text(
                available
                    ? 'System clipboard available'
                    : 'Unavailable on this platform',
              ),
              subtitle: Text(
                _status.isEmpty ? 'Rich text via the native layer' : _status,
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _input,
            minLines: 1,
            maxLines: 3,
            decoration: const InputDecoration(
              labelText: 'Text to copy',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              FilledButton.icon(
                onPressed: available ? _copy : null,
                icon: const Icon(Icons.copy),
                label: const Text('Copy'),
              ),
              FilledButton.tonalIcon(
                onPressed: available ? _paste : null,
                icon: const Icon(Icons.paste),
                label: const Text('Paste'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text('Last read value', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(_readBack, style: theme.textTheme.bodyLarge),
            ),
          ),
          if (!available)
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'Run on macOS, iOS, Android, Windows or Linux to exercise the '
                'native clipboard. The buttons are disabled here.',
              ),
            ),
        ],
      ),
    );
  }
}
