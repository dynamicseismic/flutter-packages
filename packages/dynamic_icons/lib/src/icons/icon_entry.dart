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
}
