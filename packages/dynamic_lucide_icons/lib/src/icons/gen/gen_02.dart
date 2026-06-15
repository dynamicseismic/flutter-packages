// Generated icon batch 02. Overwritten by the batch agent.
//
// Path data: Lucide (ISC). Animation params: pqoqubbw/icons (MIT).
// See ATTRIBUTION.md.
import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Big down arrow that bobs downward.
const DynamicLucideIconData kArrowBigDownIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M15 6v6h4l-7 7-7-7h4V6h6z',
      DynamicTranslatePart([Offset.zero, Offset(0, 3), Offset.zero]),
    ),
  ],
);

/// Big down arrow with a dash; dash nudges, arrow bobs further.
const DynamicLucideIconData kArrowBigDownDashIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M15 5H9',
      DynamicTranslatePart([Offset.zero, Offset(0, 1), Offset.zero]),
    ),
    DynamicIconPart(
      'M15 9v3h4l-7 7-7-7h4V9z',
      DynamicTranslatePart([Offset.zero, Offset(0, 3), Offset.zero]),
    ),
  ],
);

/// Big left arrow that bobs leftward.
const DynamicLucideIconData kArrowBigLeftIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M18 15h-6v4l-7-7 7-7v4h6v6z',
      DynamicTranslatePart([Offset.zero, Offset(-3, 0), Offset.zero]),
    ),
  ],
);

/// Big left arrow with a dash; dash nudges, arrow bobs further.
const DynamicLucideIconData kArrowBigLeftDashIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M19 15V9',
      DynamicTranslatePart([Offset.zero, Offset(-1, 0), Offset.zero]),
    ),
    DynamicIconPart(
      'M15 15h-3v4l-7-7 7-7v4h3v6z',
      DynamicTranslatePart([Offset.zero, Offset(-3, 0), Offset.zero]),
    ),
  ],
);

/// Big right arrow that bobs rightward.
const DynamicLucideIconData kArrowBigRightIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M6 9h6V5l7 7-7 7v-4H6V9z',
      DynamicTranslatePart([Offset.zero, Offset(3, 0), Offset.zero]),
    ),
  ],
);

/// Big right arrow with a dash; dash nudges, arrow bobs further.
const DynamicLucideIconData kArrowBigRightDashIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M5 9v6',
      DynamicTranslatePart([Offset.zero, Offset(1, 0), Offset.zero]),
    ),
    DynamicIconPart(
      'M9 9h3V5l7 7-7 7v-4H9V9z',
      DynamicTranslatePart([Offset.zero, Offset(3, 0), Offset.zero]),
    ),
  ],
);

/// Big up arrow that bobs upward.
const DynamicLucideIconData kArrowBigUpIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M9 18v-6H5l7-7 7 7h-4v6H9z',
      DynamicTranslatePart([Offset.zero, Offset(0, -3), Offset.zero]),
    ),
  ],
);

/// Big up arrow with a dash; dash nudges, arrow bobs further.
const DynamicLucideIconData kArrowBigUpDashIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M9 19h6',
      DynamicTranslatePart([Offset.zero, Offset(0, -1), Offset.zero]),
    ),
    DynamicIconPart(
      'M9 15v-3H5l7-7 7 7h-4v3H9z',
      DynamicTranslatePart([Offset.zero, Offset(0, -3), Offset.zero]),
    ),
  ],
);

const _swapSpring = DynamicSpringCurve(stiffness: 240, damping: 24);

/// Sort 0-1: the down arrow stays; the "0" and "1" glyphs swap vertically.
const DynamicLucideIconData kArrowDown01Icon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('m3 16 4 4 4-4'),
    DynamicIconPart('M7 20V4'),
    DynamicIconPart(
      'M17 4h0a2 2 0 0 1 2 2v2a2 2 0 0 1 -2 2h-0a2 2 0 0 1 -2 -2v-2a2 2 0 0 1 2 -2z',
      DynamicTranslatePart([Offset.zero, Offset(0, 10)], curve: _swapSpring),
    ),
    DynamicIconPart.group(
      ['M17 20v-6h-2', 'M15 20h4'],
      DynamicTranslatePart([Offset.zero, Offset(0, -10)], curve: _swapSpring),
    ),
  ],
);

/// Sort 1-0: the down arrow stays; the "1" and "0" glyphs swap vertically.
const DynamicLucideIconData kArrowDown10Icon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('m3 16 4 4 4-4'),
    DynamicIconPart('M7 20V4'),
    DynamicIconPart.group(
      ['M17 10V4h-2', 'M15 10h4'],
      DynamicTranslatePart([Offset.zero, Offset(0, 10)], curve: _swapSpring),
    ),
    DynamicIconPart(
      'M17 14h0a2 2 0 0 1 2 2v2a2 2 0 0 1 -2 2h-0a2 2 0 0 1 -2 -2v-2a2 2 0 0 1 2 -2z',
      DynamicTranslatePart([Offset.zero, Offset(0, -10)], curve: _swapSpring),
    ),
  ],
);

/// Sort A-Z: the down arrow stays; the "A" and "Z" glyphs swap vertically.
const DynamicLucideIconData kArrowDownAZIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('m3 16 4 4 4-4'),
    DynamicIconPart('M7 20V4'),
    DynamicIconPart.group(
      ['M20 8h-5', 'M15 10V6.5a2.5 2.5 0 0 1 5 0V10'],
      DynamicTranslatePart([Offset.zero, Offset(0, 10)], curve: _swapSpring),
    ),
    DynamicIconPart(
      'M15 14h5l-5 6h5',
      DynamicTranslatePart([Offset.zero, Offset(0, -10)], curve: _swapSpring),
    ),
  ],
);

/// Sort Z-A: the down arrow stays; the "Z" and "A" glyphs swap vertically.
const DynamicLucideIconData kArrowDownZAIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('m3 16 4 4 4-4'),
    DynamicIconPart('M7 20V4'),
    DynamicIconPart(
      'M15 4h5l-5 6h5',
      DynamicTranslatePart([Offset.zero, Offset(0, 10)], curve: _swapSpring),
    ),
    DynamicIconPart.group(
      ['M20 18h-5', 'M15 20v-3.5a2.5 2.5 0 0 1 5 0V20'],
      DynamicTranslatePart([Offset.zero, Offset(0, -10)], curve: _swapSpring),
    ),
  ],
);

/// Down-left arrow: head and shaft swing toward the corner, shaft squashing.
const DynamicLucideIconData kArrowDownLeftIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M17 17H7V7',
      DynamicTranslatePart([Offset.zero, Offset(3, -3), Offset.zero]),
    ),
    DynamicIconPart(
      'M7 17 L12 12',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(3, -3), Offset.zero]),
        DynamicScalePart([1, 0.85, 1], pivot: Offset(7, 17)),
      ]),
    ),
    DynamicIconPart('M17 7 L12 12'),
  ],
);

/// Down-right arrow: head and shaft swing toward the corner, shaft squashing.
const DynamicLucideIconData kArrowDownRightIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M7 7 L17 17',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(-3, -3), Offset.zero]),
        DynamicScalePart([1, 0.85, 1], pivot: Offset(17, 17)),
      ]),
    ),
    DynamicIconPart(
      'M17 7v10H7',
      DynamicTranslatePart([Offset.zero, Offset(-3, -3), Offset.zero]),
    ),
    DynamicIconPart(
      'M17 17 L10 17',
      DynamicTranslatePart([Offset.zero, Offset(-3, -3), Offset.zero]),
    ),
  ],
);

/// Left arrow: head slides left while the shaft retracts and extends.
const DynamicLucideIconData kArrowLeftIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'm12 19-7-7 7-7',
      DynamicTranslatePart([Offset.zero, Offset(3, 0), Offset.zero]),
    ),
    DynamicIconPart(
      'M19 12H5',
      DynamicScalePart([1, 0.64, 1], axis: DynamicScaleAxis.horizontal, pivot: Offset(19, 12)),
    ),
  ],
);

/// Up arrow: head bobs while the shaft retracts and extends.
const DynamicLucideIconData kArrowUpIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'm5 12 7-7 7 7',
      DynamicTranslatePart([Offset.zero, Offset(0, 3), Offset.zero]),
    ),
    DynamicIconPart(
      'M12 19V5',
      DynamicScalePart([1, 0.64, 1], axis: DynamicScaleAxis.vertical, pivot: Offset(12, 19)),
    ),
  ],
);

/// Up-left arrow: the whole glyph swings toward the corner and squashes.
const DynamicLucideIconData kArrowUpLeftIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart.group(
      ['M7 7H17', 'M7 7V17', 'M17 17L7 7'],
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(4, 4), Offset.zero]),
        DynamicScalePart([1, 0.85, 1], pivot: Offset(7, 7)),
      ]),
    ),
  ],
);

/// Up-right arrow: the whole glyph swings toward the corner and squashes.
const DynamicLucideIconData kArrowUpRightIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart.group(
      ['M7 7H17', 'M17 7V17', 'M7 17L17 7'],
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(-4, 4), Offset.zero]),
        DynamicScalePart([1, 0.85, 1], pivot: Offset(17, 7)),
      ]),
    ),
  ],
);

/// At-sign: the inner circle draws, then the surrounding swoop draws.
const DynamicLucideIconData kAtSignIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M8 12a4 4 0 1 0 8 0a4 4 0 1 0 -8 0',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M16 8v5a3 3 0 0 0 6 0v-1a10 10 0 1 0-4 8',
      DynamicCompositePart([
        DynamicDrawPart(
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 300),
        ),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Atom: the nucleus draws, then the two orbital paths draw in sequence.
const DynamicLucideIconData kAtomIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart(
      'M11 12a1 1 0 1 0 2 0a1 1 0 1 0 -2 0',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M20.2 20.2c2.04-2.03.02-7.36-4.5-11.9-4.54-4.52-9.87-6.54-11.9-4.5-2.04 2.03-.02 7.36 4.5 11.9 4.54 4.52 9.87 6.54 11.9 4.5Z',
      DynamicCompositePart([
        DynamicDrawPart(
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 400),
        ),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M15.7 15.7c4.52-4.54 6.54-9.87 4.5-11.9-2.03-2.04-7.36-.02-11.9 4.5-4.52 4.54-6.54 9.87-4.5 11.9 2.03 2.04 7.36.02 11.9-4.5Z',
      DynamicCompositePart([
        DynamicDrawPart(
          delay: Duration(milliseconds: 600),
          duration: Duration(milliseconds: 400),
        ),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

const List<DynamicLucideIconEntry> gen02Icons = [
  DynamicLucideIconEntry('arrow-big-down', kArrowBigDownIcon, ['arrow', 'down', 'big']),
  DynamicLucideIconEntry('arrow-big-down-dash', kArrowBigDownDashIcon,
      ['arrow', 'down', 'big', 'dash']),
  DynamicLucideIconEntry('arrow-big-left', kArrowBigLeftIcon, ['arrow', 'left', 'big']),
  DynamicLucideIconEntry('arrow-big-left-dash', kArrowBigLeftDashIcon,
      ['arrow', 'left', 'big', 'dash']),
  DynamicLucideIconEntry(
      'arrow-big-right', kArrowBigRightIcon, ['arrow', 'right', 'big']),
  DynamicLucideIconEntry('arrow-big-right-dash', kArrowBigRightDashIcon,
      ['arrow', 'right', 'big', 'dash']),
  DynamicLucideIconEntry('arrow-big-up', kArrowBigUpIcon, ['arrow', 'up', 'big']),
  DynamicLucideIconEntry('arrow-big-up-dash', kArrowBigUpDashIcon,
      ['arrow', 'up', 'big', 'dash']),
  DynamicLucideIconEntry('arrow-down-0-1', kArrowDown01Icon,
      ['arrow', 'down', 'sort', 'ascending', 'numbers']),
  DynamicLucideIconEntry('arrow-down-1-0', kArrowDown10Icon,
      ['arrow', 'down', 'sort', 'descending', 'numbers']),
  DynamicLucideIconEntry('arrow-down-a-z', kArrowDownAZIcon,
      ['arrow', 'down', 'sort', 'ascending', 'alphabet']),
  DynamicLucideIconEntry('arrow-down-left', kArrowDownLeftIcon,
      ['arrow', 'down', 'left', 'diagonal']),
  DynamicLucideIconEntry('arrow-down-right', kArrowDownRightIcon,
      ['arrow', 'down', 'right', 'diagonal']),
  DynamicLucideIconEntry('arrow-down-z-a', kArrowDownZAIcon,
      ['arrow', 'down', 'sort', 'descending', 'alphabet']),
  DynamicLucideIconEntry('arrow-left', kArrowLeftIcon, ['arrow', 'left', 'back']),
  DynamicLucideIconEntry('arrow-up', kArrowUpIcon, ['arrow', 'up']),
  DynamicLucideIconEntry('arrow-up-left', kArrowUpLeftIcon,
      ['arrow', 'up', 'left', 'diagonal']),
  DynamicLucideIconEntry('arrow-up-right', kArrowUpRightIcon,
      ['arrow', 'up', 'right', 'diagonal']),
  DynamicLucideIconEntry('at-sign', kAtSignIcon, ['at', 'email', 'mention', 'sign']),
  DynamicLucideIconEntry('atom', kAtomIcon, ['atom', 'science', 'physics', 'nucleus']),
];
