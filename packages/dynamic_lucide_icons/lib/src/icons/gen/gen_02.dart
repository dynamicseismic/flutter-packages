// Generated icon batch 02. Overwritten by the batch agent.
//
// Path data: Lucide (ISC). Animation params: pqoqubbw/icons (MIT).
// See ATTRIBUTION.md.
import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Big down arrow that bobs downward.
const LucideIconData kArrowBigDownIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M15 6v6h4l-7 7-7-7h4V6h6z',
      TranslatePart([Offset.zero, Offset(0, 3), Offset.zero]),
    ),
  ],
);

/// Big down arrow with a dash; dash nudges, arrow bobs further.
const LucideIconData kArrowBigDownDashIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M15 5H9',
      TranslatePart([Offset.zero, Offset(0, 1), Offset.zero]),
    ),
    IconPart(
      'M15 9v3h4l-7 7-7-7h4V9z',
      TranslatePart([Offset.zero, Offset(0, 3), Offset.zero]),
    ),
  ],
);

/// Big left arrow that bobs leftward.
const LucideIconData kArrowBigLeftIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M18 15h-6v4l-7-7 7-7v4h6v6z',
      TranslatePart([Offset.zero, Offset(-3, 0), Offset.zero]),
    ),
  ],
);

/// Big left arrow with a dash; dash nudges, arrow bobs further.
const LucideIconData kArrowBigLeftDashIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M19 15V9',
      TranslatePart([Offset.zero, Offset(-1, 0), Offset.zero]),
    ),
    IconPart(
      'M15 15h-3v4l-7-7 7-7v4h3v6z',
      TranslatePart([Offset.zero, Offset(-3, 0), Offset.zero]),
    ),
  ],
);

/// Big right arrow that bobs rightward.
const LucideIconData kArrowBigRightIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M6 9h6V5l7 7-7 7v-4H6V9z',
      TranslatePart([Offset.zero, Offset(3, 0), Offset.zero]),
    ),
  ],
);

/// Big right arrow with a dash; dash nudges, arrow bobs further.
const LucideIconData kArrowBigRightDashIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M5 9v6',
      TranslatePart([Offset.zero, Offset(1, 0), Offset.zero]),
    ),
    IconPart(
      'M9 9h3V5l7 7-7 7v-4H9V9z',
      TranslatePart([Offset.zero, Offset(3, 0), Offset.zero]),
    ),
  ],
);

/// Big up arrow that bobs upward.
const LucideIconData kArrowBigUpIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M9 18v-6H5l7-7 7 7h-4v6H9z',
      TranslatePart([Offset.zero, Offset(0, -3), Offset.zero]),
    ),
  ],
);

/// Big up arrow with a dash; dash nudges, arrow bobs further.
const LucideIconData kArrowBigUpDashIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M9 19h6',
      TranslatePart([Offset.zero, Offset(0, -1), Offset.zero]),
    ),
    IconPart(
      'M9 15v-3H5l7-7 7 7h-4v3H9z',
      TranslatePart([Offset.zero, Offset(0, -3), Offset.zero]),
    ),
  ],
);

const _swapSpring = SpringCurve(stiffness: 240, damping: 24);

/// Sort 0-1: the down arrow stays; the "0" and "1" glyphs swap vertically.
const LucideIconData kArrowDown01Icon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('m3 16 4 4 4-4'),
    IconPart('M7 20V4'),
    IconPart(
      'M17 4h0a2 2 0 0 1 2 2v2a2 2 0 0 1 -2 2h-0a2 2 0 0 1 -2 -2v-2a2 2 0 0 1 2 -2z',
      TranslatePart([Offset.zero, Offset(0, 10)], curve: _swapSpring),
    ),
    IconPart.group(
      ['M17 20v-6h-2', 'M15 20h4'],
      TranslatePart([Offset.zero, Offset(0, -10)], curve: _swapSpring),
    ),
  ],
);

/// Sort 1-0: the down arrow stays; the "1" and "0" glyphs swap vertically.
const LucideIconData kArrowDown10Icon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('m3 16 4 4 4-4'),
    IconPart('M7 20V4'),
    IconPart.group(
      ['M17 10V4h-2', 'M15 10h4'],
      TranslatePart([Offset.zero, Offset(0, 10)], curve: _swapSpring),
    ),
    IconPart(
      'M17 14h0a2 2 0 0 1 2 2v2a2 2 0 0 1 -2 2h-0a2 2 0 0 1 -2 -2v-2a2 2 0 0 1 2 -2z',
      TranslatePart([Offset.zero, Offset(0, -10)], curve: _swapSpring),
    ),
  ],
);

/// Sort A-Z: the down arrow stays; the "A" and "Z" glyphs swap vertically.
const LucideIconData kArrowDownAZIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('m3 16 4 4 4-4'),
    IconPart('M7 20V4'),
    IconPart.group(
      ['M20 8h-5', 'M15 10V6.5a2.5 2.5 0 0 1 5 0V10'],
      TranslatePart([Offset.zero, Offset(0, 10)], curve: _swapSpring),
    ),
    IconPart(
      'M15 14h5l-5 6h5',
      TranslatePart([Offset.zero, Offset(0, -10)], curve: _swapSpring),
    ),
  ],
);

/// Sort Z-A: the down arrow stays; the "Z" and "A" glyphs swap vertically.
const LucideIconData kArrowDownZAIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('m3 16 4 4 4-4'),
    IconPart('M7 20V4'),
    IconPart(
      'M15 4h5l-5 6h5',
      TranslatePart([Offset.zero, Offset(0, 10)], curve: _swapSpring),
    ),
    IconPart.group(
      ['M20 18h-5', 'M15 20v-3.5a2.5 2.5 0 0 1 5 0V20'],
      TranslatePart([Offset.zero, Offset(0, -10)], curve: _swapSpring),
    ),
  ],
);

/// Down-left arrow: head and shaft swing toward the corner, shaft squashing.
const LucideIconData kArrowDownLeftIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M17 17H7V7',
      TranslatePart([Offset.zero, Offset(3, -3), Offset.zero]),
    ),
    IconPart(
      'M7 17 L12 12',
      CompositePart([
        TranslatePart([Offset.zero, Offset(3, -3), Offset.zero]),
        ScalePart([1, 0.85, 1], pivot: Offset(7, 17)),
      ]),
    ),
    IconPart('M17 7 L12 12'),
  ],
);

/// Down-right arrow: head and shaft swing toward the corner, shaft squashing.
const LucideIconData kArrowDownRightIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M7 7 L17 17',
      CompositePart([
        TranslatePart([Offset.zero, Offset(-3, -3), Offset.zero]),
        ScalePart([1, 0.85, 1], pivot: Offset(17, 17)),
      ]),
    ),
    IconPart(
      'M17 7v10H7',
      TranslatePart([Offset.zero, Offset(-3, -3), Offset.zero]),
    ),
    IconPart(
      'M17 17 L10 17',
      TranslatePart([Offset.zero, Offset(-3, -3), Offset.zero]),
    ),
  ],
);

/// Left arrow: head slides left while the shaft retracts and extends.
const LucideIconData kArrowLeftIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'm12 19-7-7 7-7',
      TranslatePart([Offset.zero, Offset(3, 0), Offset.zero]),
    ),
    IconPart(
      'M19 12H5',
      ScalePart([1, 0.64, 1], axis: ScaleAxis.horizontal, pivot: Offset(19, 12)),
    ),
  ],
);

/// Up arrow: head bobs while the shaft retracts and extends.
const LucideIconData kArrowUpIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'm5 12 7-7 7 7',
      TranslatePart([Offset.zero, Offset(0, 3), Offset.zero]),
    ),
    IconPart(
      'M12 19V5',
      ScalePart([1, 0.64, 1], axis: ScaleAxis.vertical, pivot: Offset(12, 19)),
    ),
  ],
);

/// Up-left arrow: the whole glyph swings toward the corner and squashes.
const LucideIconData kArrowUpLeftIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart.group(
      ['M7 7H17', 'M7 7V17', 'M17 17L7 7'],
      CompositePart([
        TranslatePart([Offset.zero, Offset(4, 4), Offset.zero]),
        ScalePart([1, 0.85, 1], pivot: Offset(7, 7)),
      ]),
    ),
  ],
);

/// Up-right arrow: the whole glyph swings toward the corner and squashes.
const LucideIconData kArrowUpRightIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart.group(
      ['M7 7H17', 'M17 7V17', 'M7 17L17 7'],
      CompositePart([
        TranslatePart([Offset.zero, Offset(-4, 4), Offset.zero]),
        ScalePart([1, 0.85, 1], pivot: Offset(17, 7)),
      ]),
    ),
  ],
);

/// At-sign: the inner circle draws, then the surrounding swoop draws.
const LucideIconData kAtSignIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M8 12a4 4 0 1 0 8 0a4 4 0 1 0 -8 0',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'M16 8v5a3 3 0 0 0 6 0v-1a10 10 0 1 0-4 8',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 300),
        ),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Atom: the nucleus draws, then the two orbital paths draw in sequence.
const LucideIconData kAtomIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart(
      'M11 12a1 1 0 1 0 2 0a1 1 0 1 0 -2 0',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'M20.2 20.2c2.04-2.03.02-7.36-4.5-11.9-4.54-4.52-9.87-6.54-11.9-4.5-2.04 2.03-.02 7.36 4.5 11.9 4.54 4.52 9.87 6.54 11.9 4.5Z',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 400),
        ),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'M15.7 15.7c4.52-4.54 6.54-9.87 4.5-11.9-2.03-2.04-7.36-.02-11.9 4.5-4.52 4.54-6.54 9.87-4.5 11.9 2.03 2.04 7.36.02 11.9-4.5Z',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 600),
          duration: Duration(milliseconds: 400),
        ),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

const List<LucideIconEntry> gen02Icons = [
  LucideIconEntry('arrow-big-down', kArrowBigDownIcon, ['arrow', 'down', 'big']),
  LucideIconEntry('arrow-big-down-dash', kArrowBigDownDashIcon,
      ['arrow', 'down', 'big', 'dash']),
  LucideIconEntry('arrow-big-left', kArrowBigLeftIcon, ['arrow', 'left', 'big']),
  LucideIconEntry('arrow-big-left-dash', kArrowBigLeftDashIcon,
      ['arrow', 'left', 'big', 'dash']),
  LucideIconEntry(
      'arrow-big-right', kArrowBigRightIcon, ['arrow', 'right', 'big']),
  LucideIconEntry('arrow-big-right-dash', kArrowBigRightDashIcon,
      ['arrow', 'right', 'big', 'dash']),
  LucideIconEntry('arrow-big-up', kArrowBigUpIcon, ['arrow', 'up', 'big']),
  LucideIconEntry('arrow-big-up-dash', kArrowBigUpDashIcon,
      ['arrow', 'up', 'big', 'dash']),
  LucideIconEntry('arrow-down-0-1', kArrowDown01Icon,
      ['arrow', 'down', 'sort', 'ascending', 'numbers']),
  LucideIconEntry('arrow-down-1-0', kArrowDown10Icon,
      ['arrow', 'down', 'sort', 'descending', 'numbers']),
  LucideIconEntry('arrow-down-a-z', kArrowDownAZIcon,
      ['arrow', 'down', 'sort', 'ascending', 'alphabet']),
  LucideIconEntry('arrow-down-left', kArrowDownLeftIcon,
      ['arrow', 'down', 'left', 'diagonal']),
  LucideIconEntry('arrow-down-right', kArrowDownRightIcon,
      ['arrow', 'down', 'right', 'diagonal']),
  LucideIconEntry('arrow-down-z-a', kArrowDownZAIcon,
      ['arrow', 'down', 'sort', 'descending', 'alphabet']),
  LucideIconEntry('arrow-left', kArrowLeftIcon, ['arrow', 'left', 'back']),
  LucideIconEntry('arrow-up', kArrowUpIcon, ['arrow', 'up']),
  LucideIconEntry('arrow-up-left', kArrowUpLeftIcon,
      ['arrow', 'up', 'left', 'diagonal']),
  LucideIconEntry('arrow-up-right', kArrowUpRightIcon,
      ['arrow', 'up', 'right', 'diagonal']),
  LucideIconEntry('at-sign', kAtSignIcon, ['at', 'email', 'mention', 'sign']),
  LucideIconEntry('atom', kAtomIcon, ['atom', 'science', 'physics', 'nucleus']),
];
