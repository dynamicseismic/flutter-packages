import 'package:flutter/material.dart';
import 'package:dynamic_icons/crypto.dart';

/// Demonstrates the filled crypto / chain marks from `dynamic_icons`:
///   * a controller-driven hero icon (play / loop / reset) with a live shape
///     switch (rounded square / circle / square),
///   * the full [cryptoIcons] catalog, each chip animating on hover (desktop)
///     / tap (mobile).
class CryptoIconsDemo extends StatefulWidget {
  const CryptoIconsDemo({super.key});

  @override
  State<CryptoIconsDemo> createState() => _CryptoIconsDemoState();
}

class _CryptoIconsDemoState extends State<CryptoIconsDemo> {
  final IconController _controller = IconController();
  IconShape _shape = IconShape.roundedSquare;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Crypto Chain Icons')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      DynamicIcon(
                        icon: Crypto.ethereum,
                        size: 72,
                        shape: _shape,
                        controller: _controller,
                        trigger: AnimationTrigger.none,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            FilledButton(
                              onPressed: _controller.play,
                              child: const Text('Play'),
                            ),
                            OutlinedButton(
                              onPressed: _controller.loop,
                              child: const Text('Loop'),
                            ),
                            OutlinedButton(
                              onPressed: _controller.reset,
                              child: const Text('Reset'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SegmentedButton<IconShape>(
                    segments: const [
                      ButtonSegment(
                        value: IconShape.roundedSquare,
                        label: Text('Rounded'),
                      ),
                      ButtonSegment(
                        value: IconShape.circle,
                        label: Text('Circle'),
                      ),
                      ButtonSegment(
                        value: IconShape.square,
                        label: Text('Square'),
                      ),
                    ],
                    selected: {_shape},
                    onSelectionChanged: (s) => setState(() => _shape = s.first),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              'Hover on desktop · tap on mobile',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              for (final entry in cryptoIcons)
                SizedBox(
                  width: 96,
                  child: Column(
                    children: [
                      DynamicIcon(
                        icon: entry.data,
                        size: 64,
                        shape: _shape,
                        semanticLabel: entry.name,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        entry.symbol ?? '',
                        style: theme.textTheme.labelLarge,
                      ),
                      Text(
                        entry.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.outline,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
