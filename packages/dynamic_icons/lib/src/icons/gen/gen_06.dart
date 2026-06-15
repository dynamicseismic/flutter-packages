// Generated icon batch 06. Overwritten by the batch agent.
//
// Path data: Lucide (ISC). Animation params: pqoqubbw/icons (MIT).
// See LICENSE.
import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

const _fadeIn = OpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Circle with a check mark that draws itself on.
const DynamicIconData kCircleCheckIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    IconPart('m9 12 2 2 4-4', CompositePart([DrawPart(), _fadeIn])),
  ],
);

/// Circle with a chevron that nudges down and back.
const DynamicIconData kCircleChevronDownIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    IconPart(
      'm16 10-4 4-4-4',
      TranslatePart([Offset.zero, Offset(0, 2), Offset.zero]),
    ),
  ],
);

/// Circle with a chevron that nudges left and back.
const DynamicIconData kCircleChevronLeftIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    IconPart(
      'm14 16-4-4 4-4',
      TranslatePart([Offset.zero, Offset(-2, 0), Offset.zero]),
    ),
  ],
);

/// Circle with a chevron that nudges right and back.
const DynamicIconData kCircleChevronRightIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    IconPart(
      'm10 8 4 4-4 4',
      TranslatePart([Offset.zero, Offset(2, 0), Offset.zero]),
    ),
  ],
);

/// Circle with a chevron that nudges up and back.
const DynamicIconData kCircleChevronUpIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    IconPart(
      'm8 14 4-4 4 4',
      TranslatePart([Offset.zero, Offset(0, -2), Offset.zero]),
    ),
  ],
);

/// Dashed circle whose dashes fade in one after another around the ring.
const DynamicIconData kCircleDashedIcon = DynamicIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart(
      'M10.1 2.182a10 10 0 0 1 3.8 0',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 100),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M13.9 21.818a10 10 0 0 1-3.8 0',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 200),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M17.609 3.721a10 10 0 0 1 2.69 2.7',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 300),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M2.182 13.9a10 10 0 0 1 0-3.8',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 400),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M20.279 17.609a10 10 0 0 1-2.7 2.69',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 500),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M21.818 10.1a10 10 0 0 1 0 3.8',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 600),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M3.721 6.391a10 10 0 0 1 2.7-2.69',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 700),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M6.391 20.279a10 10 0 0 1-2.69-2.7',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 800),
        duration: Duration(milliseconds: 300),
      ),
    ),
  ],
);

/// Circle with a dollar sign: the S draws on, then the vertical bar.
const DynamicIconData kCircleDollarSignIcon = DynamicIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    IconPart(
      'M16 8h-6a2 2 0 1 0 0 4h4a2 2 0 1 1 0 4H8',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 600)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'M12 18V6',
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

/// Circle with a question mark that wobbles side to side.
const DynamicIconData kCircleHelpIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    IconPart.group([
      'M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3',
      'M12 17h.01',
    ], RotatePart([0, -10, 10, -10, 0], pivot: kViewBoxCenter)),
  ],
);

/// Hands clapping — the top hand swings shut while the whole pair tips.
const DynamicIconData kClapIcon = DynamicIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart.group([
      'M20.2 6 3 11l-.9-2.4c-.3-1.1.3-2.2 1.3-2.5l13.5-4c1.1-.3 2.2.3 2.5 1.3Z',
      'm6.2 5.3 3.1 3.9',
      'm12.4 3.4 3.1 4',
    ], RotatePart([0, -10, 16, 0], pivot: Offset(3, 11))),
    IconPart('M3 11h18v8a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2Z'),
  ],
);

/// Clipboard whose check mark draws itself on.
const DynamicIconData kClipboardCheckIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M9 2h6a1 1 0 0 1 1 1v2a1 1 0 0 1 -1 1h-6a1 1 0 0 1 -1 -1v-2a1 1 0 0 1 1 -1z',
    ),
    IconPart(
      'M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2',
    ),
    IconPart(
      'm9 14 2 2 4-4',
      CompositePart([
        DrawPart(),
        OpacityPart([0, 1]),
      ]),
    ),
  ],
);

/// Clock whose hands sweep around (hour hand a full turn, minute hand 45°).
const DynamicIconData kClockIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    IconPart('M12 12 16 12', RotatePart([0, 45], pivot: kViewBoxCenter)),
    IconPart(
      'M12 12 12 6',
      RotatePart([0, 360], pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
    ),
  ],
);

/// Cloud with a gear that springs a half-turn.
const DynamicIconData kCloudCogIcon = DynamicIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart('M4.2 15.1A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.2'),
    IconPart.group(
      [
        'm9.2 15.9-.9-.4',
        'm9.2 18.1-.9.4',
        'm10.9 14.2-.4-.9',
        'm10.9 19.8-.4.9',
        'm13.5 13.3-.4.9',
        'm13.5 20.7-.4-.9',
        'm15.7 15.5-.9.4',
        'm15.7 18.5-.9-.4',
        'M9 17a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      ],
      RotatePart(
        [0, 180],
        pivot: Offset(12, 17),
        curve: SpringCurve(stiffness: 50, damping: 10),
      ),
    ),
  ],
);

/// Cloud with a download arrow that springs back into place.
const DynamicIconData kCloudDownloadIcon = DynamicIconData(
  duration: Duration(milliseconds: 300),
  parts: [
    IconPart('M4.2 15.1A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.2'),
    IconPart.group(
      ['M12 13v8l-4-4', 'm12 21 4-4'],
      TranslatePart([
        Offset(0, 2),
        Offset.zero,
      ], curve: Cubic(0.68, -0.6, 0.32, 1.6)),
    ),
  ],
);

/// Cloud with a lightning bolt that flickers (loops while active).
const DynamicIconData kCloudLightningIcon = DynamicIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    IconPart('M6 16.326A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 .5 8.973'),
    IconPart('m13 12-3 5h4l-3 5', OpacityPart([1, 0.4, 1])),
  ],
);

/// Cloud with rain drops that twinkle in a staggered loop.
const DynamicIconData kCloudRainIcon = DynamicIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    IconPart('M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242'),
    IconPart('M16 14v6', OpacityPart([1, 0.2, 1])),
    IconPart(
      'M8 14v6',
      OpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 200)),
    ),
    IconPart(
      'M12 16v6',
      OpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 400)),
    ),
  ],
);

/// Cloud with wind-blown rain that twinkles in a staggered loop.
const DynamicIconData kCloudRainWindIcon = DynamicIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    IconPart('M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242'),
    IconPart('m9.2 22 3-7', OpacityPart([1, 0.2, 1])),
    IconPart(
      'm9 13-3 7',
      OpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 200)),
    ),
    IconPart(
      'm17 13-3 7',
      OpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 400)),
    ),
  ],
);

/// Cloud with snowflakes that twinkle in a staggered loop.
const DynamicIconData kCloudSnowIcon = DynamicIconData(
  duration: Duration(milliseconds: 1500),
  repeats: true,
  parts: [
    IconPart('M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242'),
    IconPart('M8 15h.01', OpacityPart([1, 0.3, 1])),
    IconPart(
      'M8 19h.01',
      OpacityPart([1, 0.3, 1], delay: Duration(milliseconds: 300)),
    ),
    IconPart(
      'M12 17h.01',
      OpacityPart([1, 0.3, 1], delay: Duration(milliseconds: 600)),
    ),
    IconPart(
      'M12 21h.01',
      OpacityPart([1, 0.3, 1], delay: Duration(milliseconds: 900)),
    ),
    IconPart(
      'M16 15h.01',
      OpacityPart([1, 0.3, 1], delay: Duration(milliseconds: 1200)),
    ),
    IconPart(
      'M16 19h.01',
      OpacityPart([1, 0.3, 1], delay: Duration(milliseconds: 1500)),
    ),
  ],
);

/// Sun behind a cloud: the cloud drifts while the rays light up in sequence.
const DynamicIconData kCloudSunIcon = DynamicIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart(
      'M12 2v2',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 100),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'm4.93 4.93 1.41 1.41',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 200),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M20 12h2',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 300),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'm19.07 4.93-1.41 1.41',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 400),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M15.947 12.65a4 4 0 0 0-5.925-4.128',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 500),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M13 22H7a5 5 0 1 1 4.9-6H13a3 3 0 0 1 0 6Z',
      TranslatePart([
        Offset(-1, -1),
        Offset(1, 1),
        Offset(-1, -1),
        Offset(1, 1),
        Offset.zero,
      ]),
    ),
  ],
);

/// Cloud with an upload arrow that springs back into place.
const DynamicIconData kCloudUploadIcon = DynamicIconData(
  duration: Duration(milliseconds: 300),
  parts: [
    IconPart('M4.2 15.1A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.2'),
    IconPart.group(
      ['M12 13v8', 'm8 17 4-4 4 4'],
      TranslatePart([
        Offset(0, -2),
        Offset.zero,
      ], curve: Cubic(0.68, -0.6, 0.32, 1.6)),
    ),
  ],
);

/// Coffee cup with steam wisps that rise and fade in a staggered loop.
const DynamicIconData kCoffeeIcon = DynamicIconData(
  duration: Duration(milliseconds: 1500),
  repeats: true,
  parts: [
    IconPart(
      'M6 2v2',
      CompositePart([
        TranslatePart([Offset.zero, Offset(0, -3)]),
        OpacityPart([0, 1, 0]),
      ]),
    ),
    IconPart(
      'M10 2v2',
      CompositePart([
        TranslatePart([
          Offset.zero,
          Offset(0, -3),
        ], delay: Duration(milliseconds: 200)),
        OpacityPart([0, 1, 0], delay: Duration(milliseconds: 200)),
      ]),
    ),
    IconPart(
      'M14 2v2',
      CompositePart([
        TranslatePart([
          Offset.zero,
          Offset(0, -3),
        ], delay: Duration(milliseconds: 400)),
        OpacityPart([0, 1, 0], delay: Duration(milliseconds: 400)),
      ]),
    ),
    IconPart(
      'M16 8a1 1 0 0 1 1 1v8a4 4 0 0 1-4 4H7a4 4 0 0 1-4-4V9a1 1 0 0 1 1-1h14a4 4 0 1 1 0 8h-1',
    ),
  ],
);

const List<IconEntry> gen06Icons = [
  IconEntry('circle-check', kCircleCheckIcon, [
    'check',
    'tick',
    'verified',
    'circle',
  ]),
  IconEntry('circle-chevron-down', kCircleChevronDownIcon, [
    'chevron',
    'down',
    'arrow',
    'circle',
  ]),
  IconEntry('circle-chevron-left', kCircleChevronLeftIcon, [
    'chevron',
    'left',
    'arrow',
    'circle',
  ]),
  IconEntry('circle-chevron-right', kCircleChevronRightIcon, [
    'chevron',
    'right',
    'arrow',
    'circle',
  ]),
  IconEntry('circle-chevron-up', kCircleChevronUpIcon, [
    'chevron',
    'up',
    'arrow',
    'circle',
  ]),
  IconEntry('circle-dashed', kCircleDashedIcon, [
    'circle',
    'dashed',
    'dotted',
    'loading',
  ]),
  IconEntry('circle-dollar-sign', kCircleDollarSignIcon, [
    'dollar',
    'money',
    'currency',
    'circle',
  ]),
  IconEntry('circle-help', kCircleHelpIcon, [
    'help',
    'question',
    'support',
    'circle',
  ]),
  IconEntry('clap', kClapIcon, ['clap', 'applause', 'hands', 'cheer']),
  IconEntry('clipboard-check', kClipboardCheckIcon, [
    'clipboard',
    'check',
    'task',
    'done',
  ]),
  IconEntry('clock', kClockIcon, ['clock', 'time', 'watch', 'hour']),
  IconEntry('cloud-cog', kCloudCogIcon, ['cloud', 'cog', 'settings', 'gear']),
  IconEntry('cloud-download', kCloudDownloadIcon, [
    'cloud',
    'download',
    'save',
    'arrow',
  ]),
  IconEntry('cloud-lightning', kCloudLightningIcon, [
    'cloud',
    'lightning',
    'storm',
    'thunder',
  ]),
  IconEntry('cloud-rain', kCloudRainIcon, [
    'cloud',
    'rain',
    'weather',
    'drizzle',
  ]),
  IconEntry('cloud-rain-wind', kCloudRainWindIcon, [
    'cloud',
    'rain',
    'wind',
    'storm',
  ]),
  IconEntry('cloud-snow', kCloudSnowIcon, [
    'cloud',
    'snow',
    'weather',
    'winter',
  ]),
  IconEntry('cloud-sun', kCloudSunIcon, ['cloud', 'sun', 'weather', 'partly']),
  IconEntry('cloud-upload', kCloudUploadIcon, [
    'cloud',
    'upload',
    'arrow',
    'save',
  ]),
  IconEntry('coffee', kCoffeeIcon, ['coffee', 'cup', 'tea', 'drink']),
];
