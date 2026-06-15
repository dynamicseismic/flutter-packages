import 'package:flutter/widgets.dart';

import '../core/core.dart';

/// Rotation / swing family.
///
/// Path data is from Lucide (ISC); animation parameters mirror pqoqubbw/icons
/// (MIT). See ATTRIBUTION.md.

/// Bell that swings side to side. Whole-icon rotate through `[0,-10,10,-10,0]°`.
const DynamicLucideIconData kBellIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart.group(
      [
        'M6 8a6 6 0 0 1 12 0c0 7 3 9 3 9H3s3-2 3-9',
        'M10.3 21a1.94 1.94 0 0 0 3.4 0',
      ],
      DynamicRotatePart([0, -10, 10, -10, 0], pivot: kViewBoxCenter),
    ),
  ],
);

/// Gear that springs a half-turn (180°) on activation.
const DynamicLucideIconData kCogIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart.group(
      [
        'M12 20a8 8 0 1 0 0-16 8 8 0 0 0 0 16Z',
        'M12 14a2 2 0 1 0 0-4 2 2 0 0 0 0 4Z',
        'M12 2v2',
        'M12 22v-2',
        'm17 20.66-1-1.73',
        'M11 10.27 7 3.34',
        'm20.66 17-1.73-1',
        'm3.34 7 1.73 1',
        'M14 12h8',
        'M2 12h2',
        'm20.66 7-1.73 1',
        'm3.34 17 1.73-1',
        'm17 3.34-1 1.73',
        'm11 13.73-4 6.93',
      ],
      DynamicRotatePart([0, 180],
          pivot: kViewBoxCenter, curve: DynamicSpringCurve(stiffness: 50, damping: 10)),
    ),
  ],
);

/// Counter-clockwise refresh; springs a 50° tilt.
const DynamicLucideIconData kRefreshCwIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart.group(
      [
        'M3 12a9 9 0 0 1 9-9 9.75 9.75 0 0 1 6.74 2.74L21 8',
        'M21 3v5h-5',
        'M21 12a9 9 0 0 1-9 9 9.75 9.75 0 0 1-6.74-2.74L3 16',
        'M8 16H3v5',
      ],
      DynamicRotatePart([0, 50],
          pivot: kViewBoxCenter, curve: DynamicSpringCurve(stiffness: 250, damping: 25)),
    ),
  ],
);

/// Clockwise rotate arrow; springs a 50° tilt.
const DynamicLucideIconData kRotateCwIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart.group(
      [
        'M21 12a9 9 0 1 1-9-9c2.52 0 4.93 1 6.74 2.74L21 8',
        'M21 3v5h-5',
      ],
      DynamicRotatePart([0, 50],
          pivot: kViewBoxCenter, curve: DynamicSpringCurve(stiffness: 250, damping: 25)),
    ),
  ],
);

/// Plus that spins 180° with a spring (reads as a +/× shimmer).
const DynamicLucideIconData kPlusIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart.group(
      ['M5 12h14', 'M12 5v14'],
      DynamicRotatePart([0, 180],
          pivot: kViewBoxCenter, curve: DynamicSpringCurve(stiffness: 100, damping: 15)),
    ),
  ],
);

/// Continuous spinner. Loops while active.
const DynamicLucideIconData kLoaderCircleIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  repeats: true,
  parts: [
    DynamicIconPart(
      'M21 12a9 9 0 1 1-6.219-8.56',
      DynamicRotatePart([0, 360], pivot: kViewBoxCenter, curve: Curves.linear),
    ),
  ],
);

/// Compass whose needle spins a full turn with a spring; the ring is static.
const DynamicLucideIconData kCompassIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart('M2 12a10 10 0 1 0 20 0 10 10 0 1 0 -20 0'),
    DynamicIconPart(
      'M16.24 7.76 14.12 14.12 7.76 16.24 9.88 9.88 16.24 7.76Z',
      DynamicRotatePart([0, 360], curve: DynamicSpringCurve(stiffness: 120, damping: 15)),
    ),
  ],
);

/// Moon that wobbles (rotate `[0,-10,10,-5,5,0]°`).
const DynamicLucideIconData kMoonIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1200),
  parts: [
    DynamicIconPart(
      'M12 3a6 6 0 0 0 9 9 9 9 0 1 1-9-9Z',
      DynamicRotatePart([0, -10, 10, -5, 5, 0], pivot: kViewBoxCenter),
    ),
  ],
);
