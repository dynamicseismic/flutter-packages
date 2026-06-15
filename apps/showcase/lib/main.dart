import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const ShowcaseApp());
}

/// Unified showcase for the packages in this monorepo:
/// dynamic_haptics, dynamic_icons, dynamic_morphing_icons, dynamic_torph.
class ShowcaseApp extends StatelessWidget {
  const ShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    const seed = Color(0xFF6750A4);
    return MaterialApp(
      title: 'Flutter Packages Showcase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: seed),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: seed,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
