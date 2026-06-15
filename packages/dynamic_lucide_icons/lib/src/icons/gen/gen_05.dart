import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 05. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _drawFade = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100));
const _chevronSpring = DynamicSpringCurve(stiffness: 250, damping: 25);

/// Bar chart whose columns redraw, cascading shortest to tallest.
const DynamicLucideIconData kChartColumnIncreasingIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M3 3v16a2 2 0 0 0 2 2h16'),
    DynamicIconPart(
      'M8 17v-3',
      DynamicCompositePart([DynamicDrawPart(), _drawFade]),
    ),
    DynamicIconPart(
      'M13 17V9',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 100)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M18 17V5',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 200)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Line chart whose trend line draws itself on.
const DynamicLucideIconData kChartLineIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 450),
  parts: [
    DynamicIconPart('M3 3v16a2 2 0 0 0 2 2h16'),
    DynamicIconPart(
      'm7 13 3-3 4 4 5-5',
      DynamicCompositePart([DynamicDrawPart(), _drawFade]),
    ),
  ],
);

/// Axis-less descending bars that redraw, cascading left to right.
const DynamicLucideIconData kChartNoAxesColumnDecreasingIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M6 20V4',
      DynamicCompositePart([DynamicDrawPart(), _drawFade]),
    ),
    DynamicIconPart(
      'M12 20V10',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 100)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M18 20v-4',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 200)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Axis-less ascending bars that redraw, cascading left to right.
const DynamicLucideIconData kChartNoAxesColumnIncreasingIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M6 20v-4',
      DynamicCompositePart([DynamicDrawPart(), _drawFade]),
    ),
    DynamicIconPart(
      'M12 20v-10',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 100)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M18 20v-16',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 200)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Pie chart whose slice springs out to the upper-right.
const DynamicLucideIconData kChartPieIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M21.21 15.89A10 10 0 1 1 8 2.83'),
    DynamicIconPart(
      'M21 12c.552 0 1.005-.449.95-.998a10 10 0 0 0-8.953-8.951c-.55-.055-.998.398-.998.95v8a1 1 0 0 0 1 1z',
      DynamicTranslatePart(
        [Offset.zero, Offset(1.1, -1.1)],
        curve: DynamicSpringCurve(stiffness: 250, damping: 15),
      ),
    ),
  ],
);

/// Scatter plot whose points fade in one by one.
const DynamicLucideIconData kChartScatterIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart('M3 3v16a2 2 0 0 0 2 2h16'),
    DynamicIconPart('M7 7.5a.5 .5 0 1 0 1 0a.5 .5 0 1 0 -1 0',
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 300))),
    DynamicIconPart('M18 5.5a.5 .5 0 1 0 1 0a.5 .5 0 1 0 -1 0',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 150),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M11 11.5a.5 .5 0 1 0 1 0a.5 .5 0 1 0 -1 0',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M7 16.5a.5 .5 0 1 0 1 0a.5 .5 0 1 0 -1 0',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M17 14.5a.5 .5 0 1 0 1 0a.5 .5 0 1 0 -1 0',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 300))),
  ],
);

/// Spline chart whose curve draws itself on.
const DynamicLucideIconData kChartSplineIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 450),
  parts: [
    DynamicIconPart('M3 3v16a2 2 0 0 0 2 2h16'),
    DynamicIconPart(
      'M7 16c.5-2 1.5-7 4-7 2 0 2 3 4 3 2.5 0 4.5-5 5-7',
      DynamicCompositePart([DynamicDrawPart(), _drawFade]),
    ),
  ],
);

/// Bishop that slides diagonally, vanishing and reappearing across the board.
const DynamicLucideIconData kChessBishopIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1400),
  parts: [
    DynamicIconPart.group(
      [
        'M5 20a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1z',
        'M15 18c1.5-.615 3-2.461 3-4.923C18 8.769 14.5 4.462 12 2 9.5 4.462 6 8.77 6 13.077 6 15.539 7.5 17.385 9 18',
        'm16 7-2.5 2.5',
        'M9 2h6',
      ],
      DynamicCompositePart([
        DynamicTranslatePart([
          Offset.zero,
          Offset(-6, -6),
          Offset(-6, -6),
          Offset(-6, -6),
          Offset(6, 6),
          Offset(6, 6),
          Offset(6, 6),
          Offset.zero,
        ]),
        DynamicRotatePart([0, -16, -16, -16, 16, 16, 4, 0], pivot: kViewBoxCenter),
        DynamicOpacityPart([1, 1, 0, 0, 0, 0, 1, 1]),
      ]),
    ),
  ],
);

/// King that rocks side to side with a settling spring.
const DynamicLucideIconData kChessKingIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1100),
  parts: [
    DynamicIconPart.group(
      [
        'M4 20a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1z',
        'm6.7 18-1-1C4.35 15.682 3 14.09 3 12a5 5 0 0 1 4.95-5c1.584 0 2.7.455 4.05 1.818C13.35 7.455 14.466 7 16.05 7A5 5 0 0 1 21 12c0 2.082-1.359 3.673-2.7 5l-1 1',
        'M10 4h4',
        'M12 2v6.818',
      ],
      DynamicCompositePart([
        DynamicRotatePart([0, -10, 10, -6, 6, -2, 0], pivot: Offset(12, 22)),
        DynamicTranslatePart([
          Offset.zero,
          Offset(0, -3),
          Offset(0, -3),
          Offset(0, -2),
          Offset(0, -2),
          Offset(0, -1),
          Offset.zero,
        ]),
      ]),
    ),
  ],
);

/// Knight that rears up and back, mimicking its L-shaped leap.
const DynamicLucideIconData kChessKnightIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart.group(
      [
        'M5 20a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1z',
        'M16.5 18c1-2 2.5-5 2.5-9a7 7 0 0 0-7-7H6.635a1 1 0 0 0-.768 1.64L7 5l-2.32 5.802a2 2 0 0 0 .95 2.526l2.87 1.456',
        'm15 5 1.425-1.425',
        'm17 8 1.53-1.53',
        'M9.713 12.185 7 18',
      ],
      DynamicCompositePart([
        DynamicRotatePart([0, 12, 38, 42, 38, 10, -5, 0], pivot: Offset(12, 22)),
        DynamicTranslatePart([
          Offset.zero,
          Offset(0, -2),
          Offset(0, -9),
          Offset(0, -12),
          Offset(0, -9),
          Offset(0, -2),
          Offset(0, 1),
          Offset.zero,
        ]),
      ]),
    ),
  ],
);

/// Pawn whose head wobbles while the body sways gently.
const DynamicLucideIconData kChessPawnIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 2400),
  parts: [
    DynamicIconPart.group(
      [
        'M5 20a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1z',
        'm14.5 10 1.5 8',
        'M7 10h10',
        'm8 18 1.5-8',
      ],
      DynamicRotatePart([0, 5, 5, 5, 3, 0], pivot: Offset(12, 21)),
    ),
    DynamicIconPart(
      'M8 6a4 4 0 1 0 8 0a4 4 0 1 0 -8 0',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(-5, 0), Offset(5, 0), Offset.zero]),
        DynamicRotatePart([0, -15, 15, 0]),
      ]),
    ),
  ],
);

/// Chevron-to-bar that nudges left and settles.
const DynamicLucideIconData kChevronFirstIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'm17 18-6-6 6-6',
      DynamicTranslatePart(
        [Offset(-2, 0), Offset(1, 0), Offset(-1, 0), Offset.zero],
        curve: Curves.easeInOut,
      ),
    ),
    DynamicIconPart('M7 6v12'),
  ],
);

/// Left chevron that nudges left and back.
const DynamicLucideIconData kChevronLeftIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'm15 18-6-6 6-6',
      DynamicTranslatePart([Offset.zero, Offset(-2, 0), Offset.zero]),
    ),
  ],
);

/// Right chevron that nudges right and back.
const DynamicLucideIconData kChevronRightIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'm9 18 6-6-6-6',
      DynamicTranslatePart([Offset.zero, Offset(2, 0), Offset.zero]),
    ),
  ],
);

/// Up chevron that nudges up and back.
const DynamicLucideIconData kChevronUpIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'm18 15-6-6-6 6',
      DynamicTranslatePart([Offset.zero, Offset(0, -2), Offset.zero]),
    ),
  ],
);

/// Double chevrons that spring together (collapse).
const DynamicLucideIconData kChevronsDownUpIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'm7 20 5-5 5 5',
      DynamicTranslatePart([Offset.zero, Offset(0, -2)], curve: _chevronSpring),
    ),
    DynamicIconPart(
      'm7 4 5 5 5-5',
      DynamicTranslatePart([Offset.zero, Offset(0, 2)], curve: _chevronSpring),
    ),
  ],
);

/// Double chevrons that spring apart horizontally (expand).
const DynamicLucideIconData kChevronsLeftRightIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'm9 7-5 5 5 5',
      DynamicTranslatePart([Offset.zero, Offset(-2, 0)], curve: _chevronSpring),
    ),
    DynamicIconPart(
      'm15 7 5 5-5 5',
      DynamicTranslatePart([Offset.zero, Offset(2, 0)], curve: _chevronSpring),
    ),
  ],
);

/// Double chevrons that spring together horizontally (collapse).
const DynamicLucideIconData kChevronsRightLeftIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'm20 17-5-5 5-5',
      DynamicTranslatePart([Offset.zero, Offset(-2, 0)], curve: _chevronSpring),
    ),
    DynamicIconPart(
      'm4 17 5-5-5-5',
      DynamicTranslatePart([Offset.zero, Offset(2, 0)], curve: _chevronSpring),
    ),
  ],
);

/// Double chevrons that spring apart vertically (expand).
const DynamicLucideIconData kChevronsUpDownIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'm7 15 5 5 5-5',
      DynamicTranslatePart([Offset.zero, Offset(0, 2)], curve: _chevronSpring),
    ),
    DynamicIconPart(
      'm7 9 5-5 5 5',
      DynamicTranslatePart([Offset.zero, Offset(0, -2)], curve: _chevronSpring),
    ),
  ],
);

/// Chrome logo whose hub and spokes draw on, cascading outward.
const DynamicLucideIconData kChromeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    DynamicIconPart(
      'M8 12a4 4 0 1 0 8 0a4 4 0 1 0 -8 0',
      DynamicCompositePart([DynamicDrawPart(), _drawFade]),
    ),
    DynamicIconPart(
      'M21.17 8 L12 8',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M3.95 6.06 L8.54 14',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M10.88 21.94 L15.46 14',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

const List<DynamicLucideIconEntry> gen05Icons = [
  DynamicLucideIconEntry('chart-column-increasing', kChartColumnIncreasingIcon,
      ['chart', 'column', 'bar', 'increasing', 'graph', 'analytics']),
  DynamicLucideIconEntry('chart-line', kChartLineIcon,
      ['chart', 'line', 'graph', 'trend', 'analytics']),
  DynamicLucideIconEntry('chart-no-axes-column-decreasing',
      kChartNoAxesColumnDecreasingIcon,
      ['chart', 'column', 'bar', 'decreasing', 'graph']),
  DynamicLucideIconEntry('chart-no-axes-column-increasing',
      kChartNoAxesColumnIncreasingIcon,
      ['chart', 'column', 'bar', 'increasing', 'graph']),
  DynamicLucideIconEntry('chart-pie', kChartPieIcon,
      ['chart', 'pie', 'graph', 'analytics', 'slice']),
  DynamicLucideIconEntry('chart-scatter', kChartScatterIcon,
      ['chart', 'scatter', 'plot', 'dots', 'graph', 'analytics']),
  DynamicLucideIconEntry('chart-spline', kChartSplineIcon,
      ['chart', 'spline', 'curve', 'line', 'graph']),
  DynamicLucideIconEntry('chess-bishop', kChessBishopIcon,
      ['chess', 'bishop', 'piece', 'game']),
  DynamicLucideIconEntry('chess-king', kChessKingIcon,
      ['chess', 'king', 'piece', 'game']),
  DynamicLucideIconEntry('chess-knight', kChessKnightIcon,
      ['chess', 'knight', 'horse', 'piece', 'game']),
  DynamicLucideIconEntry('chess-pawn', kChessPawnIcon,
      ['chess', 'pawn', 'piece', 'game']),
  DynamicLucideIconEntry('chevron-first', kChevronFirstIcon,
      ['chevron', 'first', 'skip', 'previous', 'arrow']),
  DynamicLucideIconEntry('chevron-left', kChevronLeftIcon,
      ['chevron', 'left', 'arrow', 'back']),
  DynamicLucideIconEntry('chevron-right', kChevronRightIcon,
      ['chevron', 'right', 'arrow', 'forward']),
  DynamicLucideIconEntry('chevron-up', kChevronUpIcon, ['chevron', 'up', 'arrow']),
  DynamicLucideIconEntry('chevrons-down-up', kChevronsDownUpIcon,
      ['chevrons', 'down', 'up', 'collapse', 'arrows']),
  DynamicLucideIconEntry('chevrons-left-right', kChevronsLeftRightIcon,
      ['chevrons', 'left', 'right', 'expand', 'arrows']),
  DynamicLucideIconEntry('chevrons-right-left', kChevronsRightLeftIcon,
      ['chevrons', 'right', 'left', 'collapse', 'arrows']),
  DynamicLucideIconEntry('chevrons-up-down', kChevronsUpDownIcon,
      ['chevrons', 'up', 'down', 'expand', 'arrows']),
  DynamicLucideIconEntry('chrome', kChromeIcon,
      ['chrome', 'browser', 'google', 'logo']),
];
