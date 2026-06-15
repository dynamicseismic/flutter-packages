// Generated icon batch 19. Path data: Lucide (ISC). Animation params:
// pqoqubbw/icons (MIT). See ATTRIBUTION.md.
import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

const _fadeIn = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Telescope whose scope tilts up to peer at the sky; the stand stays put.
const DynamicLucideIconData kTelescopeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart.group(
      [
        'm10.065 12.493-6.18 1.318a.934.934 0 0 1-1.108-.702l-.537-2.15a1.07 1.07 0 0 1 .691-1.265l13.504-4.44',
        'm13.56 11.747 4.332-.924',
        'M16.485 5.94a2 2 0 0 1 1.455-2.425l1.09-.272a1 1 0 0 1 1.212.727l1.515 6.06a1 1 0 0 1-.727 1.213l-1.09.272a2 2 0 0 1-2.425-1.455z',
        'm6.158 8.633 1.114 4.456',
      ],
      DynamicRotatePart([0, -15], pivot: Offset(12, 13)),
    ),
    DynamicIconPart('m16 21-3.105-6.21'),
    DynamicIconPart('m8 21 3.105-6.21'),
    DynamicIconPart('M10 13a2 2 0 1 0 4 0 2 2 0 1 0 -4 0'),
  ],
);

/// Terminal: the prompt line blinks like a cursor (loops while active).
const DynamicLucideIconData kTerminalIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  repeats: true,
  parts: [
    DynamicIconPart('M4 17 10 11 4 5'),
    DynamicIconPart('M12 19 20 19', DynamicOpacityPart([1, 0, 1], curve: Curves.linear)),
  ],
);

/// Thermometer that wobbles, as if the mercury is jittering.
const DynamicLucideIconData kThermometerIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M14 4v10.54a4 4 0 1 1-4 0V4a2 2 0 0 1 4 0Z',
      DynamicRotatePart([0, -5, 5, -5, 5, 0], pivot: kViewBoxCenter),
    ),
  ],
);

/// Timer: the hand sweeps three quarters around, the top button taps down.
const DynamicLucideIconData kTimerIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart(
      'M10 2 14 2',
      DynamicCompositePart([
        DynamicScalePart([0.9, 1], duration: Duration(milliseconds: 300)),
        DynamicTranslatePart([Offset.zero, Offset(0, 1), Offset.zero],
            duration: Duration(milliseconds: 300)),
      ]),
    ),
    DynamicIconPart(
      'M12 14 15 11',
      DynamicRotatePart([0, 300],
          pivot: Offset(12, 14),
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 600),
          curve: Curves.fastOutSlowIn),
    ),
    DynamicIconPart('M4 14a8 8 0 1 0 16 0 8 8 0 1 0 -16 0'),
  ],
);

/// Tornado: the wind lines gust sideways in a staggered ripple.
const DynamicLucideIconData kTornadoIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart(
      'M21 4H3',
      DynamicTranslatePart([Offset.zero, Offset(1, 0), Offset.zero]),
    ),
    DynamicIconPart(
      'M18 8H6',
      DynamicTranslatePart([Offset.zero, Offset(2, 0), Offset.zero],
          delay: Duration(milliseconds: 100)),
    ),
    DynamicIconPart(
      'M19 12H9',
      DynamicTranslatePart([Offset.zero, Offset(3, 0), Offset.zero],
          delay: Duration(milliseconds: 200)),
    ),
    DynamicIconPart(
      'M16 16h-6',
      DynamicTranslatePart([Offset.zero, Offset(4, 0), Offset.zero],
          delay: Duration(milliseconds: 300)),
    ),
    DynamicIconPart(
      'M11 20H9',
      DynamicTranslatePart([Offset.zero, Offset(5, 0), Offset.zero],
          delay: Duration(milliseconds: 400)),
    ),
  ],
);

/// Train track: the rails are static while the sleepers draw on one by one.
const DynamicLucideIconData kTrainTrackIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart('M2 17 17 2'),
    DynamicIconPart('M7 22 22 7'),
    DynamicIconPart(
      'm14 2 8 8',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 300)), _fadeIn]),
    ),
    DynamicIconPart(
      'm11 5 8 8',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'm8 8 8 8',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'm5 11 8 8',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'm2 14 8 8',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 400), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Trending-down: the line draws in, the arrow head follows, riding a dip.
const DynamicLucideIconData kTrendingDownIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M22 17 13.5 8.5 8.5 13.5 2 7',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 400)),
        DynamicTranslatePart([Offset.zero, Offset(2, 2), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
    DynamicIconPart(
      'M16 17 22 17 22 11',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        DynamicTranslatePart([Offset.zero, Offset(2, 2), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
  ],
);

/// Trending-up-down: both trend lines draw in, their arrow heads following.
const DynamicLucideIconData kTrendingUpDownIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M21 21 14.828 14.828',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 400)),
        DynamicTranslatePart([Offset.zero, Offset(2, 0), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
    DynamicIconPart(
      'M21 16v5h-5',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        DynamicTranslatePart([Offset.zero, Offset(2, 0), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
    DynamicIconPart(
      'm21 3-9 9-4-4-6 6',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 400)),
        DynamicTranslatePart([Offset.zero, Offset(2, 0), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
    DynamicIconPart(
      'M21 8V3h-5',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        DynamicTranslatePart([Offset.zero, Offset(2, 0), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
  ],
);

/// Truck driving along: body bobs, wheels spin, speed lines streak (loops).
const DynamicLucideIconData kTruckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  repeats: true,
  parts: [
    DynamicIconPart(
      'M0 8 5 8',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(-4, 0), Offset(-10, 0), Offset(-16, 0)],
            curve: Curves.easeOut),
        DynamicOpacityPart([0, 0.7, 0.5, 0], curve: Curves.easeOut),
      ]),
    ),
    DynamicIconPart(
      'M-1 11 6 11',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(-4, 0), Offset(-10, 0), Offset(-16, 0)],
            delay: Duration(milliseconds: 40), curve: Curves.easeOut),
        DynamicOpacityPart([0, 0.7, 0.5, 0],
            delay: Duration(milliseconds: 40), curve: Curves.easeOut),
      ]),
    ),
    DynamicIconPart(
      'M0 14 4 14',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(-4, 0), Offset(-10, 0), Offset(-16, 0)],
            delay: Duration(milliseconds: 80), curve: Curves.easeOut),
        DynamicOpacityPart([0, 0.7, 0.5, 0],
            delay: Duration(milliseconds: 80), curve: Curves.easeOut),
      ]),
    ),
    DynamicIconPart.group(
      [
        'M14 18V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v11a1 1 0 0 0 1 1h2',
        'M15 18H9',
        'M19 18h2a1 1 0 0 0 1-1v-3.65a1 1 0 0 0-.22-.624l-3.48-4.35A1 1 0 0 0 17.52 8H14',
      ],
      DynamicTranslatePart([
        Offset.zero,
        Offset(0, -1),
        Offset.zero,
        Offset(0, -0.5),
        Offset.zero,
      ]),
    ),
    DynamicIconPart.group(
      ['M5 18a2 2 0 1 0 4 0 2 2 0 1 0 -4 0', 'M7 16.5 7 19.5', 'M5.5 18 8.5 18'],
      DynamicCompositePart([
        DynamicTranslatePart([
          Offset.zero,
          Offset(0, -1),
          Offset.zero,
          Offset(0, -0.5),
          Offset.zero,
        ]),
        DynamicRotatePart([0, 360], pivot: Offset(7, 18), curve: Curves.linear),
      ]),
    ),
    DynamicIconPart.group(
      ['M15 18a2 2 0 1 0 4 0 2 2 0 1 0 -4 0', 'M17 16.5 17 19.5', 'M15.5 18 18.5 18'],
      DynamicCompositePart([
        DynamicTranslatePart([
          Offset.zero,
          Offset(0, -1),
          Offset.zero,
          Offset(0, -0.5),
          Offset.zero,
        ]),
        DynamicRotatePart([0, 360], pivot: Offset(17, 18), curve: Curves.linear),
      ]),
    ),
  ],
);

/// Turkish lira: the main stroke draws on, then the two bars sweep in.
const DynamicLucideIconData kTurkishLiraIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M18 12a9 9 0 0 1-9 9V3',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 600)), _fadeIn]),
    ),
    DynamicIconPart(
      'M15 4 5 9',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500), duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'm15 8.5-10 5',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Twitch glyph: the screen outline and the two pixels draw themselves on.
const DynamicLucideIconData kTwitchIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M21 2H3v16h5v4l4-4h5l4-4V2z',
      DynamicCompositePart([DynamicDrawPart(curve: Curves.linear), _fadeIn]),
    ),
    DynamicIconPart(
      'M11 11V7',
      DynamicCompositePart([DynamicDrawPart(curve: Curves.linear), _fadeIn]),
    ),
    DynamicIconPart(
      'M16 11V7',
      DynamicCompositePart([DynamicDrawPart(curve: Curves.linear), _fadeIn]),
    ),
  ],
);

/// Twitter bird that draws itself on in one continuous stroke.
const DynamicLucideIconData kTwitterIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M22 4s-.7 2.1-2 3.4c1.6 10-9.4 17.3-18 11.6 2.2.1 4.4-.6 6-2C3 15.5.5 9.6 3 5c2.2 2.6 5.6 4.1 9 4-.9-4.2 4-6.6 7-3.8 1.1 0 3-1.2 3-1.2z',
      DynamicCompositePart([DynamicDrawPart(curve: Curves.linear), _fadeIn]),
    ),
  ],
);

/// Underline: the U draws on, then the underline sweeps in beneath it.
const DynamicLucideIconData kUnderlineIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M6 4v6a6 6 0 0 0 12 0V4',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M4 20 20 20',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Undo: the arrow head twists back as the arc gives a little tug.
const DynamicLucideIconData kUndoIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M21 17a9 9 0 0 0-9-9 9 9 0 0 0-6 2.3L3 13',
      DynamicScalePart([1, 0.9, 1], curve: Cubic(0.25, 0.1, 0.25, 1)),
    ),
    DynamicIconPart(
      'M3 7v6h6',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(2.1, -1.4), Offset.zero],
            curve: Cubic(0.25, 0.1, 0.25, 1)),
        DynamicRotatePart([0, 12, 0], curve: Cubic(0.25, 0.1, 0.25, 1)),
      ]),
    ),
  ],
);

/// Undo-dot: the arrow head twists back, the arc tugs, the dot pulses.
const DynamicLucideIconData kUndoDotIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M21 17a9 9 0 0 0-15-6.7L3 13',
      DynamicScalePart([1, 0.9, 1], curve: Cubic(0.25, 0.1, 0.25, 1)),
    ),
    DynamicIconPart(
      'M11 17a1 1 0 1 0 2 0 1 1 0 1 0 -2 0',
      DynamicScalePart([1, 1.2, 1], curve: Cubic(0.25, 0.1, 0.25, 1)),
    ),
    DynamicIconPart(
      'M3 7v6h6',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(2.1, -1.4), Offset.zero],
            curve: Cubic(0.25, 0.1, 0.25, 1)),
        DynamicRotatePart([0, 12, 0], curve: Cubic(0.25, 0.1, 0.25, 1)),
      ]),
    ),
  ],
);

/// Upvote arrow that nudges up and to the side with a spring tilt.
const DynamicLucideIconData kUpvoteIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart.group(
      [
        'M7 10v12',
        'M15 5.88 14 10h5.83a2 2 0 0 1 1.92 2.56l-2.33 8A2 2 0 0 1 17.5 22H4a2 2 0 0 1-2-2v-8a2 2 0 0 1 2-2h2.76a2 2 0 0 0 1.79-1.11L12 2a3.13 3.13 0 0 1 3 3.88Z',
      ],
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(-1, -2)],
            curve: DynamicSpringCurve(stiffness: 250, damping: 25)),
        DynamicRotatePart([0, -12],
            pivot: kViewBoxCenter,
            curve: DynamicSpringCurve(stiffness: 250, damping: 25)),
      ]),
    ),
  ],
);

/// User: the head draws on with a pop, then the shoulders sweep in.
const DynamicLucideIconData kUserIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M7 8a5 5 0 1 0 10 0 5 5 0 1 0 -10 0',
      DynamicCompositePart([DynamicDrawPart(), DynamicScalePart([0.5, 1])]),
    ),
    DynamicIconPart(
      'M20 21a8 8 0 0 0-16 0',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// User-check: the figure stays put while the check draws itself on.
const DynamicLucideIconData kUserCheckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart('M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2'),
    DynamicIconPart('M5 7a4 4 0 1 0 8 0 4 4 0 1 0 -8 0'),
    DynamicIconPart(
      'M16 11L18 13L22 9',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
  ],
);

/// User-round-check: the figure stays put while the check draws itself on.
const DynamicLucideIconData kUserRoundCheckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart('M2 21a8 8 0 0 1 13.292-6'),
    DynamicIconPart('M5 8a5 5 0 1 0 10 0 5 5 0 1 0 -10 0'),
    DynamicIconPart(
      'm16 19 2 2 4-4',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
  ],
);

/// User-round-cog: the figure stays put while the gear springs a half turn.
const DynamicLucideIconData kUserRoundCogIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart('M2 21a8 8 0 0 1 10.434-7.62'),
    DynamicIconPart('M5 8a5 5 0 1 0 10 0 5 5 0 1 0 -10 0'),
    DynamicIconPart.group(
      [
        'M15 18a3 3 0 1 0 6 0 3 3 0 1 0 -6 0',
        'm14.305 19.53.923-.382',
        'm15.228 16.852-.923-.383',
        'm16.852 15.228-.383-.923',
        'm16.852 20.772-.383.924',
        'm19.148 15.228.383-.923',
        'm19.53 21.696-.382-.924',
        'm20.772 16.852.924-.383',
        'm20.772 19.148.924.383',
      ],
      DynamicRotatePart([0, 180],
          pivot: Offset(18, 18), curve: DynamicSpringCurve(stiffness: 50, damping: 10)),
    ),
  ],
);

const List<DynamicLucideIconEntry> gen19Icons = [
  DynamicLucideIconEntry('telescope', kTelescopeIcon, ['astronomy', 'space', 'stars', 'observe']),
  DynamicLucideIconEntry('terminal', kTerminalIcon, ['console', 'command', 'shell', 'code']),
  DynamicLucideIconEntry('thermometer', kThermometerIcon, ['temperature', 'heat', 'weather', 'fever']),
  DynamicLucideIconEntry('timer', kTimerIcon, ['stopwatch', 'clock', 'countdown', 'time']),
  DynamicLucideIconEntry('tornado', kTornadoIcon, ['storm', 'weather', 'wind', 'twister']),
  DynamicLucideIconEntry('train-track', kTrainTrackIcon, ['railway', 'rail', 'transport', 'track']),
  DynamicLucideIconEntry('trending-down', kTrendingDownIcon, ['chart', 'decrease', 'analytics', 'down']),
  DynamicLucideIconEntry('trending-up-down', kTrendingUpDownIcon, ['chart', 'volatile', 'analytics', 'fluctuate']),
  DynamicLucideIconEntry('truck', kTruckIcon, ['delivery', 'shipping', 'transport', 'vehicle']),
  DynamicLucideIconEntry('turkish-lira', kTurkishLiraIcon, ['currency', 'money', 'finance', 'try']),
  DynamicLucideIconEntry('twitch', kTwitchIcon, ['stream', 'gaming', 'social', 'brand']),
  DynamicLucideIconEntry('twitter', kTwitterIcon, ['social', 'bird', 'tweet', 'brand']),
  DynamicLucideIconEntry('underline', kUnderlineIcon, ['text', 'format', 'style', 'editor']),
  DynamicLucideIconEntry('undo', kUndoIcon, ['back', 'revert', 'history', 'arrow']),
  DynamicLucideIconEntry('undo-dot', kUndoDotIcon, ['back', 'revert', 'history', 'arrow']),
  DynamicLucideIconEntry('upvote', kUpvoteIcon, ['like', 'thumbs up', 'vote', 'arrow']),
  DynamicLucideIconEntry('user', kUserIcon, ['person', 'profile', 'account', 'avatar']),
  DynamicLucideIconEntry('user-check', kUserCheckIcon, ['person', 'verified', 'approved', 'account']),
  DynamicLucideIconEntry('user-round-check', kUserRoundCheckIcon, ['person', 'verified', 'approved', 'account']),
  DynamicLucideIconEntry('user-round-cog', kUserRoundCogIcon, ['person', 'settings', 'account', 'gear']),
];
