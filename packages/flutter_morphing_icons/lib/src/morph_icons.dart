import 'dart:ui' show Offset;

import 'morph_icon.dart';

/// The rotation groups used by the built-in icons.
///
/// Members of the same group are the same shape at a different angle, so they
/// morph by rotation rather than by coordinate interpolation. See
/// [MorphIcon.rotationGroup].
enum MorphRotationGroup { arrows, chevrons, plusCross }

/// The built-in catalogue of morphable icons.
///
/// Every icon is exactly three [MorphLine]s. Icons that need fewer collapse the
/// extras to [MorphLine.hidden] (an invisible point at the centre), so any icon
/// shares the same three-line skeleton as any other and can morph into it.
///
/// The four arrows, the four chevrons, and plus/cross are defined on a shared
/// base shape and distinguished only by [MorphIcon.rotationDegrees] (see
/// [MorphRotationGroup]) so they rotate into one another instead of warping.
abstract final class MorphIcons {
  // ---------------------------------------------------------------------------
  // Standalone shapes (morph by coordinate interpolation).
  // ---------------------------------------------------------------------------

  /// Three horizontal bars — the hamburger menu.
  static const MorphIcon menu = MorphIcon('menu', [
    MorphLine(Offset(4, 7), Offset(20, 7)),
    MorphLine(Offset(4, 12), Offset(20, 12)),
    MorphLine(Offset(4, 17), Offset(20, 17)),
  ]);

  /// A single horizontal bar.
  static const MorphIcon minus = MorphIcon('minus', [
    MorphLine(Offset(4, 12), Offset(20, 12)),
    MorphLine.hidden,
    MorphLine.hidden,
  ]);

  /// Two horizontal bars.
  static const MorphIcon equals = MorphIcon('equals', [
    MorphLine(Offset(4, 9), Offset(20, 9)),
    MorphLine(Offset(4, 15), Offset(20, 15)),
    MorphLine.hidden,
  ]);

  /// Three lines crossing the centre at 60° increments — a six-point asterisk.
  static const MorphIcon asterisk = MorphIcon('asterisk', [
    MorphLine(Offset(12, 4), Offset(12, 20)),
    MorphLine(Offset(5.07, 8), Offset(18.93, 16)),
    MorphLine(Offset(18.93, 8), Offset(5.07, 16)),
  ]);

  /// Three dots, `...`. Each is a zero-length round-capped line.
  static const MorphIcon more = MorphIcon('more', [
    MorphLine.dot(Offset(6, 12)),
    MorphLine.dot(Offset(12, 12)),
    MorphLine.dot(Offset(18, 12)),
  ]);

  /// A check mark — two legs, the third line collapsed.
  static const MorphIcon check = MorphIcon('check', [
    MorphLine(Offset(5, 13), Offset(10, 18)),
    MorphLine(Offset(10, 18), Offset(19, 7)),
    MorphLine.hidden,
  ]);

  /// A play triangle — three lines sharing endpoints.
  static const MorphIcon play = MorphIcon('play', [
    MorphLine(Offset(8, 5), Offset(19, 12)),
    MorphLine(Offset(19, 12), Offset(8, 19)),
    MorphLine(Offset(8, 19), Offset(8, 5)),
  ]);

  /// Two vertical bars — pause.
  static const MorphIcon pause = MorphIcon('pause', [
    MorphLine(Offset(9, 5), Offset(9, 19)),
    MorphLine(Offset(15, 5), Offset(15, 19)),
    MorphLine.hidden,
  ]);

  /// A downward arrow (shaft + V head) — download.
  static const MorphIcon download = MorphIcon('download', [
    MorphLine(Offset(12, 4), Offset(12, 16)),
    MorphLine(Offset(7, 11), Offset(12, 16)),
    MorphLine(Offset(17, 11), Offset(12, 16)),
  ]);

  /// An upward arrow — upload.
  static const MorphIcon upload = MorphIcon('upload', [
    MorphLine(Offset(12, 20), Offset(12, 8)),
    MorphLine(Offset(7, 13), Offset(12, 8)),
    MorphLine(Offset(17, 13), Offset(12, 8)),
  ]);

  /// A diagonal arrow pointing up-right — external link.
  static const MorphIcon external = MorphIcon('external', [
    MorphLine(Offset(7, 17), Offset(17, 7)),
    MorphLine(Offset(9, 7), Offset(17, 7)),
    MorphLine(Offset(17, 15), Offset(17, 7)),
  ]);

  /// A scan / viewfinder frame — four corner brackets. The only built-in icon
  /// that needs more than three lines (eight, two per corner). When it morphs
  /// into a simpler icon the engine pads the other side with hidden lines, so
  /// the extra segments simply shrink to the centre and fade out.
  static const MorphIcon scan = MorphIcon('scan', [
    // top-left
    MorphLine(Offset(5, 10), Offset(5, 5)),
    MorphLine(Offset(5, 5), Offset(10, 5)),
    // top-right
    MorphLine(Offset(14, 5), Offset(19, 5)),
    MorphLine(Offset(19, 5), Offset(19, 10)),
    // bottom-right
    MorphLine(Offset(19, 14), Offset(19, 19)),
    MorphLine(Offset(19, 19), Offset(14, 19)),
    // bottom-left
    MorphLine(Offset(10, 19), Offset(5, 19)),
    MorphLine(Offset(5, 19), Offset(5, 14)),
  ]);

  // ---------------------------------------------------------------------------
  // Plus / cross — a rotation group, 45° apart.
  // Base shape is the plus; cross is the same lines rotated 45°.
  // ---------------------------------------------------------------------------

  static const List<MorphLine> _plusBase = [
    MorphLine(Offset(12, 4), Offset(12, 20)),
    MorphLine(Offset(4, 12), Offset(20, 12)),
    MorphLine.hidden,
  ];

  /// A plus sign.
  static const MorphIcon plus = MorphIcon(
    'plus',
    _plusBase,
    rotationGroup: MorphRotationGroup.plusCross,
    rotationDegrees: 0,
  );

  /// A cross / close (×) — the plus rotated 45°.
  static const MorphIcon cross = MorphIcon(
    'cross',
    _plusBase,
    rotationGroup: MorphRotationGroup.plusCross,
    rotationDegrees: 45,
  );

  // ---------------------------------------------------------------------------
  // Arrows — a rotation group, 90° apart. Base points right.
  // ---------------------------------------------------------------------------

  static const List<MorphLine> _arrowBase = [
    MorphLine(Offset(4, 12), Offset(20, 12)), // shaft
    MorphLine(Offset(13, 5), Offset(20, 12)), // head, upper
    MorphLine(Offset(13, 19), Offset(20, 12)), // head, lower
  ];

  /// Arrow pointing right.
  static const MorphIcon arrowRight = MorphIcon(
    'arrowRight',
    _arrowBase,
    rotationGroup: MorphRotationGroup.arrows,
    rotationDegrees: 0,
  );

  /// Arrow pointing down.
  static const MorphIcon arrowDown = MorphIcon(
    'arrowDown',
    _arrowBase,
    rotationGroup: MorphRotationGroup.arrows,
    rotationDegrees: 90,
  );

  /// Arrow pointing left.
  static const MorphIcon arrowLeft = MorphIcon(
    'arrowLeft',
    _arrowBase,
    rotationGroup: MorphRotationGroup.arrows,
    rotationDegrees: 180,
  );

  /// Arrow pointing up.
  static const MorphIcon arrowUp = MorphIcon(
    'arrowUp',
    _arrowBase,
    rotationGroup: MorphRotationGroup.arrows,
    rotationDegrees: 270,
  );

  // ---------------------------------------------------------------------------
  // Chevrons — a rotation group, 90° apart. Same idea as arrows, no shaft.
  // ---------------------------------------------------------------------------

  static const List<MorphLine> _chevronBase = [
    MorphLine(Offset(9, 6), Offset(16, 12)),
    MorphLine(Offset(16, 12), Offset(9, 18)),
    MorphLine.hidden,
  ];

  /// Chevron pointing right.
  static const MorphIcon chevronRight = MorphIcon(
    'chevronRight',
    _chevronBase,
    rotationGroup: MorphRotationGroup.chevrons,
    rotationDegrees: 0,
  );

  /// Chevron pointing down.
  static const MorphIcon chevronDown = MorphIcon(
    'chevronDown',
    _chevronBase,
    rotationGroup: MorphRotationGroup.chevrons,
    rotationDegrees: 90,
  );

  /// Chevron pointing left.
  static const MorphIcon chevronLeft = MorphIcon(
    'chevronLeft',
    _chevronBase,
    rotationGroup: MorphRotationGroup.chevrons,
    rotationDegrees: 180,
  );

  /// Chevron pointing up.
  static const MorphIcon chevronUp = MorphIcon(
    'chevronUp',
    _chevronBase,
    rotationGroup: MorphRotationGroup.chevrons,
    rotationDegrees: 270,
  );

  /// Every built-in icon, in the same order as the original article.
  static const List<MorphIcon> all = [
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
