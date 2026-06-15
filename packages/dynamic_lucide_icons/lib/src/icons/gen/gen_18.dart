import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 18. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _fadeIn = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Snowflake that shivers with a quick side-to-side rotation.
const DynamicLucideIconData kSnowflakeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart.group(
      [
        'm10 20-1.25-2.5L6 18',
        'M10 4 8.75 6.5 6 6',
        'm14 20 1.25-2.5L18 18',
        'm14 4 1.25 2.5L18 6',
        'm17 21-3-6h-4',
        'm17 3-3 6 1.5 3',
        'M2 12h6.5L10 9',
        'm20 10-1.5 2 1.5 2',
        'M22 12h-6.5L14 15',
        'm4 10 1.5 2L4 14',
        'm7 21 3-6-1.5-3',
        'm7 3 3 6h4',
      ],
      DynamicRotatePart([0, -5, 5, -5, 5, 0], pivot: kViewBoxCenter),
    ),
  ],
);

/// Square activity: the heartbeat line draws itself inside the static frame.
const DynamicLucideIconData kSquareActivityIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z'),
    DynamicIconPart(
      'M17 12h-2l-2 5-2-10-2 5H7',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
  ],
);

/// Square arrow down: arrow head bobs, the shaft retracts and extends.
const DynamicLucideIconData kSquareArrowDownIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z'),
    DynamicIconPart(
      'm8 12 4 4 4-4',
      DynamicTranslatePart([Offset.zero, Offset(0, -3), Offset.zero]),
    ),
    DynamicIconPart(
      'M12 8v8',
      DynamicScalePart([1, 0.625, 1], axis: DynamicScaleAxis.vertical, pivot: Offset(12, 8)),
    ),
  ],
);

/// Square arrow left: arrow head nudges, the shaft retracts and extends.
const DynamicLucideIconData kSquareArrowLeftIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z'),
    DynamicIconPart(
      'm12 8-4 4 4 4',
      DynamicTranslatePart([Offset.zero, Offset(3, 0), Offset.zero]),
    ),
    DynamicIconPart(
      'M16 12H8',
      DynamicScalePart([1, 0.375, 1],
          axis: DynamicScaleAxis.horizontal, pivot: Offset(16, 12)),
    ),
  ],
);

/// Square arrow right: shaft retracts and extends, the head nudges.
const DynamicLucideIconData kSquareArrowRightIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z'),
    DynamicIconPart(
      'M8 12h8',
      DynamicScalePart([1, 0.625, 1], axis: DynamicScaleAxis.horizontal, pivot: Offset(8, 12)),
    ),
    DynamicIconPart(
      'm12 8 4 4-4 4',
      DynamicTranslatePart([Offset.zero, Offset(-3, 0), Offset.zero]),
    ),
  ],
);

/// Square arrow up: arrow head bobs, the shaft retracts and extends.
const DynamicLucideIconData kSquareArrowUpIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z'),
    DynamicIconPart(
      'm16 12-4-4-4 4',
      DynamicTranslatePart([Offset.zero, Offset(0, 3), Offset.zero]),
    ),
    DynamicIconPart(
      'M12 16V8',
      DynamicScalePart([1, 0.375, 1], axis: DynamicScaleAxis.vertical, pivot: Offset(12, 16)),
    ),
  ],
);

/// Square chevron down: the chevron nudges down and back.
const DynamicLucideIconData kSquareChevronDownIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z'),
    DynamicIconPart(
      'm16 10-4 4-4-4',
      DynamicTranslatePart([Offset.zero, Offset(0, 2), Offset.zero]),
    ),
  ],
);

/// Square chevron left: the chevron nudges left and back.
const DynamicLucideIconData kSquareChevronLeftIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z'),
    DynamicIconPart(
      'm14 16-4-4 4-4',
      DynamicTranslatePart([Offset.zero, Offset(-2, 0), Offset.zero]),
    ),
  ],
);

/// Square chevron right: the chevron nudges right and back.
const DynamicLucideIconData kSquareChevronRightIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z'),
    DynamicIconPart(
      'm10 8 4 4-4 4',
      DynamicTranslatePart([Offset.zero, Offset(2, 0), Offset.zero]),
    ),
  ],
);

/// Square chevron up: the chevron nudges up and back.
const DynamicLucideIconData kSquareChevronUpIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z'),
    DynamicIconPart(
      'm8 14 4-4 4 4',
      DynamicTranslatePart([Offset.zero, Offset(0, -2), Offset.zero]),
    ),
  ],
);

/// Square stack: the cards pop in turn as the top card squashes.
const DynamicLucideIconData kSquareStackIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M4 10c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2',
      DynamicScalePart([1, 0.9, 1], delay: Duration(milliseconds: 300)),
    ),
    DynamicIconPart(
      'M10 16c-1.1 0-2-.9-2-2v-4c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2',
      DynamicScalePart([1, 0.9, 1], delay: Duration(milliseconds: 200)),
    ),
    DynamicIconPart(
      'M16 14h4a2 2 0 0 1 2 2v4a2 2 0 0 1 -2 2h-4a2 2 0 0 1 -2 -2v-4a2 2 0 0 1 2 -2z',
      DynamicScalePart([1, 0.8, 1]),
    ),
  ],
);

/// Stamp that presses down with a bounce while the ink line spreads.
const DynamicLucideIconData kStampIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart.group(
      [
        'M14 13V8.5C14 7 15 7 15 5a3 3 0 0 0-6 0c0 2 1 2 1 3.5V13',
        'M20 15.5a2.5 2.5 0 0 0-2.5-2.5h-11A2.5 2.5 0 0 0 4 15.5V17a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1z',
      ],
      DynamicTranslatePart([
        Offset.zero,
        Offset(0, 4),
        Offset(0, 4),
        Offset(0, -1),
        Offset.zero,
      ]),
    ),
    DynamicIconPart(
      'M5 22h14',
      DynamicCompositePart([
        DynamicScalePart([1, 0.85, 0.85, 1],
            axis: DynamicScaleAxis.horizontal, pivot: Offset(12, 22)),
        DynamicOpacityPart([1, 0.4, 1, 1]),
      ]),
    ),
  ],
);

/// Stethoscope that draws itself on from the earpiece outward.
const DynamicLucideIconData kStethoscopeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 850),
  parts: [
    DynamicIconPart(
      'M20 8a2 2 0 1 0 0 4 2 2 0 1 0 0 -4',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 250)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M8 15a6 6 0 0 0 12 0v-3',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 350),
            duration: Duration(milliseconds: 250)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 350),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M11 2v2',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 250)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M5 2v2',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 250)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M5 3H4a2 2 0 0 0-2 2v4a6 6 0 0 0 12 0V5a2 2 0 0 0-2-2h-1',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 250)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Sun (dim): the rays light up one by one around the disc.
const DynamicLucideIconData kSunDimIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1100),
  parts: [
    DynamicIconPart('M8 12a4 4 0 1 0 8 0 4 4 0 1 0 -8 0'),
    DynamicIconPart('M12 4h.01',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M20 12h.01',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M12 20h.01',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M4 12h.01',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M17.657 6.343h.01',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M17.657 17.657h.01',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M6.343 17.657h.01',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 700),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M6.343 6.343h.01',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 800),
            duration: Duration(milliseconds: 300))),
  ],
);

/// Sun (medium): the rays light up one by one around the disc.
const DynamicLucideIconData kSunMediumIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1100),
  parts: [
    DynamicIconPart('M8 12a4 4 0 1 0 8 0 4 4 0 1 0 -8 0'),
    DynamicIconPart('M12 3v1',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M12 20v1',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M3 12h1',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M20 12h1',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('m18.364 5.636-.707.707',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('m6.343 17.657-.707.707',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('m5.636 5.636.707.707',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 700),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('m17.657 17.657.707.707',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 800),
            duration: Duration(milliseconds: 300))),
  ],
);

/// Sun-moon: the crescent wobbles while the rays light up around it.
const DynamicLucideIconData kSunMoonIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1500),
  parts: [
    DynamicIconPart(
      'M12 8a2.83 2.83 0 0 0 4 4 4 4 0 1 1-4-4',
      DynamicRotatePart([0, -5, 5, -2, 2, 0], pivot: kViewBoxCenter),
    ),
    DynamicIconPart('M12 2v2',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M12 20v2',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('m4.9 4.9 1.4 1.4',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('m17.7 17.7 1.4 1.4',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M2 12h2',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M20 12h2',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('m6.3 17.7-1.4 1.4',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 700),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('m19.1 4.9-1.4 1.4',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 800),
            duration: Duration(milliseconds: 300))),
  ],
);

/// Sunset: the sun dips while its rays light up one by one.
const DynamicLucideIconData kSunsetIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart.group(
      ['M12 10V2', 'm16 6-4 4-4-4'],
      DynamicTranslatePart([Offset.zero, Offset(0, 1), Offset.zero]),
    ),
    DynamicIconPart('m4.93 10.93 1.41 1.41',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M2 18h2',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M20 18h2',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('m19.07 10.93-1.41 1.41',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M22 22H2',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M16 18a4 4 0 0 0-8 0'),
  ],
);

/// Swiss franc that draws itself: the stem first, then the cross-bars.
const DynamicLucideIconData kSwissFrancIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M10 21V3h8',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 540)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M6 16h9',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M10 9.5h7',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Switch camera: the body and swap arrows draw themselves on.
const DynamicLucideIconData kSwitchCameraIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M11 19H4a2 2 0 0 1-2-2V7a2 2 0 0 1 2-2h5',
      DynamicDrawPart(),
    ),
    DynamicIconPart(
      'M13 5h7a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-5',
      DynamicDrawPart(),
    ),
    DynamicIconPart('M9 12a3 3 0 1 0 6 0 3 3 0 1 0 -6 0'),
    DynamicIconPart(
      'm18 22-3-3 3-3',
      DynamicDrawPart(),
    ),
    DynamicIconPart(
      'm6 2 3 3-3 3',
      DynamicDrawPart(),
    ),
  ],
);

/// Syringe that springs back as if drawing in, with a slight tilt.
const DynamicLucideIconData kSyringeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart.group(
      [
        'm18 2 4 4',
        'm17 7 3-3',
        'M19 9 8.7 19.3c-1 1-2.5 1-3.4 0l-.6-.6c-1-1-1-2.5 0-3.4L15 5',
        'm9 11 4 4',
        'm5 19-3 3',
        'm14 4 6 6',
      ],
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(-3, 3)],
            curve: DynamicSpringCurve(stiffness: 250, damping: 25)),
        DynamicRotatePart([0, 1],
            pivot: kViewBoxCenter,
            curve: DynamicSpringCurve(stiffness: 250, damping: 25)),
      ]),
    ),
  ],
);

const List<DynamicLucideIconEntry> gen18Icons = [
  DynamicLucideIconEntry('snowflake', kSnowflakeIcon, ['snow', 'winter', 'cold', 'flake']),
  DynamicLucideIconEntry('square-activity', kSquareActivityIcon,
      ['activity', 'pulse', 'heartbeat', 'health', 'square']),
  DynamicLucideIconEntry('square-arrow-down', kSquareArrowDownIcon,
      ['arrow', 'down', 'square', 'direction']),
  DynamicLucideIconEntry('square-arrow-left', kSquareArrowLeftIcon,
      ['arrow', 'left', 'square', 'direction']),
  DynamicLucideIconEntry('square-arrow-right', kSquareArrowRightIcon,
      ['arrow', 'right', 'square', 'direction']),
  DynamicLucideIconEntry('square-arrow-up', kSquareArrowUpIcon,
      ['arrow', 'up', 'square', 'direction']),
  DynamicLucideIconEntry('square-chevron-down', kSquareChevronDownIcon,
      ['chevron', 'down', 'square', 'arrow']),
  DynamicLucideIconEntry('square-chevron-left', kSquareChevronLeftIcon,
      ['chevron', 'left', 'square', 'arrow']),
  DynamicLucideIconEntry('square-chevron-right', kSquareChevronRightIcon,
      ['chevron', 'right', 'square', 'arrow']),
  DynamicLucideIconEntry('square-chevron-up', kSquareChevronUpIcon,
      ['chevron', 'up', 'square', 'arrow']),
  DynamicLucideIconEntry('square-stack', kSquareStackIcon,
      ['stack', 'layers', 'copy', 'cards', 'square']),
  DynamicLucideIconEntry('stamp', kStampIcon, ['stamp', 'approve', 'seal', 'ink']),
  DynamicLucideIconEntry('stethoscope', kStethoscopeIcon,
      ['stethoscope', 'doctor', 'medical', 'health']),
  DynamicLucideIconEntry('sun-dim', kSunDimIcon, ['sun', 'dim', 'brightness', 'light']),
  DynamicLucideIconEntry('sun-medium', kSunMediumIcon,
      ['sun', 'medium', 'brightness', 'light']),
  DynamicLucideIconEntry('sun-moon', kSunMoonIcon,
      ['sun', 'moon', 'theme', 'day', 'night']),
  DynamicLucideIconEntry('sunset', kSunsetIcon, ['sunset', 'sun', 'evening', 'dusk']),
  DynamicLucideIconEntry('swiss-franc', kSwissFrancIcon,
      ['swiss', 'franc', 'currency', 'money', 'chf']),
  DynamicLucideIconEntry('switch-camera', kSwitchCameraIcon,
      ['switch', 'camera', 'flip', 'swap']),
  DynamicLucideIconEntry('syringe', kSyringeIcon,
      ['syringe', 'injection', 'medical', 'vaccine', 'needle']),
];
