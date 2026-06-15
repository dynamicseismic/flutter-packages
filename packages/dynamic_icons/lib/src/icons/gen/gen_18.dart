import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 18. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See LICENSE.

const _fadeIn = OpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Snowflake that shivers with a quick side-to-side rotation.
const DynamicIconData kSnowflakeIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart.group([
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
    ], RotatePart([0, -5, 5, -5, 5, 0], pivot: kViewBoxCenter)),
  ],
);

/// Square activity: the heartbeat line draws itself inside the static frame.
const DynamicIconData kSquareActivityIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z',
    ),
    IconPart('M17 12h-2l-2 5-2-10-2 5H7', CompositePart([DrawPart(), _fadeIn])),
  ],
);

/// Square arrow down: arrow head bobs, the shaft retracts and extends.
const DynamicIconData kSquareArrowDownIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z',
    ),
    IconPart(
      'm8 12 4 4 4-4',
      TranslatePart([Offset.zero, Offset(0, -3), Offset.zero]),
    ),
    IconPart(
      'M12 8v8',
      ScalePart([1, 0.625, 1], axis: ScaleAxis.vertical, pivot: Offset(12, 8)),
    ),
  ],
);

/// Square arrow left: arrow head nudges, the shaft retracts and extends.
const DynamicIconData kSquareArrowLeftIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z',
    ),
    IconPart(
      'm12 8-4 4 4 4',
      TranslatePart([Offset.zero, Offset(3, 0), Offset.zero]),
    ),
    IconPart(
      'M16 12H8',
      ScalePart(
        [1, 0.375, 1],
        axis: ScaleAxis.horizontal,
        pivot: Offset(16, 12),
      ),
    ),
  ],
);

/// Square arrow right: shaft retracts and extends, the head nudges.
const DynamicIconData kSquareArrowRightIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z',
    ),
    IconPart(
      'M8 12h8',
      ScalePart(
        [1, 0.625, 1],
        axis: ScaleAxis.horizontal,
        pivot: Offset(8, 12),
      ),
    ),
    IconPart(
      'm12 8 4 4-4 4',
      TranslatePart([Offset.zero, Offset(-3, 0), Offset.zero]),
    ),
  ],
);

/// Square arrow up: arrow head bobs, the shaft retracts and extends.
const DynamicIconData kSquareArrowUpIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z',
    ),
    IconPart(
      'm16 12-4-4-4 4',
      TranslatePart([Offset.zero, Offset(0, 3), Offset.zero]),
    ),
    IconPart(
      'M12 16V8',
      ScalePart([1, 0.375, 1], axis: ScaleAxis.vertical, pivot: Offset(12, 16)),
    ),
  ],
);

/// Square chevron down: the chevron nudges down and back.
const DynamicIconData kSquareChevronDownIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z',
    ),
    IconPart(
      'm16 10-4 4-4-4',
      TranslatePart([Offset.zero, Offset(0, 2), Offset.zero]),
    ),
  ],
);

/// Square chevron left: the chevron nudges left and back.
const DynamicIconData kSquareChevronLeftIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z',
    ),
    IconPart(
      'm14 16-4-4 4-4',
      TranslatePart([Offset.zero, Offset(-2, 0), Offset.zero]),
    ),
  ],
);

/// Square chevron right: the chevron nudges right and back.
const DynamicIconData kSquareChevronRightIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z',
    ),
    IconPart(
      'm10 8 4 4-4 4',
      TranslatePart([Offset.zero, Offset(2, 0), Offset.zero]),
    ),
  ],
);

/// Square chevron up: the chevron nudges up and back.
const DynamicIconData kSquareChevronUpIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z',
    ),
    IconPart(
      'm8 14 4-4 4 4',
      TranslatePart([Offset.zero, Offset(0, -2), Offset.zero]),
    ),
  ],
);

/// Square stack: the cards pop in turn as the top card squashes.
const DynamicIconData kSquareStackIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M4 10c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2',
      ScalePart([1, 0.9, 1], delay: Duration(milliseconds: 300)),
    ),
    IconPart(
      'M10 16c-1.1 0-2-.9-2-2v-4c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2',
      ScalePart([1, 0.9, 1], delay: Duration(milliseconds: 200)),
    ),
    IconPart(
      'M16 14h4a2 2 0 0 1 2 2v4a2 2 0 0 1 -2 2h-4a2 2 0 0 1 -2 -2v-4a2 2 0 0 1 2 -2z',
      ScalePart([1, 0.8, 1]),
    ),
  ],
);

/// Stamp that presses down with a bounce while the ink line spreads.
const DynamicIconData kStampIcon = DynamicIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart.group(
      [
        'M14 13V8.5C14 7 15 7 15 5a3 3 0 0 0-6 0c0 2 1 2 1 3.5V13',
        'M20 15.5a2.5 2.5 0 0 0-2.5-2.5h-11A2.5 2.5 0 0 0 4 15.5V17a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1z',
      ],
      TranslatePart([
        Offset.zero,
        Offset(0, 4),
        Offset(0, 4),
        Offset(0, -1),
        Offset.zero,
      ]),
    ),
    IconPart(
      'M5 22h14',
      CompositePart([
        ScalePart(
          [1, 0.85, 0.85, 1],
          axis: ScaleAxis.horizontal,
          pivot: Offset(12, 22),
        ),
        OpacityPart([1, 0.4, 1, 1]),
      ]),
    ),
  ],
);

/// Stethoscope that draws itself on from the earpiece outward.
const DynamicIconData kStethoscopeIcon = DynamicIconData(
  duration: Duration(milliseconds: 850),
  parts: [
    IconPart(
      'M20 8a2 2 0 1 0 0 4 2 2 0 1 0 0 -4',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 250),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'M8 15a6 6 0 0 0 12 0v-3',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 350),
          duration: Duration(milliseconds: 250),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 350),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'M11 2v2',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 600),
          duration: Duration(milliseconds: 250),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 600),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'M5 2v2',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 600),
          duration: Duration(milliseconds: 250),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 600),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'M5 3H4a2 2 0 0 0-2 2v4a6 6 0 0 0 12 0V5a2 2 0 0 0-2-2h-1',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 600),
          duration: Duration(milliseconds: 250),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 600),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
  ],
);

/// Sun (dim): the rays light up one by one around the disc.
const DynamicIconData kSunDimIcon = DynamicIconData(
  duration: Duration(milliseconds: 1100),
  parts: [
    IconPart('M8 12a4 4 0 1 0 8 0 4 4 0 1 0 -8 0'),
    IconPart(
      'M12 4h.01',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 100),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M20 12h.01',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 200),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M12 20h.01',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 300),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M4 12h.01',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 400),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M17.657 6.343h.01',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 500),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M17.657 17.657h.01',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 600),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M6.343 17.657h.01',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 700),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M6.343 6.343h.01',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 800),
        duration: Duration(milliseconds: 300),
      ),
    ),
  ],
);

/// Sun (medium): the rays light up one by one around the disc.
const DynamicIconData kSunMediumIcon = DynamicIconData(
  duration: Duration(milliseconds: 1100),
  parts: [
    IconPart('M8 12a4 4 0 1 0 8 0 4 4 0 1 0 -8 0'),
    IconPart(
      'M12 3v1',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 100),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M12 20v1',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 200),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M3 12h1',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 300),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M20 12h1',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 400),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'm18.364 5.636-.707.707',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 500),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'm6.343 17.657-.707.707',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 600),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'm5.636 5.636.707.707',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 700),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'm17.657 17.657.707.707',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 800),
        duration: Duration(milliseconds: 300),
      ),
    ),
  ],
);

/// Sun-moon: the crescent wobbles while the rays light up around it.
const DynamicIconData kSunMoonIcon = DynamicIconData(
  duration: Duration(milliseconds: 1500),
  parts: [
    IconPart(
      'M12 8a2.83 2.83 0 0 0 4 4 4 4 0 1 1-4-4',
      RotatePart([0, -5, 5, -2, 2, 0], pivot: kViewBoxCenter),
    ),
    IconPart(
      'M12 2v2',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 100),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M12 20v2',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 200),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'm4.9 4.9 1.4 1.4',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 300),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'm17.7 17.7 1.4 1.4',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 400),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M2 12h2',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 500),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M20 12h2',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 600),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'm6.3 17.7-1.4 1.4',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 700),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'm19.1 4.9-1.4 1.4',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 800),
        duration: Duration(milliseconds: 300),
      ),
    ),
  ],
);

/// Sunset: the sun dips while its rays light up one by one.
const DynamicIconData kSunsetIcon = DynamicIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart.group([
      'M12 10V2',
      'm16 6-4 4-4-4',
    ], TranslatePart([Offset.zero, Offset(0, 1), Offset.zero])),
    IconPart(
      'm4.93 10.93 1.41 1.41',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 100),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M2 18h2',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 200),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M20 18h2',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 300),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'm19.07 10.93-1.41 1.41',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 400),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M22 22H2',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 500),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart('M16 18a4 4 0 0 0-8 0'),
  ],
);

/// Swiss franc that draws itself: the stem first, then the cross-bars.
const DynamicIconData kSwissFrancIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M10 21V3h8',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 540)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'M6 16h9',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'M10 9.5h7',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
  ],
);

/// Switch camera: the body and swap arrows draw themselves on.
const DynamicIconData kSwitchCameraIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart('M11 19H4a2 2 0 0 1-2-2V7a2 2 0 0 1 2-2h5', DrawPart()),
    IconPart('M13 5h7a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-5', DrawPart()),
    IconPart('M9 12a3 3 0 1 0 6 0 3 3 0 1 0 -6 0'),
    IconPart('m18 22-3-3 3-3', DrawPart()),
    IconPart('m6 2 3 3-3 3', DrawPart()),
  ],
);

/// Syringe that springs back as if drawing in, with a slight tilt.
const DynamicIconData kSyringeIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart.group(
      [
        'm18 2 4 4',
        'm17 7 3-3',
        'M19 9 8.7 19.3c-1 1-2.5 1-3.4 0l-.6-.6c-1-1-1-2.5 0-3.4L15 5',
        'm9 11 4 4',
        'm5 19-3 3',
        'm14 4 6 6',
      ],
      CompositePart([
        TranslatePart([
          Offset.zero,
          Offset(-3, 3),
        ], curve: SpringCurve(stiffness: 250, damping: 25)),
        RotatePart(
          [0, 1],
          pivot: kViewBoxCenter,
          curve: SpringCurve(stiffness: 250, damping: 25),
        ),
      ]),
    ),
  ],
);

const List<IconEntry> gen18Icons = [
  IconEntry('snowflake', kSnowflakeIcon, ['snow', 'winter', 'cold', 'flake']),
  IconEntry('square-activity', kSquareActivityIcon, [
    'activity',
    'pulse',
    'heartbeat',
    'health',
    'square',
  ]),
  IconEntry('square-arrow-down', kSquareArrowDownIcon, [
    'arrow',
    'down',
    'square',
    'direction',
  ]),
  IconEntry('square-arrow-left', kSquareArrowLeftIcon, [
    'arrow',
    'left',
    'square',
    'direction',
  ]),
  IconEntry('square-arrow-right', kSquareArrowRightIcon, [
    'arrow',
    'right',
    'square',
    'direction',
  ]),
  IconEntry('square-arrow-up', kSquareArrowUpIcon, [
    'arrow',
    'up',
    'square',
    'direction',
  ]),
  IconEntry('square-chevron-down', kSquareChevronDownIcon, [
    'chevron',
    'down',
    'square',
    'arrow',
  ]),
  IconEntry('square-chevron-left', kSquareChevronLeftIcon, [
    'chevron',
    'left',
    'square',
    'arrow',
  ]),
  IconEntry('square-chevron-right', kSquareChevronRightIcon, [
    'chevron',
    'right',
    'square',
    'arrow',
  ]),
  IconEntry('square-chevron-up', kSquareChevronUpIcon, [
    'chevron',
    'up',
    'square',
    'arrow',
  ]),
  IconEntry('square-stack', kSquareStackIcon, [
    'stack',
    'layers',
    'copy',
    'cards',
    'square',
  ]),
  IconEntry('stamp', kStampIcon, ['stamp', 'approve', 'seal', 'ink']),
  IconEntry('stethoscope', kStethoscopeIcon, [
    'stethoscope',
    'doctor',
    'medical',
    'health',
  ]),
  IconEntry('sun-dim', kSunDimIcon, ['sun', 'dim', 'brightness', 'light']),
  IconEntry('sun-medium', kSunMediumIcon, [
    'sun',
    'medium',
    'brightness',
    'light',
  ]),
  IconEntry('sun-moon', kSunMoonIcon, ['sun', 'moon', 'theme', 'day', 'night']),
  IconEntry('sunset', kSunsetIcon, ['sunset', 'sun', 'evening', 'dusk']),
  IconEntry('swiss-franc', kSwissFrancIcon, [
    'swiss',
    'franc',
    'currency',
    'money',
    'chf',
  ]),
  IconEntry('switch-camera', kSwitchCameraIcon, [
    'switch',
    'camera',
    'flip',
    'swap',
  ]),
  IconEntry('syringe', kSyringeIcon, [
    'syringe',
    'injection',
    'medical',
    'vaccine',
    'needle',
  ]),
];
