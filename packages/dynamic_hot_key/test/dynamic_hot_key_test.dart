import 'package:flutter_test/flutter_test.dart';
import 'package:dynamic_hot_key/dynamic_hot_key.dart';

/// Stand-in for `HotKey` so the registry can be exercised without the native
/// layer or `HotKey`'s private constructor — only the handle matters here.
class _FakeKey {
  _FakeKey(this.handle);
  final int handle;
}

void main() {
  group('HotKeyRegistry', () {
    test('remove() keys off the handle, not object identity', () {
      final registry = HotKeyRegistry<_FakeKey>((k) => k.handle);
      final a = _FakeKey(1);
      final b = _FakeKey(2);
      registry.add(a);
      registry.add(b);
      expect(registry.length, 2);

      // Regression guard: a *different* object carrying the same handle must
      // still remove the entry. Removing by object identity (the old bug) would
      // not match the int-keyed map, leaving the entry — and its callbacks — in
      // place after dispose().
      registry.remove(_FakeKey(1));

      expect(registry.length, 1);
      expect(registry[1], isNull, reason: 'handle 1 should be released');
      expect(registry[2], same(b), reason: 'unrelated entry must remain');
    });

    test('a late event for a removed handle resolves to null (no stale call)',
        () {
      final registry = HotKeyRegistry<_FakeKey>((k) => k.handle);
      final key = _FakeKey(42);
      registry.add(key);
      registry.remove(key);

      // onHotKeyPressed(42) does `registry[42]?.onPressed?.call()`; after
      // removal the lookup is null, so no stale callback fires.
      expect(registry[42], isNull);
      expect(registry.length, 0);
    });
  });
}
