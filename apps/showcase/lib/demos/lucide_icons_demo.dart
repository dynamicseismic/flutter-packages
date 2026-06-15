import 'package:flutter/material.dart';
import 'package:dynamic_icons/lucide.dart';

/// Demonstrates [DynamicIcon]:
///   * a controller-driven hero icon (play / reverse / loop / stop / reset),
///   * a searchable grid over the full [lucideIcons] catalog, each cell
///     animating on hover (desktop) / tap (mobile).
class LucideIconsDemo extends StatefulWidget {
  const LucideIconsDemo({super.key});

  @override
  State<LucideIconsDemo> createState() => _LucideIconsDemoState();
}

class _LucideIconsDemoState extends State<LucideIconsDemo> {
  final IconController _controller = IconController();
  final TextEditingController _search = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  List<IconEntry> get _filtered {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) return lucideIcons;
    return lucideIcons
        .where(
          (e) => e.name.contains(q) || e.keywords.any((k) => k.contains(q)),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final results = _filtered;

    return Scaffold(
      appBar: AppBar(title: const Text('Lucide Icons')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    DynamicIcon(
                      icon: LucideIcons.bell,
                      size: 48,
                      controller: _controller,
                      trigger: AnimationTrigger.none,
                      color: theme.colorScheme.primary,
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
                            onPressed: _controller.reverse,
                            child: const Text('Reverse'),
                          ),
                          OutlinedButton(
                            onPressed: _controller.loop,
                            child: const Text('Loop'),
                          ),
                          OutlinedButton(
                            onPressed: _controller.stop,
                            child: const Text('Stop'),
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
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: _search,
              onChanged: (v) => setState(() => _query = v),
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Search ${lucideIcons.length} icons…',
                prefixIcon: const Icon(Icons.search),
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Hover on desktop · tap on mobile'),
            ),
          ),
          Expanded(
            child: results.isEmpty
                ? const Center(child: Text('No icons match your search.'))
                : GridView.builder(
                    padding: const EdgeInsets.all(16),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 110,
                          mainAxisExtent: 96,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                    itemCount: results.length,
                    itemBuilder: (context, i) {
                      final entry = results[i];
                      return Card(
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () {
                            ScaffoldMessenger.of(context)
                              ..clearSnackBars()
                              ..showSnackBar(
                                SnackBar(
                                  duration: const Duration(seconds: 1),
                                  content: Text(entry.constName),
                                ),
                              );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DynamicIcon(icon: entry.data, size: 30),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                                child: Text(
                                  entry.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
