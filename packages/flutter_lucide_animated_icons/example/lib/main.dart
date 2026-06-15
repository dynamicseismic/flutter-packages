import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_animated_icons/lucide_animated_icons.dart';

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
      title: 'lucide_animated_icons',
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
          () => _mode = _mode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark,
        ),
      ),
    );
  }
}

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key, required this.isDark, required this.onToggleTheme});

  final bool isDark;
  final VoidCallback onToggleTheme;

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  String _query = '';

  List<LucideIconEntry> get _filtered {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) return lucideAnimatedIcons;
    return lucideAnimatedIcons
        .where((e) =>
            e.name.contains(q) || e.keywords.any((k) => k.contains(q)))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final results = _filtered;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _Header(
              count: results.length,
              isDark: widget.isDark,
              onToggleTheme: widget.onToggleTheme,
              onSearch: (v) => setState(() => _query = v),
            ),
            Expanded(
              child: results.isEmpty
                  ? const Center(child: Text('No icons match your search.'))
                  : GridView.builder(
                      padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 132,
                        mainAxisExtent: 116,
                        crossAxisSpacing: 14,
                        mainAxisSpacing: 14,
                      ),
                      itemCount: results.length,
                      itemBuilder: (context, i) => _IconCell(entry: results[i]),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.count,
    required this.isDark,
    required this.onToggleTheme,
    required this.onSearch,
  });

  final int count;
  final bool isDark;
  final VoidCallback onToggleTheme;
  final ValueChanged<String> onSearch;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const AnimatedLucideIcon(icon: kSparklesIcon, size: 26),
              const SizedBox(width: 10),
              Text('lucide_animated_icons',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w700)),
              const Spacer(),
              IconButton(
                tooltip: isDark ? 'Light mode' : 'Dark mode',
                onPressed: onToggleTheme,
                icon: AnimatedLucideIcon(
                  key: ValueKey(isDark),
                  icon: isDark ? kSunIcon : kMoonIcon,
                  size: 22,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            '$count animated icons · hover or tap to play',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
          const SizedBox(height: 16),
          TextField(
            onChanged: onSearch,
            decoration: InputDecoration(
              hintText: 'Search icons (e.g. bell, sound, arrow)…',
              prefixIcon: const Padding(
                padding: EdgeInsets.all(10),
                child: AnimatedLucideIcon(
                  icon: kSearchIcon,
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
        ],
      ),
    );
  }
}

class _IconCell extends StatefulWidget {
  const _IconCell({required this.entry});

  final LucideIconEntry entry;

  @override
  State<_IconCell> createState() => _IconCellState();
}

class _IconCellState extends State<_IconCell> {
  final _controller = AnimatedLucideIconController();
  bool _hovering = false;

  Future<void> _copy() async {
    await Clipboard.setData(ClipboardData(text: widget.entry.constName));
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text('Copied ${widget.entry.constName}'),
          duration: const Duration(milliseconds: 1200),
          behavior: SnackBarBehavior.floating,
        ),
      );
  }

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
        onTap: () {
          _controller.play();
          _copy();
        },
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
              AnimatedLucideIcon(
                icon: widget.entry.data,
                size: 30,
                controller: _controller,
                // The cell handles hover/tap; disable built-in triggers.
                trigger: AnimationTrigger.none,
                color: scheme.onSurface,
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  widget.entry.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: scheme.outline,
                        fontFeatures: const [FontFeature.tabularFigures()],
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
