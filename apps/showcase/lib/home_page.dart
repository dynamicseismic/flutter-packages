import 'package:flutter/material.dart';
import 'package:dynamic_morphing_icons/dynamic_morphing_icons.dart';
import 'package:dynamic_lucide_icons/dynamic_lucide_icons.dart';
import 'package:dynamic_torph/dynamic_torph.dart';

import 'demos/haptics_demo.dart';
import 'demos/lucide_icons_demo.dart';
import 'demos/morphing_icons_demo.dart';
import 'demos/torph_demo.dart';

/// Landing page: one card per package, each opening its demo.
///
/// The cards use the packages themselves for flair — an animated Lucide icon, a
/// morphing icon, and a morphing-text app-bar title.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final entries = <_DemoEntry>[
      _DemoEntry(
        title: 'Haptics',
        subtitle: 'Presets & custom vibration patterns',
        leading: const Icon(Icons.vibration, size: 28),
        builder: (_) => const HapticsDemo(),
      ),
      _DemoEntry(
        title: 'Animated Lucide Icons',
        subtitle: 'Hover / tap micro-animations',
        leading: const AnimatedLucideIcon(
          icon: kSparklesIcon,
          size: 28,
          trigger: AnimationTrigger.none,
        ),
        builder: (_) => const LucideIconsDemo(),
      ),
      _DemoEntry(
        title: 'Morphing Icons',
        subtitle: 'Every icon is three lines',
        leading: const MorphingIcon(icon: MorphIcons.menu, size: 28),
        builder: (_) => const MorphingIconsDemo(),
      ),
      _DemoEntry(
        title: 'Torph',
        subtitle: 'Animated text morphing',
        leading: const Icon(Icons.text_fields, size: 28),
        builder: (_) => const TorphDemo(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const TextMorph('Flutter Packages'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: entries.length,
        separatorBuilder: (_, _) => const SizedBox(height: 12),
        itemBuilder: (context, i) {
          final e = entries[i];
          return Card(
            clipBehavior: Clip.antiAlias,
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              leading: SizedBox(width: 32, child: Center(child: e.leading)),
              title: Text(e.title),
              subtitle: Text(e.subtitle),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute<void>(builder: e.builder),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _DemoEntry {
  const _DemoEntry({
    required this.title,
    required this.subtitle,
    required this.leading,
    required this.builder,
  });

  final String title;
  final String subtitle;
  final Widget leading;
  final WidgetBuilder builder;
}
