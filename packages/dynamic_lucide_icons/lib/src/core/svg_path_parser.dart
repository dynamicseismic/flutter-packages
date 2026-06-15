import 'dart:math' as math;
import 'dart:ui';

/// Parses an SVG path `d` attribute into a [Path].
///
/// Supports the full SVG path grammar used by Lucide icons: `M/m`, `L/l`,
/// `H/h`, `V/v`, `C/c`, `S/s`, `Q/q`, `T/t`, `A/a` and `Z/z`, in both absolute
/// and relative forms, including implicitly repeated commands (e.g.
/// `M0 0 1 1 2 2` is a moveTo followed by two lineTo).
///
/// SVG elliptical arcs map almost 1:1 onto [Path.arcToPoint], so no manual
/// center-parameterisation is required.
///
/// Results are cached by `d` string. [Path] is immutable once built and safe
/// to reuse across paints, so we parse each unique string only once.
class SvgPathParser {
  SvgPathParser._();

  static final Map<String, Path> _cache = <String, Path>{};

  /// Returns a cached [Path] for [d], parsing it on first use.
  static Path parse(String d) =>
      _cache.putIfAbsent(d, () => _Tokenizer(d).run());
}

class _Tokenizer {
  _Tokenizer(this.source);

  final String source;
  final Path path = Path();

  int _pos = 0;

  // Current point.
  double _cx = 0;
  double _cy = 0;
  // Sub-path start (for Z).
  double _sx = 0;
  double _sy = 0;
  // Last control point (for smooth S/T reflection) and the command that set it.
  double _lastCtrlX = 0;
  double _lastCtrlY = 0;
  String _lastCmd = '';

  Path run() {
    while (true) {
      final cmd = _nextCommand();
      if (cmd == null) break;
      _execute(cmd);
    }
    return path;
  }

  void _execute(String cmd) {
    final isRel = cmd == cmd.toLowerCase();
    switch (cmd.toUpperCase()) {
      case 'M':
        // First pair is moveTo, subsequent pairs are implicit lineTo.
        var first = true;
        while (_hasNumber()) {
          final x = _number();
          final y = _number();
          if (first) {
            _cx = isRel ? _cx + x : x;
            _cy = isRel ? _cy + y : y;
            path.moveTo(_cx, _cy);
            _sx = _cx;
            _sy = _cy;
            first = false;
          } else {
            _cx = isRel ? _cx + x : x;
            _cy = isRel ? _cy + y : y;
            path.lineTo(_cx, _cy);
          }
        }
        _lastCmd = 'M';
      case 'L':
        while (_hasNumber()) {
          final x = _number();
          final y = _number();
          _cx = isRel ? _cx + x : x;
          _cy = isRel ? _cy + y : y;
          path.lineTo(_cx, _cy);
        }
        _lastCmd = 'L';
      case 'H':
        while (_hasNumber()) {
          final x = _number();
          _cx = isRel ? _cx + x : x;
          path.lineTo(_cx, _cy);
        }
        _lastCmd = 'H';
      case 'V':
        while (_hasNumber()) {
          final y = _number();
          _cy = isRel ? _cy + y : y;
          path.lineTo(_cx, _cy);
        }
        _lastCmd = 'V';
      case 'C':
        while (_hasNumber()) {
          final x1 = _coord(isRel, _cx, _number());
          final y1 = _coord(isRel, _cy, _number());
          final x2 = _coord(isRel, _cx, _number());
          final y2 = _coord(isRel, _cy, _number());
          final x = _coord(isRel, _cx, _number());
          final y = _coord(isRel, _cy, _number());
          path.cubicTo(x1, y1, x2, y2, x, y);
          _lastCtrlX = x2;
          _lastCtrlY = y2;
          _cx = x;
          _cy = y;
        }
        _lastCmd = 'C';
      case 'S':
        while (_hasNumber()) {
          final reflect = _lastCmd == 'C' || _lastCmd == 'S';
          final x1 = reflect ? 2 * _cx - _lastCtrlX : _cx;
          final y1 = reflect ? 2 * _cy - _lastCtrlY : _cy;
          final x2 = _coord(isRel, _cx, _number());
          final y2 = _coord(isRel, _cy, _number());
          final x = _coord(isRel, _cx, _number());
          final y = _coord(isRel, _cy, _number());
          path.cubicTo(x1, y1, x2, y2, x, y);
          _lastCtrlX = x2;
          _lastCtrlY = y2;
          _cx = x;
          _cy = y;
          _lastCmd = 'S';
        }
      case 'Q':
        while (_hasNumber()) {
          final x1 = _coord(isRel, _cx, _number());
          final y1 = _coord(isRel, _cy, _number());
          final x = _coord(isRel, _cx, _number());
          final y = _coord(isRel, _cy, _number());
          path.quadraticBezierTo(x1, y1, x, y);
          _lastCtrlX = x1;
          _lastCtrlY = y1;
          _cx = x;
          _cy = y;
        }
        _lastCmd = 'Q';
      case 'T':
        while (_hasNumber()) {
          final reflect = _lastCmd == 'Q' || _lastCmd == 'T';
          final x1 = reflect ? 2 * _cx - _lastCtrlX : _cx;
          final y1 = reflect ? 2 * _cy - _lastCtrlY : _cy;
          final x = _coord(isRel, _cx, _number());
          final y = _coord(isRel, _cy, _number());
          path.quadraticBezierTo(x1, y1, x, y);
          _lastCtrlX = x1;
          _lastCtrlY = y1;
          _cx = x;
          _cy = y;
          _lastCmd = 'T';
        }
      case 'A':
        while (_hasNumber()) {
          final rx = _number();
          final ry = _number();
          final rotation = _number();
          final largeArc = _flag();
          final sweep = _flag();
          final x = _coord(isRel, _cx, _number());
          final y = _coord(isRel, _cy, _number());
          // Degenerate radius => straight line (per SVG spec).
          if (rx == 0 || ry == 0) {
            path.lineTo(x, y);
          } else {
            path.arcToPoint(
              Offset(x, y),
              radius: Radius.elliptical(rx.abs(), ry.abs()),
              rotation: rotation,
              largeArc: largeArc,
              clockwise: sweep,
            );
          }
          _cx = x;
          _cy = y;
        }
        _lastCmd = 'A';
      case 'Z':
        path.close();
        _cx = _sx;
        _cy = _sy;
        _lastCmd = 'Z';
    }
  }

  double _coord(bool isRel, double origin, double v) => isRel ? origin + v : v;

  // ---- Lexing helpers ----

  String? _nextCommand() {
    _skipSeparators();
    if (_pos >= source.length) return null;
    final c = source[_pos];
    if (_isCommandChar(c)) {
      _pos++;
      return c;
    }
    // Implicit command repetition: reuse the previous command letter.
    if (_lastCmd.isNotEmpty) return _implicitCmd;
    // Unexpected token; skip it to stay robust.
    _pos++;
    return _nextCommand();
  }

  String get _implicitCmd {
    switch (_lastCmd) {
      case 'M':
        return 'L'; // extra coords after M are lineTo
      default:
        return _lastCmd;
    }
  }

  bool _isCommandChar(String c) => 'MmLlHhVvCcSsQqTtAaZz'.contains(c);

  void _skipSeparators() {
    while (_pos < source.length) {
      final c = source.codeUnitAt(_pos);
      // space, tab, newline, carriage return, comma
      if (c == 0x20 || c == 0x09 || c == 0x0A || c == 0x0D || c == 0x2C) {
        _pos++;
      } else {
        break;
      }
    }
  }

  bool _hasNumber() {
    _skipSeparators();
    if (_pos >= source.length) return false;
    final c = source[_pos];
    if (_isCommandChar(c)) return false;
    return _isNumberStart(c);
  }

  bool _isNumberStart(String c) =>
      (c.codeUnitAt(0) >= 0x30 && c.codeUnitAt(0) <= 0x39) ||
      c == '+' ||
      c == '-' ||
      c == '.';

  /// Reads a flag (single `0` or `1`) used by the arc command. Flags may be
  /// written without separators (e.g. `0 0 1`), so this consumes exactly one
  /// digit.
  bool _flag() {
    _skipSeparators();
    final c = source[_pos];
    _pos++;
    return c == '1';
  }

  double _number() {
    _skipSeparators();
    final start = _pos;
    var seenDot = false;
    var seenExp = false;
    while (_pos < source.length) {
      final ch = source[_pos];
      final code = ch.codeUnitAt(0);
      if (code >= 0x30 && code <= 0x39) {
        _pos++;
      } else if ((ch == '+' || ch == '-')) {
        // Sign only valid at start or right after an exponent marker.
        if (_pos == start || (source[_pos - 1] == 'e' || source[_pos - 1] == 'E')) {
          _pos++;
        } else {
          break;
        }
      } else if (ch == '.' && !seenDot && !seenExp) {
        seenDot = true;
        _pos++;
      } else if ((ch == 'e' || ch == 'E') && !seenExp) {
        seenExp = true;
        _pos++;
      } else {
        break;
      }
    }
    final token = source.substring(start, _pos);
    return double.parse(token);
  }
}

/// Computes the centre of the bounding box of a list of SVG path strings,
/// in the 0..viewBox coordinate space. Used as the default transform pivot,
/// matching Motion's `transform-origin: 50% 50%` for an SVG element/group.
Offset boundsCenter(List<String> pathData) {
  Rect? bounds;
  for (final d in pathData) {
    final b = SvgPathParser.parse(d).getBounds();
    bounds = bounds == null ? b : bounds.expandToInclude(b);
  }
  final r = bounds ?? Rect.zero;
  return r.center;
}

/// Small helper kept here to avoid importing dart:math elsewhere.
double degToRad(double deg) => deg * math.pi / 180.0;
