import 'package:dynamic_icons/dynamic_icons.dart';
import 'package:flutter/material.dart';

void main() => runApp(const GalleryApp());

class GalleryApp extends StatefulWidget {
  const GalleryApp({super.key});

  @override
  State<GalleryApp> createState() => _GalleryAppState();
}

class _GalleryAppState extends State<GalleryApp> {
  ThemeMode _mode = ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dynamic_icons',
      themeMode: _mode,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF6366F1),
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF6366F1),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
      ),
      home: GalleryPage(
        isDark: _mode == ThemeMode.dark,
        onToggleTheme: () => setState(
          () => _mode = _mode == ThemeMode.dark
              ? ThemeMode.light
              : ThemeMode.dark,
        ),
      ),
    );
  }
}

class GalleryPage extends StatefulWidget {
  const GalleryPage({
    super.key,
    required this.isDark,
    required this.onToggleTheme,
  });

  final bool isDark;
  final VoidCallback onToggleTheme;

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  String _query = '';

  List<IconEntry> get _filtered {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) return dynamicIcons;
    return dynamicIcons
        .where(
          (e) =>
              e.name.contains(q) ||
              (e.symbol?.toLowerCase().contains(q) ?? false) ||
              e.keywords.any((k) => k.contains(q)),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final results = _filtered;
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
              child: Row(
                children: [
                  const DynamicIcon(icon: Lucide.sparkles, size: 26),
                  const SizedBox(width: 10),
                  Text(
                    'dynamic_icons',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    tooltip: widget.isDark ? 'Light mode' : 'Dark mode',
                    onPressed: widget.onToggleTheme,
                    icon: DynamicIcon(
                      key: ValueKey(widget.isDark),
                      icon: widget.isDark ? Lucide.sun : Lucide.moon,
                      size: 22,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
              child: TextField(
                onChanged: (v) => setState(() => _query = v),
                decoration: InputDecoration(
                  hintText:
                      'Search ${dynamicIcons.length} icons (bell, eth, sound…)',
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(10),
                    child: DynamicIcon(
                      icon: Lucide.search,
                      size: 20,
                      trigger: AnimationTrigger.none,
                    ),
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 4),
                ),
              ),
            ),
            Expanded(
              child: results.isEmpty
                  ? const Center(child: Text('No icons match your search.'))
                  : GridView.builder(
                      padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 120,
                            mainAxisExtent: 110,
                            crossAxisSpacing: 14,
                            mainAxisSpacing: 14,
                          ),
                      itemCount: results.length,
                      itemBuilder: (context, i) =>
                          _IconCell(entry: results[i], outline: scheme.outline),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IconCell extends StatefulWidget {
  const _IconCell({required this.entry, required this.outline});

  final IconEntry entry;
  final Color outline;

  @override
  State<_IconCell> createState() => _IconCellState();
}

class _IconCellState extends State<_IconCell> {
  final _controller = IconController();
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return MouseRegion(
      onEnter: (_) {
        setState(() => _hovering = true);
        _controller.play();
      },
      onExit: (_) {
        setState(() => _hovering = false);
        _controller.reverse();
      },
      child: GestureDetector(
        onTap: _controller.play,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          decoration: BoxDecoration(
            color: _hovering
                ? scheme.surfaceContainerHighest
                : scheme.surfaceContainerHigh.withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: _hovering
                  ? scheme.primary.withValues(alpha: 0.5)
                  : scheme.outlineVariant,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DynamicIcon(
                icon: widget.entry.data,
                size: 34,
                controller: _controller,
                trigger: AnimationTrigger.none,
                semanticLabel: widget.entry.name,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  widget.entry.symbol ?? widget.entry.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: widget.outline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
