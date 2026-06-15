import 'dart:ui' show Offset;

import 'morph_icon.dart';

/// The rotation groups used by the built-in icons.
///
/// Members of the same group are the same shape at a different angle, so they
/// morph by rotation rather than by coordinate interpolation. See
/// [DynamicMorphIcon.rotationGroup].
enum DynamicMorphRotationGroup { arrows, chevrons, plusCross }

/// The built-in catalogue of morphable icons.
///
/// Every icon is exactly three [DynamicMorphLine]s. Icons that need fewer collapse the
/// extras to [DynamicMorphLine.hidden] (an invisible point at the centre), so any icon
/// shares the same three-line skeleton as any other and can morph into it.
///
/// The four arrows, the four chevrons, and plus/cross are defined on a shared
/// base shape and distinguished only by [DynamicMorphIcon.rotationDegrees] (see
/// [DynamicMorphRotationGroup]) so they rotate into one another instead of warping.
abstract final class DynamicMorphIcons {
  // ---------------------------------------------------------------------------
  // Standalone shapes (morph by coordinate interpolation).
  // ---------------------------------------------------------------------------

  /// Three horizontal bars — the hamburger menu.
  static const DynamicMorphIcon menu = DynamicMorphIcon('menu', [
    DynamicMorphLine(Offset(4, 7), Offset(20, 7)),
    DynamicMorphLine(Offset(4, 12), Offset(20, 12)),
    DynamicMorphLine(Offset(4, 17), Offset(20, 17)),
  ]);

  /// A single horizontal bar.
  static const DynamicMorphIcon minus = DynamicMorphIcon('minus', [
    DynamicMorphLine(Offset(4, 12), Offset(20, 12)),
    DynamicMorphLine.hidden,
    DynamicMorphLine.hidden,
  ]);

  /// Two horizontal bars.
  static const DynamicMorphIcon equals = DynamicMorphIcon('equals', [
    DynamicMorphLine(Offset(4, 9), Offset(20, 9)),
    DynamicMorphLine(Offset(4, 15), Offset(20, 15)),
    DynamicMorphLine.hidden,
  ]);

  /// Three lines crossing the centre at 60° increments — a six-point asterisk.
  static const DynamicMorphIcon asterisk = DynamicMorphIcon('asterisk', [
    DynamicMorphLine(Offset(12, 4), Offset(12, 20)),
    DynamicMorphLine(Offset(5.07, 8), Offset(18.93, 16)),
    DynamicMorphLine(Offset(18.93, 8), Offset(5.07, 16)),
  ]);

  /// Three dots, `...`. Each is a zero-length round-capped line.
  static const DynamicMorphIcon more = DynamicMorphIcon('more', [
    DynamicMorphLine.dot(Offset(6, 12)),
    DynamicMorphLine.dot(Offset(12, 12)),
    DynamicMorphLine.dot(Offset(18, 12)),
  ]);

  /// A check mark — two legs, the third line collapsed.
  static const DynamicMorphIcon check = DynamicMorphIcon('check', [
    DynamicMorphLine(Offset(5, 13), Offset(10, 18)),
    DynamicMorphLine(Offset(10, 18), Offset(19, 7)),
    DynamicMorphLine.hidden,
  ]);

  /// A play triangle — three lines sharing endpoints.
  static const DynamicMorphIcon play = DynamicMorphIcon('play', [
    DynamicMorphLine(Offset(8, 5), Offset(19, 12)),
    DynamicMorphLine(Offset(19, 12), Offset(8, 19)),
    DynamicMorphLine(Offset(8, 19), Offset(8, 5)),
  ]);

  /// Two vertical bars — pause.
  static const DynamicMorphIcon pause = DynamicMorphIcon('pause', [
    DynamicMorphLine(Offset(9, 5), Offset(9, 19)),
    DynamicMorphLine(Offset(15, 5), Offset(15, 19)),
    DynamicMorphLine.hidden,
  ]);

  /// A downward arrow (shaft + V head) — download.
  static const DynamicMorphIcon download = DynamicMorphIcon('download', [
    DynamicMorphLine(Offset(12, 4), Offset(12, 16)),
    DynamicMorphLine(Offset(7, 11), Offset(12, 16)),
    DynamicMorphLine(Offset(17, 11), Offset(12, 16)),
  ]);

  /// An upward arrow — upload.
  static const DynamicMorphIcon upload = DynamicMorphIcon('upload', [
    DynamicMorphLine(Offset(12, 20), Offset(12, 8)),
    DynamicMorphLine(Offset(7, 13), Offset(12, 8)),
    DynamicMorphLine(Offset(17, 13), Offset(12, 8)),
  ]);

  /// A diagonal arrow pointing up-right — external link.
  static const DynamicMorphIcon external = DynamicMorphIcon('external', [
    DynamicMorphLine(Offset(7, 17), Offset(17, 7)),
    DynamicMorphLine(Offset(9, 7), Offset(17, 7)),
    DynamicMorphLine(Offset(17, 15), Offset(17, 7)),
  ]);

  /// A scan / viewfinder frame — four corner brackets. The only built-in icon
  /// that needs more than three lines (eight, two per corner). When it morphs
  /// into a simpler icon the engine pads the other side with hidden lines, so
  /// the extra segments simply shrink to the centre and fade out.
  static const DynamicMorphIcon scan = DynamicMorphIcon('scan', [
    // top-left
    DynamicMorphLine(Offset(5, 10), Offset(5, 5)),
    DynamicMorphLine(Offset(5, 5), Offset(10, 5)),
    // top-right
    DynamicMorphLine(Offset(14, 5), Offset(19, 5)),
    DynamicMorphLine(Offset(19, 5), Offset(19, 10)),
    // bottom-right
    DynamicMorphLine(Offset(19, 14), Offset(19, 19)),
    DynamicMorphLine(Offset(19, 19), Offset(14, 19)),
    // bottom-left
    DynamicMorphLine(Offset(10, 19), Offset(5, 19)),
    DynamicMorphLine(Offset(5, 19), Offset(5, 14)),
  ]);

  // ---------------------------------------------------------------------------
  // Plus / cross — a rotation group, 45° apart.
  // Base shape is the plus; cross is the same lines rotated 45°.
  // ---------------------------------------------------------------------------

  static const List<DynamicMorphLine> _plusBase = [
    DynamicMorphLine(Offset(12, 4), Offset(12, 20)),
    DynamicMorphLine(Offset(4, 12), Offset(20, 12)),
    DynamicMorphLine.hidden,
  ];

  /// A plus sign.
  static const DynamicMorphIcon plus = DynamicMorphIcon(
    'plus',
    _plusBase,
    rotationGroup: DynamicMorphRotationGroup.plusCross,
    rotationDegrees: 0,
  );

  /// A cross / close (×) — the plus rotated 45°.
  static const DynamicMorphIcon cross = DynamicMorphIcon(
    'cross',
    _plusBase,
    rotationGroup: DynamicMorphRotationGroup.plusCross,
    rotationDegrees: 45,
  );

  // ---------------------------------------------------------------------------
  // Arrows — a rotation group, 90° apart. Base points right.
  // ---------------------------------------------------------------------------

  static const List<DynamicMorphLine> _arrowBase = [
    DynamicMorphLine(Offset(4, 12), Offset(20, 12)), // shaft
    DynamicMorphLine(Offset(13, 5), Offset(20, 12)), // head, upper
    DynamicMorphLine(Offset(13, 19), Offset(20, 12)), // head, lower
  ];

  /// Arrow pointing right.
  static const DynamicMorphIcon arrowRight = DynamicMorphIcon(
    'arrowRight',
    _arrowBase,
    rotationGroup: DynamicMorphRotationGroup.arrows,
    rotationDegrees: 0,
  );

  /// Arrow pointing down.
  static const DynamicMorphIcon arrowDown = DynamicMorphIcon(
    'arrowDown',
    _arrowBase,
    rotationGroup: DynamicMorphRotationGroup.arrows,
    rotationDegrees: 90,
  );

  /// Arrow pointing left.
  static const DynamicMorphIcon arrowLeft = DynamicMorphIcon(
    'arrowLeft',
    _arrowBase,
    rotationGroup: DynamicMorphRotationGroup.arrows,
    rotationDegrees: 180,
  );

  /// Arrow pointing up.
  static const DynamicMorphIcon arrowUp = DynamicMorphIcon(
    'arrowUp',
    _arrowBase,
    rotationGroup: DynamicMorphRotationGroup.arrows,
    rotationDegrees: 270,
  );

  // ---------------------------------------------------------------------------
  // Chevrons — a rotation group, 90° apart. Same idea as arrows, no shaft.
  // ---------------------------------------------------------------------------

  static const List<DynamicMorphLine> _chevronBase = [
    DynamicMorphLine(Offset(9, 6), Offset(16, 12)),
    DynamicMorphLine(Offset(16, 12), Offset(9, 18)),
    DynamicMorphLine.hidden,
  ];

  /// Chevron pointing right.
  static const DynamicMorphIcon chevronRight = DynamicMorphIcon(
    'chevronRight',
    _chevronBase,
    rotationGroup: DynamicMorphRotationGroup.chevrons,
    rotationDegrees: 0,
  );

  /// Chevron pointing down.
  static const DynamicMorphIcon chevronDown = DynamicMorphIcon(
    'chevronDown',
    _chevronBase,
    rotationGroup: DynamicMorphRotationGroup.chevrons,
    rotationDegrees: 90,
  );

  /// Chevron pointing left.
  static const DynamicMorphIcon chevronLeft = DynamicMorphIcon(
    'chevronLeft',
    _chevronBase,
    rotationGroup: DynamicMorphRotationGroup.chevrons,
    rotationDegrees: 180,
  );

  /// Chevron pointing up.
  static const DynamicMorphIcon chevronUp = DynamicMorphIcon(
    'chevronUp',
    _chevronBase,
    rotationGroup: DynamicMorphRotationGroup.chevrons,
    rotationDegrees: 270,
  );

  /// Every built-in icon, in the same order as the original article.
  static const List<DynamicMorphIcon> all = [
    menu,
    cross,
    plus,
    minus,
    equals,
    asterisk,
    more,
    check,
    play,
    pause,
    download,
    upload,
    external,
    arrowRight,
    arrowDown,
    arrowLeft,
    arrowUp,
    chevronRight,
    chevronDown,
    chevronLeft,
    chevronUp,
    scan,
  ];
}
