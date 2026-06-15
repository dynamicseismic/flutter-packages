import '../core/icon_part.dart';

/// A catalog entry: an icon's kebab-case [name], its [data], search [keywords],
/// and an optional ticker [symbol] (for crypto marks, e.g. `ETH`).
class IconEntry {
  const IconEntry(this.name, this.data, [this.keywords = const <String>[]])
    : symbol = null;

  /// A catalog entry that also carries a ticker [symbol].
  const IconEntry.symbol(
    this.name,
    this.symbol,
    this.data, [
    this.keywords = const <String>[],
  ]);

  final String name;
  final DynamicIconData data;
  final List<String> keywords;

  /// Ticker symbol for crypto marks (e.g. `ETH`), or null for stroke glyphs.
  final String? symbol;

  /// The `k…Icon` identifier of the const for this icon
  /// (e.g. `bell` → `kBellIcon`, `arrow-down` → `kArrowDownIcon`).
  String get constName {
    final camel = name
        .split('-')
        .asMap()
        .entries
        .map(
          (e) => e.key == 0
              ? e.value
              : '${e.value[0].toUpperCase()}${e.value.substring(1)}',
        )
        .join();
    return 'k${camel[0].toUpperCase()}${camel.substring(1)}Icon';
  }
}
