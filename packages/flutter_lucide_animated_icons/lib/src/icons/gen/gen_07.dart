// Generated icon batch 07. Overwritten by the batch agent.
//
// Path data: Lucide (ISC). Animation params: pqoqubbw/icons (MIT).
// See ATTRIBUTION.md.
import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Concierge bell: the bell rings (rotate jitter) while the stem dips and
/// faint sound waves bloom out.
const LucideIconData kConciergeBellIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart('M3 20a1 1 0 0 1-1-1v-1a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1Z'),
    IconPart.group(
      [
        'M20 16a8 8 0 1 0-16 0',
        'M10 4h4',
        'M12 4v4',
      ],
      RotatePart([0, -2, 2, -2, 2, -1, 1, 0],
          pivot: Offset(12, 16),
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 280)),
    ),
    IconPart.group(
      ['M2 13a7 7 0 0 1 1-3.5', 'M21 13a7 7 0 0 0-1-3.5'],
      OpacityPart([0, 1, 0],
          delay: Duration(milliseconds: 130),
          duration: Duration(milliseconds: 670),
          curve: Curves.easeOut),
    ),
  ],
);

/// Connect: the plug and socket halves slide apart along the diagonal.
const LucideIconData kConnectIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart('M19 5l3 -3'),
    IconPart('m2 22 3-3'),
    IconPart(
      'M6.3 20.3a2.4 2.4 0 0 0 3.4 0L12 18l-6-6-2.3 2.3a2.4 2.4 0 0 0 0 3.4Z',
      TranslatePart([Offset.zero, Offset(3, -3)],
          curve: SpringCurve(stiffness: 500, damping: 30)),
    ),
    IconPart('M7.5 13.5 l2.5 -2.5'),
    IconPart('M10.5 16.5 l2.5 -2.5'),
    IconPart(
      'm12 6 6 6 2.3-2.3a2.4 2.4 0 0 0 0-3.4l-2.6-2.6a2.4 2.4 0 0 0-3.4 0Z',
      TranslatePart([Offset.zero, Offset(-3, 3)],
          curve: SpringCurve(stiffness: 500, damping: 30)),
    ),
  ],
);

/// Construction barrier with a gentle pulse (source animates a striped fill
/// pattern, which a stroke engine cannot show — approximated as a soft pulse).
const LucideIconData kConstructionIcon = LucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart(
      'M3 6h18a1 1 0 0 1 1 1v6a1 1 0 0 1 -1 1h-18a1 1 0 0 1 -1 -1v-6a1 1 0 0 1 1 -1z',
      ScalePart([1, 1.06, 1], pivot: Offset(12, 10)),
    ),
    IconPart('M17 14v7'),
    IconPart('M7 14v7'),
    IconPart('M17 3v3'),
    IconPart('M7 3v3'),
  ],
);

/// Contrast: the filled half-disc flips 180° about the disc centre.
const LucideIconData kContrastIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    IconPart(
      'M12 18a6 6 0 0 0 0-12v12z',
      RotatePart([0, 180],
          pivot: Offset(6, 12), curve: SpringCurve(stiffness: 80, damping: 12)),
    ),
  ],
);

/// Cooking pot: the lid rocks back and forth while the pot swells.
const LucideIconData kCookingPotIcon = LucideIconData(
  duration: Duration(milliseconds: 950),
  parts: [
    IconPart.group(
      [
        'M2 12h20',
        'M20 12v8a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2v-8',
      ],
      ScalePart([1, 1.08, 1], pivot: Offset(12, 16)),
    ),
    IconPart.group(
      [
        'm4 8 16-4',
        'm8.86 6.78-.45-1.81a2 2 0 0 1 1.45-2.43l1.94-.48a2 2 0 0 1 2.43 1.46l.45 1.8',
      ],
      RotatePart([0, -14, 14, -10, 10, -6, 6, 0], pivot: Offset(18, 6)),
    ),
  ],
);

/// Copy: the top sheet springs up and to the left, lifting off the stack.
const LucideIconData kCopyIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2',
      TranslatePart([Offset.zero, Offset(3, 3)],
          curve: SpringCurve(stiffness: 160, damping: 17)),
    ),
    IconPart(
      'M10 8h10a2 2 0 0 1 2 2v10a2 2 0 0 1 -2 2h-10a2 2 0 0 1 -2 -2v-10a2 2 0 0 1 2 -2z',
      TranslatePart([Offset.zero, Offset(-3, -3)],
          curve: SpringCurve(stiffness: 160, damping: 17)),
    ),
  ],
);

/// Corner-down-right arrow that stretches horizontally and nudges right.
const LucideIconData kCornerDownRightIcon = LucideIconData(
  duration: Duration(milliseconds: 450),
  parts: [
    IconPart.group(
      ['m15 10 5 5-5 5', 'M4 4v7a4 4 0 0 0 4 4h12'],
      CompositePart([
        ScalePart([1, 1.15, 1],
            axis: ScaleAxis.horizontal, pivot: kViewBoxCenter),
        TranslatePart([Offset.zero, Offset(2, 0), Offset.zero]),
      ]),
    ),
  ],
);

/// Corner-left-down arrow that stretches vertically and nudges down.
const LucideIconData kCornerLeftDownIcon = LucideIconData(
  duration: Duration(milliseconds: 450),
  parts: [
    IconPart.group(
      ['m14 15-5 5-5-5', 'M20 4h-7a4 4 0 0 0-4 4v12'],
      CompositePart([
        ScalePart([1, 1.15, 1],
            axis: ScaleAxis.vertical, pivot: kViewBoxCenter),
        TranslatePart([Offset.zero, Offset(0, 2), Offset.zero]),
      ]),
    ),
  ],
);

/// Corner-left-up arrow that stretches vertically and nudges up.
const LucideIconData kCornerLeftUpIcon = LucideIconData(
  duration: Duration(milliseconds: 450),
  parts: [
    IconPart.group(
      ['M14 9 9 4 4 9', 'M20 20h-7a4 4 0 0 1-4-4V4'],
      CompositePart([
        ScalePart([1, 1.15, 1],
            axis: ScaleAxis.vertical, pivot: kViewBoxCenter),
        TranslatePart([Offset.zero, Offset(0, -2), Offset.zero]),
      ]),
    ),
  ],
);

/// Corner-right-down arrow that stretches vertically and nudges down.
const LucideIconData kCornerRightDownIcon = LucideIconData(
  duration: Duration(milliseconds: 450),
  parts: [
    IconPart.group(
      ['m10 15 5 5 5-5', 'M4 4h7a4 4 0 0 1 4 4v12'],
      CompositePart([
        ScalePart([1, 1.15, 1],
            axis: ScaleAxis.vertical, pivot: kViewBoxCenter),
        TranslatePart([Offset.zero, Offset(0, 2), Offset.zero]),
      ]),
    ),
  ],
);

/// Corner-right-up arrow that stretches vertically and nudges up.
const LucideIconData kCornerRightUpIcon = LucideIconData(
  duration: Duration(milliseconds: 450),
  parts: [
    IconPart.group(
      ['m10 9 5-5 5 5', 'M4 20h7a4 4 0 0 0 4-4V4'],
      CompositePart([
        ScalePart([1, 1.15, 1],
            axis: ScaleAxis.vertical, pivot: kViewBoxCenter),
        TranslatePart([Offset.zero, Offset(0, -2), Offset.zero]),
      ]),
    ),
  ],
);

/// Corner-up-left arrow that stretches horizontally and nudges left.
const LucideIconData kCornerUpLeftIcon = LucideIconData(
  duration: Duration(milliseconds: 450),
  parts: [
    IconPart.group(
      ['M20 20v-7a4 4 0 0 0-4-4H4', 'M9 14 4 9l5-5'],
      CompositePart([
        ScalePart([1, 1.15, 1],
            axis: ScaleAxis.horizontal, pivot: kViewBoxCenter),
        TranslatePart([Offset.zero, Offset(-2, 0), Offset.zero]),
      ]),
    ),
  ],
);

/// Corner-up-right arrow that stretches horizontally and nudges right.
const LucideIconData kCornerUpRightIcon = LucideIconData(
  duration: Duration(milliseconds: 450),
  parts: [
    IconPart.group(
      ['m15 14 5-5-5-5', 'M4 20v-7a4 4 0 0 1 4-4h12'],
      CompositePart([
        ScalePart([1, 1.15, 1],
            axis: ScaleAxis.horizontal, pivot: kViewBoxCenter),
        TranslatePart([Offset.zero, Offset(2, 0), Offset.zero]),
      ]),
    ),
  ],
);

/// CPU: the perimeter pins flex outward (vertical pins stretch vertically,
/// horizontal pins stretch horizontally) with a fade.
const LucideIconData kCpuIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
        'M6 4h12a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-12a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2z'),
    IconPart(
        'M10 9h4a1 1 0 0 1 1 1v4a1 1 0 0 1 -1 1h-4a1 1 0 0 1 -1 -1v-4a1 1 0 0 1 1 -1z'),
    IconPart(
      'M15 2v2',
      CompositePart([
        ScalePart([1, 1.5, 1], axis: ScaleAxis.vertical, pivot: Offset(15, 4)),
        OpacityPart([1, 0.8, 1]),
      ]),
    ),
    IconPart(
      'M15 20v2',
      CompositePart([
        ScalePart([1, 1.5, 1], axis: ScaleAxis.vertical, pivot: Offset(15, 20)),
        OpacityPart([1, 0.8, 1]),
      ]),
    ),
    IconPart(
      'M2 15h2',
      CompositePart([
        ScalePart([1, 1.5, 1], axis: ScaleAxis.horizontal, pivot: Offset(4, 15)),
        OpacityPart([1, 0.8, 1]),
      ]),
    ),
    IconPart(
      'M2 9h2',
      CompositePart([
        ScalePart([1, 1.5, 1], axis: ScaleAxis.horizontal, pivot: Offset(4, 9)),
        OpacityPart([1, 0.8, 1]),
      ]),
    ),
    IconPart(
      'M20 15h2',
      CompositePart([
        ScalePart([1, 1.5, 1], axis: ScaleAxis.horizontal, pivot: Offset(20, 15)),
        OpacityPart([1, 0.8, 1]),
      ]),
    ),
    IconPart(
      'M20 9h2',
      CompositePart([
        ScalePart([1, 1.5, 1], axis: ScaleAxis.horizontal, pivot: Offset(20, 9)),
        OpacityPart([1, 0.8, 1]),
      ]),
    ),
    IconPart(
      'M9 2v2',
      CompositePart([
        ScalePart([1, 1.5, 1], axis: ScaleAxis.vertical, pivot: Offset(9, 4)),
        OpacityPart([1, 0.8, 1]),
      ]),
    ),
    IconPart(
      'M9 20v2',
      CompositePart([
        ScalePart([1, 1.5, 1], axis: ScaleAxis.vertical, pivot: Offset(9, 20)),
        OpacityPart([1, 0.8, 1]),
      ]),
    ),
  ],
);

/// Credit card that shakes side to side, as if being swiped.
const LucideIconData kCreditCardIcon = LucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart.group(
      [
        'M4 5h16a2 2 0 0 1 2 2v10a2 2 0 0 1 -2 2h-16a2 2 0 0 1 -2 -2v-10a2 2 0 0 1 2 -2z',
        'M2 10 L22 10',
      ],
      TranslatePart([Offset.zero, Offset(-4, 0), Offset(1.5, 0), Offset.zero]),
    ),
  ],
);

/// Cup of soda: the straw bobs and the surface wave ripples up and back.
const LucideIconData kCupSodaIcon = LucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart('m6 8 1.75 12.28a2 2 0 0 0 2 1.72h4.54a2 2 0 0 0 2-1.72L18 8'),
    IconPart('M5 8h14'),
    IconPart(
      'M7 15a6.47 6.47 0 0 1 5 0 6.47 6.47 0 0 0 5 0',
      TranslatePart([Offset.zero, Offset(0, -1), Offset.zero]),
    ),
    IconPart(
      'm12 8 1-6h2',
      TranslatePart([Offset.zero, Offset(0, -0.85), Offset(0, 0.15), Offset.zero],
          curve: Cubic(0.34, 1.56, 0.64, 1)),
    ),
  ],
);

/// Cursor-click: the pointer hops, then click ticks ping outward.
const LucideIconData kCursorClickIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart(
      'M9.037 9.69a.498.498 0 0 1 .653-.653l11 4.5a.5.5 0 0 1-.074.949l-4.349 1.041a1 1 0 0 0-.74.739l-1.04 4.35a.5.5 0 0 1-.95.074z',
      TranslatePart([
        Offset.zero,
        Offset(0, -4),
        Offset(-3, 0),
        Offset.zero,
      ]),
    ),
    IconPart(
      'M14 4.1 12 6',
      OpacityPart([0, 1, 0, 0, 0, 0, 1],
          delay: Duration(milliseconds: 300), curve: Curves.easeOut),
    ),
    IconPart(
      'm5.1 8-2.9-.8',
      OpacityPart([0, 1, 0, 0, 0, 0, 1],
          delay: Duration(milliseconds: 300), curve: Curves.easeOut),
    ),
    IconPart(
      'm6 12-1.9 2',
      OpacityPart([0, 1, 0, 0, 0, 0, 1],
          delay: Duration(milliseconds: 300), curve: Curves.easeOut),
    ),
    IconPart(
      'M7.2 2.2 8 5.1',
      OpacityPart([0, 1, 0, 0, 0, 0, 1],
          delay: Duration(milliseconds: 300), curve: Curves.easeOut),
    ),
  ],
);

/// Database backup: the restore arrow loop spins a full turn.
const LucideIconData kDatabaseBackupIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('M3 5a9 3 0 1 0 18 0a9 3 0 1 0 -18 0'),
    IconPart('M3 12a9 3 0 0 0 5 2.69'),
    IconPart('M21 9.3V5'),
    IconPart('M3 5v14a9 3 0 0 0 6.47 2.88'),
    IconPart.group(
      [
        'M12 12v4h4',
        'M13 20a5 5 0 0 0 9-3 4.5 4.5 0 0 0-4.5-4.5c-1.33 0-2.54.54-3.41 1.41L12 16',
      ],
      RotatePart([0, 360], pivot: Offset(17.5, 17)),
    ),
  ],
);

/// Delete (backspace): the lid lifts and the body nudges as the key is pressed.
const LucideIconData kDeleteIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart.group(
      [
        'M3 6h18',
        'M8 6V4c0-1 1-2 2-2h4c1 0 2 1 2 2v2',
      ],
      TranslatePart([Offset.zero, Offset(0, -1.1)],
          curve: SpringCurve(stiffness: 500, damping: 30)),
    ),
    IconPart(
      'M19 8v12c0 1-1 2-2 2H7c-1 0-2-1-2-2V8',
      TranslatePart([Offset.zero, Offset(0, 1)],
          curve: SpringCurve(stiffness: 500, damping: 30)),
    ),
    IconPart(
      'M10 11 L10 17',
      TranslatePart([Offset.zero, Offset(0, 0.5)],
          curve: SpringCurve(stiffness: 500, damping: 30)),
    ),
    IconPart(
      'M14 11 L14 17',
      TranslatePart([Offset.zero, Offset(0, 0.5)],
          curve: SpringCurve(stiffness: 500, damping: 30)),
    ),
  ],
);

/// Disc 3: the inner highlight arcs spin a quarter turn, like a spinning disc.
const LucideIconData kDisc3Icon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    IconPart('M10 12a2 2 0 1 0 4 0a2 2 0 1 0 -4 0'),
    IconPart.group(
      [
        'M6 12c0-1.7.7-3.2 1.8-4.2',
        'M18 12c0 1.7-.7 3.2-1.8 4.2',
      ],
      RotatePart([0, 90], pivot: kViewBoxCenter),
    ),
  ],
);

const List<LucideIconEntry> gen07Icons = [
  LucideIconEntry('concierge-bell', kConciergeBellIcon,
      ['bell', 'service', 'hotel', 'reception', 'ring']),
  LucideIconEntry('connect', kConnectIcon,
      ['plug', 'socket', 'link', 'join', 'wire']),
  LucideIconEntry('construction', kConstructionIcon,
      ['barrier', 'roadblock', 'warning', 'work', 'sign']),
  LucideIconEntry('contrast', kContrastIcon,
      ['circle', 'brightness', 'display', 'half', 'theme']),
  LucideIconEntry('cooking-pot', kCookingPotIcon,
      ['pot', 'cook', 'kitchen', 'food', 'lid']),
  LucideIconEntry('copy', kCopyIcon,
      ['duplicate', 'clipboard', 'paste', 'sheets', 'clone']),
  LucideIconEntry('corner-down-right', kCornerDownRightIcon,
      ['arrow', 'corner', 'direction', 'turn']),
  LucideIconEntry('corner-left-down', kCornerLeftDownIcon,
      ['arrow', 'corner', 'direction', 'turn']),
  LucideIconEntry('corner-left-up', kCornerLeftUpIcon,
      ['arrow', 'corner', 'direction', 'turn']),
  LucideIconEntry('corner-right-down', kCornerRightDownIcon,
      ['arrow', 'corner', 'direction', 'turn']),
  LucideIconEntry('corner-right-up', kCornerRightUpIcon,
      ['arrow', 'corner', 'direction', 'turn']),
  LucideIconEntry('corner-up-left', kCornerUpLeftIcon,
      ['arrow', 'corner', 'direction', 'turn']),
  LucideIconEntry('corner-up-right', kCornerUpRightIcon,
      ['arrow', 'corner', 'direction', 'turn']),
  LucideIconEntry('cpu', kCpuIcon,
      ['processor', 'chip', 'hardware', 'computer', 'core']),
  LucideIconEntry('credit-card', kCreditCardIcon,
      ['payment', 'card', 'money', 'bank', 'pay']),
  LucideIconEntry('cup-soda', kCupSodaIcon,
      ['drink', 'soda', 'beverage', 'cup', 'straw']),
  LucideIconEntry('cursor-click', kCursorClickIcon,
      ['pointer', 'click', 'mouse', 'select', 'tap']),
  LucideIconEntry('database-backup', kDatabaseBackupIcon,
      ['database', 'backup', 'restore', 'data', 'storage']),
  LucideIconEntry('delete', kDeleteIcon,
      ['backspace', 'remove', 'erase', 'key', 'trash']),
  LucideIconEntry('disc-3', kDisc3Icon,
      ['disc', 'cd', 'vinyl', 'music', 'record']),
];
