import '../core/icon_part.dart';

/// A catalog entry: an icon's kebab-case [name], its [data], and search
/// [keywords].
class LucideIconEntry {
  const LucideIconEntry(this.name, this.data, this.keywords);

  final String name;
  final LucideIconData data;
  final List<String> keywords;

  /// The `k…Icon` identifier of the const for this icon
  /// (e.g. `bell` → `kBellIcon`, `arrow-down` → `kArrowDownIcon`).
  String get constName {
    final camel = name
        .split('-')
        .asMap()
        .entries
        .map((e) => e.key == 0
            ? e.value
            : '${e.value[0].toUpperCase()}${e.value.substring(1)}')
        .join();
    return 'k${camel[0].toUpperCase()}${camel.substring(1)}Icon';
  }
}
