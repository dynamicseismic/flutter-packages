// Generated icon batch 12. Path data: Lucide (ISC). Animation params:
// pqoqubbw/icons (MIT). See LICENSE.
import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

const _fadeIn = OpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Hand offering a heart that lifts and swells.
const DynamicIconData kHandHeartIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart('M11 14h2a2 2 0 1 0 0-4h-3c-.6 0-1.1.2-1.4.6L3 16'),
    IconPart(
      'm7 20 1.6-1.4c.3-.4.8-.6 1.4-.6h4c1.1 0 2.1-.4 2.8-1.2l4.6-4.4a2 2 0 0 0-2.75-2.91l-4.2 3.9',
    ),
    IconPart('m2 15 6 6'),
    IconPart(
      'M19.5 8.5c.7-.7 1.5-1.6 1.5-2.7A2.73 2.73 0 0 0 16 4a2.78 2.78 0 0 0-5 1.8c0 1.2.8 2 1.5 2.8L16 12Z',
      CompositePart([
        TranslatePart(
          [Offset.zero, Offset(0, -2)],
          delay: Duration(milliseconds: 100),
          curve: SpringCurve(stiffness: 200, damping: 25),
        ),
        ScalePart(
          [1, 1.1],
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 200),
        ),
      ]),
    ),
  ],
);

/// Helping hand that nudges up and to the side.
const DynamicIconData kHandHelpingIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart.group([
      'M11 12h2a2 2 0 1 0 0-4h-3c-.6 0-1.1.2-1.4.6L3 14',
      'm7 18 1.6-1.4c.3-.4.8-.6 1.4-.6h4c1.1 0 2.1-.4 2.8-1.2l4.6-4.4a2 2 0 0 0-2.75-2.91l-4.2 3.9',
      'm2 13 6 6',
    ], TranslatePart([Offset.zero, Offset(2, -2), Offset.zero])),
  ],
);

/// Metal-horns hand that rocks back and forth.
const DynamicIconData kHandMetalIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart.group([
      'M18 12.5V10a2 2 0 0 0-2-2a2 2 0 0 0-2 2v1.4',
      'M14 11V9a2 2 0 1 0-4 0v2',
      'M10 10.5V5a2 2 0 1 0-4 0v9',
      'm7 15-1.76-1.76a2 2 0 0 0-2.83 2.82l3.6 3.6C7.5 21.14 9.2 22 12 22h2a8 8 0 0 0 8-8V7a2 2 0 1 0-4 0v5',
    ], RotatePart([0, -15, 15, -10, 10, 0], pivot: Offset(12, 21.6))),
  ],
);

/// Hard drive with a download arrow that springs down into the tray.
const DynamicIconData kHardDriveDownloadIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M4 14h18a2 2 0 0 1 2 2v4a2 2 0 0 1 -2 2h-18a2 2 0 0 1 -2 -2v-4a2 2 0 0 1 2 -2z',
    ),
    IconPart('M6 18h.01'),
    IconPart('M10 18h.01'),
    IconPart.group(
      ['M12 2v8', 'm16 6-4 4-4-4'],
      TranslatePart([
        Offset(0, -1),
        Offset.zero,
      ], curve: SpringCurve(stiffness: 200, damping: 10)),
    ),
  ],
);

/// Hard drive with an upload arrow that springs up out of the tray.
const DynamicIconData kHardDriveUploadIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M4 14h18a2 2 0 0 1 2 2v4a2 2 0 0 1 -2 2h-18a2 2 0 0 1 -2 -2v-4a2 2 0 0 1 2 -2z',
    ),
    IconPart('M6 18h.01'),
    IconPart('M10 18h.01'),
    IconPart.group(
      ['m16 6-4-4-4 4', 'M12 2v8'],
      TranslatePart([
        Offset.zero,
        Offset(0, -1),
      ], curve: SpringCurve(stiffness: 200, damping: 10)),
    ),
  ],
);

/// Heart-handshake that gives a little squeeze and wobble.
const DynamicIconData kHeartHandshakeIcon = DynamicIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart(
      'M19.414 14.414C21 12.828 22 11.5 22 9.5a5.5 5.5 0 0 0-9.591-3.676.6.6 0 0 1-.818.001A5.5 5.5 0 0 0 2 9.5c0 2.3 1.5 4 3 5.5l5.535 5.362a2 2 0 0 0 2.879.052 2.12 2.12 0 0 0-.004-3 2.124 2.124 0 1 0 3-3 2.124 2.124 0 0 0 3.004 0 2 2 0 0 0 0-2.828l-1.881-1.882a2.41 2.41 0 0 0-3.409 0l-1.71 1.71a2 2 0 0 1-2.828 0 2 2 0 0 1 0-2.828l2.823-2.762',
      CompositePart([
        ScalePart([1, 0.9, 1, 1, 1, 1, 1], pivot: kViewBoxCenter),
        RotatePart([0, 0, 0, -7, 7, -3, 0], pivot: kViewBoxCenter),
      ]),
    ),
  ],
);

/// History clock: the arrow swings back while the hands wind backward.
const DynamicIconData kHistoryIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart.group(
      ['M3 12a9 9 0 1 0 9-9 9.75 9.75 0 0 0-6.74 2.74L3 8', 'M3 3v5h5'],
      RotatePart(
        [0, -50],
        pivot: kViewBoxCenter,
        curve: SpringCurve(stiffness: 250, damping: 25),
      ),
    ),
    IconPart(
      'M12 12 12 7',
      RotatePart([0, -360], pivot: Offset(12, 12), curve: Curves.fastOutSlowIn),
    ),
    IconPart('M12 12 16 14', RotatePart([0, -45], pivot: Offset(12, 12))),
  ],
);

/// Home: the door draws itself in beneath the static roof.
const DynamicIconData kHomeIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M3 10a2 2 0 0 1 .709-1.528l7-5.999a2 2 0 0 1 2.582 0l7 5.999A2 2 0 0 1 21 10v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z',
    ),
    IconPart(
      'M15 21v-8a1 1 0 0 0-1-1h-4a1 1 0 0 0-1 1v8',
      CompositePart([DrawPart(), _fadeIn]),
    ),
  ],
);

/// Hourglass that flips a half-turn with a spring.
const DynamicIconData kHourglassIcon = DynamicIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart.group(
      [
        'M5 22h14',
        'M5 2h14',
        'M17 22v-4.172a2 2 0 0 0-.586-1.414L12 12l-4.414 4.414A2 2 0 0 0 7 17.828V22',
        'M7 2v4.172a2 2 0 0 0 .586 1.414L12 12l4.414-4.414A2 2 0 0 0 17 6.172V2',
      ],
      RotatePart(
        [0, 180],
        pivot: kViewBoxCenter,
        curve: SpringCurve(stiffness: 100, damping: 15),
      ),
    ),
  ],
);

/// ID card whose details draw in, one after another.
const DynamicIconData kIdCardIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M4 5h16a2 2 0 0 1 2 2v10a2 2 0 0 1 -2 2h-16a2 2 0 0 1 -2 -2v-10a2 2 0 0 1 2 -2z',
    ),
    IconPart(
      'M6.17 15a3 3 0 0 1 5.66 0',
      CompositePart([DrawPart(duration: Duration(milliseconds: 300)), _fadeIn]),
    ),
    IconPart(
      'M7 11a2 2 0 1 0 4 0 2 2 0 1 0 -4 0',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 300),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'M16 10h2',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 300),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'M16 14h2',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 300),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
  ],
);

/// Indian rupee symbol that draws itself, the lower bars trailing behind.
const DynamicIconData kIndianRupeeIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M9 3c6.667 0 6.667 10 0 10',
      CompositePart([DrawPart(duration: Duration(milliseconds: 600)), _fadeIn]),
    ),
    IconPart(
      'M9 13h-3',
      CompositePart([DrawPart(duration: Duration(milliseconds: 600)), _fadeIn]),
    ),
    IconPart(
      'm14.5 21 -8.5 -8',
      CompositePart([DrawPart(duration: Duration(milliseconds: 600)), _fadeIn]),
    ),
    IconPart(
      'M18 3h-12',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 500),
          duration: Duration(milliseconds: 400),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 500),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'M18 8h-12',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 500),
          duration: Duration(milliseconds: 400),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 500),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
  ],
);

/// Instagram glyph that draws itself on.
const DynamicIconData kInstagramIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M7 2h10a5 5 0 0 1 5 5v10a5 5 0 0 1 -5 5h-10a5 5 0 0 1 -5 -5v-10a5 5 0 0 1 5 -5z',
      CompositePart([DrawPart(), _fadeIn]),
    ),
    IconPart(
      'M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z',
      CompositePart([DrawPart(), _fadeIn]),
    ),
    IconPart('M17.5 6.5 L17.51 6.5', CompositePart([DrawPart(), _fadeIn])),
  ],
);

/// Italic glyph whose three strokes draw themselves on.
const DynamicIconData kItalicIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M19 4 L10 4',
      CompositePart([DrawPart(duration: Duration(milliseconds: 200)), _fadeIn]),
    ),
    IconPart(
      'M14 20 L5 20',
      CompositePart([DrawPart(duration: Duration(milliseconds: 200)), _fadeIn]),
    ),
    IconPart(
      'M15 4 L9 20',
      DrawPart(
        delay: Duration(milliseconds: 100),
        duration: Duration(milliseconds: 400),
      ),
    ),
  ],
);

/// Japanese yen symbol that draws itself, bars trailing behind.
const DynamicIconData kJapaneseYenIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M12 9.5V21m0-11.5L6 3m6 6.5L18 3',
      CompositePart([DrawPart(duration: Duration(milliseconds: 600)), _fadeIn]),
    ),
    IconPart(
      'M18 11h-12',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 500),
          duration: Duration(milliseconds: 400),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 500),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'M18 15h-12',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 500),
          duration: Duration(milliseconds: 400),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 500),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
  ],
);

/// Key that wiggles like it's turning in a lock.
const DynamicIconData kKeyIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart.group([
      'm15.5 7.5 2.3 2.3a1 1 0 0 0 1.4 0l2.1-2.1a1 1 0 0 0 0-1.4L19 4',
      'm21 2-9.6 9.6',
      'M2 15.5a5.5 5.5 0 1 0 11 0a5.5 5.5 0 1 0 -11 0',
    ], RotatePart([-3, -33, -25, -28], pivot: Offset(7.2, 16.8))),
  ],
);

/// Circular key that bobs up and rocks side to side.
const DynamicIconData kKeyCircleIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart.group(
      [
        'M2.586 17.414A2 2 0 0 0 2 18.828V21a1 1 0 0 0 1 1h3a1 1 0 0 0 1-1v-1a1 1 0 0 1 1-1h1a1 1 0 0 0 1-1v-1a1 1 0 0 1 1-1h.172a2 2 0 0 0 1.414-.586l.814-.814a6.5 6.5 0 1 0-4-4z',
        'M16 7.5a.5 .5 0 1 0 1 0a.5 .5 0 1 0 -1 0',
      ],
      CompositePart([
        TranslatePart([
          Offset.zero,
          Offset(0, -3),
          Offset.zero,
          Offset(0, -2),
          Offset.zero,
        ]),
        RotatePart([0, 3, -3, 0], pivot: kViewBoxCenter),
      ]),
    ),
  ],
);

/// Square key that swings and gives a little pop.
const DynamicIconData kKeySquareIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart.group(
      [
        'M12.4 2.7a2.5 2.5 0 0 1 3.4 0l5.5 5.5a2.5 2.5 0 0 1 0 3.4l-3.7 3.7a2.5 2.5 0 0 1-3.4 0L8.7 9.8a2.5 2.5 0 0 1 0-3.4z',
        'm14 7 3 3',
        'm9.4 10.6-6.814 6.814A2 2 0 0 0 2 18.828V21a1 1 0 0 0 1 1h3a1 1 0 0 0 1-1v-1a1 1 0 0 1 1-1h1a1 1 0 0 0 1-1v-1a1 1 0 0 1 1-1h.172a2 2 0 0 0 1.414-.586l.814-.814',
      ],
      CompositePart([
        RotatePart([0, 15, -15, 0], pivot: kViewBoxCenter),
        ScalePart([1, 1.05, 1, 1], pivot: kViewBoxCenter),
      ]),
    ),
  ],
);

/// Keyboard whose keys flicker like they're being typed.
const DynamicIconData kKeyboardIcon = DynamicIconData(
  duration: Duration(milliseconds: 1200),
  parts: [
    IconPart(
      'M4 4h16a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-16a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2z',
    ),
    IconPart('M10 8h.01', OpacityPart([1, 0.2, 1])),
    IconPart(
      'M12 12h.01',
      OpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 120)),
    ),
    IconPart(
      'M14 8h.01',
      OpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 240)),
    ),
    IconPart(
      'M16 12h.01',
      OpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 180)),
    ),
    IconPart(
      'M18 8h.01',
      OpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 300)),
    ),
    IconPart(
      'M6 8h.01',
      OpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 60)),
    ),
    IconPart(
      'M7 16h10',
      OpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 360)),
    ),
    IconPart(
      'M8 12h.01',
      OpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 90)),
    ),
  ],
);

/// Languages glyph whose strokes draw on in a cascade.
const DynamicIconData kLanguagesIcon = DynamicIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart(
      'M7 2h1',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 500)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 50)),
      ]),
    ),
    IconPart(
      'M2 5h12',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 500),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 50),
        ),
      ]),
    ),
    IconPart(
      'm4 14 6-6 3-3',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 500),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 50),
        ),
      ]),
    ),
    IconPart(
      'm5 8 6 6',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 500),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 50),
        ),
      ]),
    ),
    IconPart(
      'm22 22-5-10-5 10',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 500),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 50),
        ),
      ]),
    ),
    IconPart(
      'M14 18h6',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 500),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 50),
        ),
      ]),
    ),
  ],
);

/// Laptop with a check mark that draws itself on.
const DynamicIconData kLaptopMinimalCheckIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart('M2 20h20'),
    IconPart(
      'M5 4h14a2 2 0 0 1 2 2v8a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-8a2 2 0 0 1 2 -2z',
    ),
    IconPart(
      'm9 10 2 2 4-4',
      CompositePart([DrawPart(duration: Duration(milliseconds: 400)), _fadeIn]),
    ),
  ],
);

const List<IconEntry> gen12Icons = [
  IconEntry('hand-heart', kHandHeartIcon, ['hand', 'heart', 'give', 'love']),
  IconEntry('hand-helping', kHandHelpingIcon, [
    'hand',
    'help',
    'support',
    'assist',
  ]),
  IconEntry('hand-metal', kHandMetalIcon, ['hand', 'metal', 'rock', 'horns']),
  IconEntry('hard-drive-download', kHardDriveDownloadIcon, [
    'hard',
    'drive',
    'download',
    'storage',
  ]),
  IconEntry('hard-drive-upload', kHardDriveUploadIcon, [
    'hard',
    'drive',
    'upload',
    'storage',
  ]),
  IconEntry('heart-handshake', kHeartHandshakeIcon, [
    'heart',
    'handshake',
    'deal',
    'love',
    'agreement',
  ]),
  IconEntry('history', kHistoryIcon, [
    'history',
    'clock',
    'undo',
    'time',
    'revert',
  ]),
  IconEntry('home', kHomeIcon, ['home', 'house', 'main', 'start']),
  IconEntry('hourglass', kHourglassIcon, [
    'hourglass',
    'time',
    'wait',
    'loading',
  ]),
  IconEntry('id-card', kIdCardIcon, [
    'id',
    'card',
    'identity',
    'badge',
    'profile',
  ]),
  IconEntry('indian-rupee', kIndianRupeeIcon, [
    'indian',
    'rupee',
    'currency',
    'money',
    'inr',
  ]),
  IconEntry('instagram', kInstagramIcon, [
    'instagram',
    'social',
    'photo',
    'logo',
  ]),
  IconEntry('italic', kItalicIcon, ['italic', 'text', 'format', 'style']),
  IconEntry('japanese-yen', kJapaneseYenIcon, [
    'japanese',
    'yen',
    'currency',
    'money',
    'jpy',
  ]),
  IconEntry('key', kKeyIcon, ['key', 'unlock', 'password', 'access']),
  IconEntry('key-circle', kKeyCircleIcon, [
    'key',
    'circle',
    'unlock',
    'access',
  ]),
  IconEntry('key-square', kKeySquareIcon, [
    'key',
    'square',
    'unlock',
    'access',
  ]),
  IconEntry('keyboard', kKeyboardIcon, ['keyboard', 'type', 'input', 'keys']),
  IconEntry('languages', kLanguagesIcon, [
    'languages',
    'translate',
    'locale',
    'i18n',
  ]),
  IconEntry('laptop-minimal-check', kLaptopMinimalCheckIcon, [
    'laptop',
    'check',
    'verified',
    'computer',
  ]),
];
