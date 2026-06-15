// Generated icon batch 06. Overwritten by the batch agent.
//
// Path data: Lucide (ISC). Animation params: pqoqubbw/icons (MIT).
// See ATTRIBUTION.md.
import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

const _fadeIn = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Circle with a check mark that draws itself on.
const DynamicLucideIconData kCircleCheckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    DynamicIconPart(
      'm9 12 2 2 4-4',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
  ],
);

/// Circle with a chevron that nudges down and back.
const DynamicLucideIconData kCircleChevronDownIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    DynamicIconPart(
      'm16 10-4 4-4-4',
      DynamicTranslatePart([Offset.zero, Offset(0, 2), Offset.zero]),
    ),
  ],
);

/// Circle with a chevron that nudges left and back.
const DynamicLucideIconData kCircleChevronLeftIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    DynamicIconPart(
      'm14 16-4-4 4-4',
      DynamicTranslatePart([Offset.zero, Offset(-2, 0), Offset.zero]),
    ),
  ],
);

/// Circle with a chevron that nudges right and back.
const DynamicLucideIconData kCircleChevronRightIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    DynamicIconPart(
      'm10 8 4 4-4 4',
      DynamicTranslatePart([Offset.zero, Offset(2, 0), Offset.zero]),
    ),
  ],
);

/// Circle with a chevron that nudges up and back.
const DynamicLucideIconData kCircleChevronUpIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    DynamicIconPart(
      'm8 14 4-4 4 4',
      DynamicTranslatePart([Offset.zero, Offset(0, -2), Offset.zero]),
    ),
  ],
);

/// Dashed circle whose dashes fade in one after another around the ring.
const DynamicLucideIconData kCircleDashedIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart('M10.1 2.182a10 10 0 0 1 3.8 0',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M13.9 21.818a10 10 0 0 1-3.8 0',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M17.609 3.721a10 10 0 0 1 2.69 2.7',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M2.182 13.9a10 10 0 0 1 0-3.8',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M20.279 17.609a10 10 0 0 1-2.7 2.69',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M21.818 10.1a10 10 0 0 1 0 3.8',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M3.721 6.391a10 10 0 0 1 2.7-2.69',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 700),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M6.391 20.279a10 10 0 0 1-2.69-2.7',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 800),
            duration: Duration(milliseconds: 300))),
  ],
);

/// Circle with a dollar sign: the S draws on, then the vertical bar.
const DynamicLucideIconData kCircleDollarSignIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    DynamicIconPart(
      'M16 8h-6a2 2 0 1 0 0 4h4a2 2 0 1 1 0 4H8',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 600)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M12 18V6',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Circle with a question mark that wobbles side to side.
const DynamicLucideIconData kCircleHelpIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    DynamicIconPart.group(
      ['M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3', 'M12 17h.01'],
      DynamicRotatePart([0, -10, 10, -10, 0], pivot: kViewBoxCenter),
    ),
  ],
);

/// Hands clapping — the top hand swings shut while the whole pair tips.
const DynamicLucideIconData kClapIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart.group(
      [
        'M20.2 6 3 11l-.9-2.4c-.3-1.1.3-2.2 1.3-2.5l13.5-4c1.1-.3 2.2.3 2.5 1.3Z',
        'm6.2 5.3 3.1 3.9',
        'm12.4 3.4 3.1 4',
      ],
      DynamicRotatePart([0, -10, 16, 0], pivot: Offset(3, 11)),
    ),
    DynamicIconPart('M3 11h18v8a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2Z'),
  ],
);

/// Clipboard whose check mark draws itself on.
const DynamicLucideIconData kClipboardCheckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
        'M9 2h6a1 1 0 0 1 1 1v2a1 1 0 0 1 -1 1h-6a1 1 0 0 1 -1 -1v-2a1 1 0 0 1 1 -1z'),
    DynamicIconPart(
        'M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2'),
    DynamicIconPart(
      'm9 14 2 2 4-4',
      DynamicCompositePart([DynamicDrawPart(), DynamicOpacityPart([0, 1])]),
    ),
  ],
);

/// Clock whose hands sweep around (hour hand a full turn, minute hand 45°).
const DynamicLucideIconData kClockIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
    DynamicIconPart(
      'M12 12 16 12',
      DynamicRotatePart([0, 45], pivot: kViewBoxCenter),
    ),
    DynamicIconPart(
      'M12 12 12 6',
      DynamicRotatePart([0, 360],
          pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
    ),
  ],
);

/// Cloud with a gear that springs a half-turn.
const DynamicLucideIconData kCloudCogIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart('M4.2 15.1A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.2'),
    DynamicIconPart.group(
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
      DynamicRotatePart([0, 180],
          pivot: Offset(12, 17),
          curve: DynamicSpringCurve(stiffness: 50, damping: 10)),
    ),
  ],
);

/// Cloud with a download arrow that springs back into place.
const DynamicLucideIconData kCloudDownloadIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 300),
  parts: [
    DynamicIconPart('M4.2 15.1A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.2'),
    DynamicIconPart.group(
      ['M12 13v8l-4-4', 'm12 21 4-4'],
      DynamicTranslatePart([Offset(0, 2), Offset.zero],
          curve: Cubic(0.68, -0.6, 0.32, 1.6)),
    ),
  ],
);

/// Cloud with a lightning bolt that flickers (loops while active).
const DynamicLucideIconData kCloudLightningIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    DynamicIconPart('M6 16.326A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 .5 8.973'),
    DynamicIconPart(
      'm13 12-3 5h4l-3 5',
      DynamicOpacityPart([1, 0.4, 1]),
    ),
  ],
);

/// Cloud with rain drops that twinkle in a staggered loop.
const DynamicLucideIconData kCloudRainIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    DynamicIconPart('M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242'),
    DynamicIconPart('M16 14v6', DynamicOpacityPart([1, 0.2, 1])),
    DynamicIconPart('M8 14v6',
        DynamicOpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 200))),
    DynamicIconPart('M12 16v6',
        DynamicOpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 400))),
  ],
);

/// Cloud with wind-blown rain that twinkles in a staggered loop.
const DynamicLucideIconData kCloudRainWindIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    DynamicIconPart('M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242'),
    DynamicIconPart('m9.2 22 3-7', DynamicOpacityPart([1, 0.2, 1])),
    DynamicIconPart('m9 13-3 7',
        DynamicOpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 200))),
    DynamicIconPart('m17 13-3 7',
        DynamicOpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 400))),
  ],
);

/// Cloud with snowflakes that twinkle in a staggered loop.
const DynamicLucideIconData kCloudSnowIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1500),
  repeats: true,
  parts: [
    DynamicIconPart('M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242'),
    DynamicIconPart('M8 15h.01', DynamicOpacityPart([1, 0.3, 1])),
    DynamicIconPart('M8 19h.01',
        DynamicOpacityPart([1, 0.3, 1], delay: Duration(milliseconds: 300))),
    DynamicIconPart('M12 17h.01',
        DynamicOpacityPart([1, 0.3, 1], delay: Duration(milliseconds: 600))),
    DynamicIconPart('M12 21h.01',
        DynamicOpacityPart([1, 0.3, 1], delay: Duration(milliseconds: 900))),
    DynamicIconPart('M16 15h.01',
        DynamicOpacityPart([1, 0.3, 1], delay: Duration(milliseconds: 1200))),
    DynamicIconPart('M16 19h.01',
        DynamicOpacityPart([1, 0.3, 1], delay: Duration(milliseconds: 1500))),
  ],
);

/// Sun behind a cloud: the cloud drifts while the rays light up in sequence.
const DynamicLucideIconData kCloudSunIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart('M12 2v2',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('m4.93 4.93 1.41 1.41',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M20 12h2',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('m19.07 4.93-1.41 1.41',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart('M15.947 12.65a4 4 0 0 0-5.925-4.128',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 300))),
    DynamicIconPart(
      'M13 22H7a5 5 0 1 1 4.9-6H13a3 3 0 0 1 0 6Z',
      DynamicTranslatePart([
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
const DynamicLucideIconData kCloudUploadIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 300),
  parts: [
    DynamicIconPart('M4.2 15.1A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.2'),
    DynamicIconPart.group(
      ['M12 13v8', 'm8 17 4-4 4 4'],
      DynamicTranslatePart([Offset(0, -2), Offset.zero],
          curve: Cubic(0.68, -0.6, 0.32, 1.6)),
    ),
  ],
);

/// Coffee cup with steam wisps that rise and fade in a staggered loop.
const DynamicLucideIconData kCoffeeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1500),
  repeats: true,
  parts: [
    DynamicIconPart(
      'M6 2v2',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(0, -3)]),
        DynamicOpacityPart([0, 1, 0]),
      ]),
    ),
    DynamicIconPart(
      'M10 2v2',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(0, -3)],
            delay: Duration(milliseconds: 200)),
        DynamicOpacityPart([0, 1, 0], delay: Duration(milliseconds: 200)),
      ]),
    ),
    DynamicIconPart(
      'M14 2v2',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(0, -3)],
            delay: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1, 0], delay: Duration(milliseconds: 400)),
      ]),
    ),
    DynamicIconPart(
        'M16 8a1 1 0 0 1 1 1v8a4 4 0 0 1-4 4H7a4 4 0 0 1-4-4V9a1 1 0 0 1 1-1h14a4 4 0 1 1 0 8h-1'),
  ],
);

const List<DynamicLucideIconEntry> gen06Icons = [
  DynamicLucideIconEntry('circle-check', kCircleCheckIcon, ['check', 'tick', 'verified', 'circle']),
  DynamicLucideIconEntry('circle-chevron-down', kCircleChevronDownIcon, ['chevron', 'down', 'arrow', 'circle']),
  DynamicLucideIconEntry('circle-chevron-left', kCircleChevronLeftIcon, ['chevron', 'left', 'arrow', 'circle']),
  DynamicLucideIconEntry('circle-chevron-right', kCircleChevronRightIcon, ['chevron', 'right', 'arrow', 'circle']),
  DynamicLucideIconEntry('circle-chevron-up', kCircleChevronUpIcon, ['chevron', 'up', 'arrow', 'circle']),
  DynamicLucideIconEntry('circle-dashed', kCircleDashedIcon, ['circle', 'dashed', 'dotted', 'loading']),
  DynamicLucideIconEntry('circle-dollar-sign', kCircleDollarSignIcon, ['dollar', 'money', 'currency', 'circle']),
  DynamicLucideIconEntry('circle-help', kCircleHelpIcon, ['help', 'question', 'support', 'circle']),
  DynamicLucideIconEntry('clap', kClapIcon, ['clap', 'applause', 'hands', 'cheer']),
  DynamicLucideIconEntry('clipboard-check', kClipboardCheckIcon, ['clipboard', 'check', 'task', 'done']),
  DynamicLucideIconEntry('clock', kClockIcon, ['clock', 'time', 'watch', 'hour']),
  DynamicLucideIconEntry('cloud-cog', kCloudCogIcon, ['cloud', 'cog', 'settings', 'gear']),
  DynamicLucideIconEntry('cloud-download', kCloudDownloadIcon, ['cloud', 'download', 'save', 'arrow']),
  DynamicLucideIconEntry('cloud-lightning', kCloudLightningIcon, ['cloud', 'lightning', 'storm', 'thunder']),
  DynamicLucideIconEntry('cloud-rain', kCloudRainIcon, ['cloud', 'rain', 'weather', 'drizzle']),
  DynamicLucideIconEntry('cloud-rain-wind', kCloudRainWindIcon, ['cloud', 'rain', 'wind', 'storm']),
  DynamicLucideIconEntry('cloud-snow', kCloudSnowIcon, ['cloud', 'snow', 'weather', 'winter']),
  DynamicLucideIconEntry('cloud-sun', kCloudSunIcon, ['cloud', 'sun', 'weather', 'partly']),
  DynamicLucideIconEntry('cloud-upload', kCloudUploadIcon, ['cloud', 'upload', 'arrow', 'save']),
  DynamicLucideIconEntry('coffee', kCoffeeIcon, ['coffee', 'cup', 'tea', 'drink']),
];
