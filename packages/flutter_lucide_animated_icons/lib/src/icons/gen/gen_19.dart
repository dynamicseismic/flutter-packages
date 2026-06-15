// Generated icon batch 19. Path data: Lucide (ISC). Animation params:
// pqoqubbw/icons (MIT). See ATTRIBUTION.md.
import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

const _fadeIn = OpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Telescope whose scope tilts up to peer at the sky; the stand stays put.
const LucideIconData kTelescopeIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart.group(
      [
        'm10.065 12.493-6.18 1.318a.934.934 0 0 1-1.108-.702l-.537-2.15a1.07 1.07 0 0 1 .691-1.265l13.504-4.44',
        'm13.56 11.747 4.332-.924',
        'M16.485 5.94a2 2 0 0 1 1.455-2.425l1.09-.272a1 1 0 0 1 1.212.727l1.515 6.06a1 1 0 0 1-.727 1.213l-1.09.272a2 2 0 0 1-2.425-1.455z',
        'm6.158 8.633 1.114 4.456',
      ],
      RotatePart([0, -15], pivot: Offset(12, 13)),
    ),
    IconPart('m16 21-3.105-6.21'),
    IconPart('m8 21 3.105-6.21'),
    IconPart('M10 13a2 2 0 1 0 4 0 2 2 0 1 0 -4 0'),
  ],
);

/// Terminal: the prompt line blinks like a cursor (loops while active).
const LucideIconData kTerminalIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  repeats: true,
  parts: [
    IconPart('M4 17 10 11 4 5'),
    IconPart('M12 19 20 19', OpacityPart([1, 0, 1], curve: Curves.linear)),
  ],
);

/// Thermometer that wobbles, as if the mercury is jittering.
const LucideIconData kThermometerIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M14 4v10.54a4 4 0 1 1-4 0V4a2 2 0 0 1 4 0Z',
      RotatePart([0, -5, 5, -5, 5, 0], pivot: kViewBoxCenter),
    ),
  ],
);

/// Timer: the hand sweeps three quarters around, the top button taps down.
const LucideIconData kTimerIcon = LucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart(
      'M10 2 14 2',
      CompositePart([
        ScalePart([0.9, 1], duration: Duration(milliseconds: 300)),
        TranslatePart([Offset.zero, Offset(0, 1), Offset.zero],
            duration: Duration(milliseconds: 300)),
      ]),
    ),
    IconPart(
      'M12 14 15 11',
      RotatePart([0, 300],
          pivot: Offset(12, 14),
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 600),
          curve: Curves.fastOutSlowIn),
    ),
    IconPart('M4 14a8 8 0 1 0 16 0 8 8 0 1 0 -16 0'),
  ],
);

/// Tornado: the wind lines gust sideways in a staggered ripple.
const LucideIconData kTornadoIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart(
      'M21 4H3',
      TranslatePart([Offset.zero, Offset(1, 0), Offset.zero]),
    ),
    IconPart(
      'M18 8H6',
      TranslatePart([Offset.zero, Offset(2, 0), Offset.zero],
          delay: Duration(milliseconds: 100)),
    ),
    IconPart(
      'M19 12H9',
      TranslatePart([Offset.zero, Offset(3, 0), Offset.zero],
          delay: Duration(milliseconds: 200)),
    ),
    IconPart(
      'M16 16h-6',
      TranslatePart([Offset.zero, Offset(4, 0), Offset.zero],
          delay: Duration(milliseconds: 300)),
    ),
    IconPart(
      'M11 20H9',
      TranslatePart([Offset.zero, Offset(5, 0), Offset.zero],
          delay: Duration(milliseconds: 400)),
    ),
  ],
);

/// Train track: the rails are static while the sleepers draw on one by one.
const LucideIconData kTrainTrackIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart('M2 17 17 2'),
    IconPart('M7 22 22 7'),
    IconPart(
      'm14 2 8 8',
      CompositePart([DrawPart(duration: Duration(milliseconds: 300)), _fadeIn]),
    ),
    IconPart(
      'm11 5 8 8',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'm8 8 8 8',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'm5 11 8 8',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'm2 14 8 8',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 400), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Trending-down: the line draws in, the arrow head follows, riding a dip.
const LucideIconData kTrendingDownIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M22 17 13.5 8.5 8.5 13.5 2 7',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 400)),
        TranslatePart([Offset.zero, Offset(2, 2), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
    IconPart(
      'M16 17 22 17 22 11',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        TranslatePart([Offset.zero, Offset(2, 2), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
  ],
);

/// Trending-up-down: both trend lines draw in, their arrow heads following.
const LucideIconData kTrendingUpDownIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M21 21 14.828 14.828',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 400)),
        TranslatePart([Offset.zero, Offset(2, 0), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
    IconPart(
      'M21 16v5h-5',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        TranslatePart([Offset.zero, Offset(2, 0), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
    IconPart(
      'm21 3-9 9-4-4-6 6',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 400)),
        TranslatePart([Offset.zero, Offset(2, 0), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
    IconPart(
      'M21 8V3h-5',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        TranslatePart([Offset.zero, Offset(2, 0), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
  ],
);

/// Truck driving along: body bobs, wheels spin, speed lines streak (loops).
const LucideIconData kTruckIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  repeats: true,
  parts: [
    IconPart(
      'M0 8 5 8',
      CompositePart([
        TranslatePart([Offset.zero, Offset(-4, 0), Offset(-10, 0), Offset(-16, 0)],
            curve: Curves.easeOut),
        OpacityPart([0, 0.7, 0.5, 0], curve: Curves.easeOut),
      ]),
    ),
    IconPart(
      'M-1 11 6 11',
      CompositePart([
        TranslatePart([Offset.zero, Offset(-4, 0), Offset(-10, 0), Offset(-16, 0)],
            delay: Duration(milliseconds: 40), curve: Curves.easeOut),
        OpacityPart([0, 0.7, 0.5, 0],
            delay: Duration(milliseconds: 40), curve: Curves.easeOut),
      ]),
    ),
    IconPart(
      'M0 14 4 14',
      CompositePart([
        TranslatePart([Offset.zero, Offset(-4, 0), Offset(-10, 0), Offset(-16, 0)],
            delay: Duration(milliseconds: 80), curve: Curves.easeOut),
        OpacityPart([0, 0.7, 0.5, 0],
            delay: Duration(milliseconds: 80), curve: Curves.easeOut),
      ]),
    ),
    IconPart.group(
      [
        'M14 18V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v11a1 1 0 0 0 1 1h2',
        'M15 18H9',
        'M19 18h2a1 1 0 0 0 1-1v-3.65a1 1 0 0 0-.22-.624l-3.48-4.35A1 1 0 0 0 17.52 8H14',
      ],
      TranslatePart([
        Offset.zero,
        Offset(0, -1),
        Offset.zero,
        Offset(0, -0.5),
        Offset.zero,
      ]),
    ),
    IconPart.group(
      ['M5 18a2 2 0 1 0 4 0 2 2 0 1 0 -4 0', 'M7 16.5 7 19.5', 'M5.5 18 8.5 18'],
      CompositePart([
        TranslatePart([
          Offset.zero,
          Offset(0, -1),
          Offset.zero,
          Offset(0, -0.5),
          Offset.zero,
        ]),
        RotatePart([0, 360], pivot: Offset(7, 18), curve: Curves.linear),
      ]),
    ),
    IconPart.group(
      ['M15 18a2 2 0 1 0 4 0 2 2 0 1 0 -4 0', 'M17 16.5 17 19.5', 'M15.5 18 18.5 18'],
      CompositePart([
        TranslatePart([
          Offset.zero,
          Offset(0, -1),
          Offset.zero,
          Offset(0, -0.5),
          Offset.zero,
        ]),
        RotatePart([0, 360], pivot: Offset(17, 18), curve: Curves.linear),
      ]),
    ),
  ],
);

/// Turkish lira: the main stroke draws on, then the two bars sweep in.
const LucideIconData kTurkishLiraIcon = LucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M18 12a9 9 0 0 1-9 9V3',
      CompositePart([DrawPart(duration: Duration(milliseconds: 600)), _fadeIn]),
    ),
    IconPart(
      'M15 4 5 9',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 500), duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'm15 8.5-10 5',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 500), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Twitch glyph: the screen outline and the two pixels draw themselves on.
const LucideIconData kTwitchIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M21 2H3v16h5v4l4-4h5l4-4V2z',
      CompositePart([DrawPart(curve: Curves.linear), _fadeIn]),
    ),
    IconPart(
      'M11 11V7',
      CompositePart([DrawPart(curve: Curves.linear), _fadeIn]),
    ),
    IconPart(
      'M16 11V7',
      CompositePart([DrawPart(curve: Curves.linear), _fadeIn]),
    ),
  ],
);

/// Twitter bird that draws itself on in one continuous stroke.
const LucideIconData kTwitterIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M22 4s-.7 2.1-2 3.4c1.6 10-9.4 17.3-18 11.6 2.2.1 4.4-.6 6-2C3 15.5.5 9.6 3 5c2.2 2.6 5.6 4.1 9 4-.9-4.2 4-6.6 7-3.8 1.1 0 3-1.2 3-1.2z',
      CompositePart([DrawPart(curve: Curves.linear), _fadeIn]),
    ),
  ],
);

/// Underline: the U draws on, then the underline sweeps in beneath it.
const LucideIconData kUnderlineIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M6 4v6a6 6 0 0 0 12 0V4',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'M4 20 20 20',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Undo: the arrow head twists back as the arc gives a little tug.
const LucideIconData kUndoIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M21 17a9 9 0 0 0-9-9 9 9 0 0 0-6 2.3L3 13',
      ScalePart([1, 0.9, 1], curve: Cubic(0.25, 0.1, 0.25, 1)),
    ),
    IconPart(
      'M3 7v6h6',
      CompositePart([
        TranslatePart([Offset.zero, Offset(2.1, -1.4), Offset.zero],
            curve: Cubic(0.25, 0.1, 0.25, 1)),
        RotatePart([0, 12, 0], curve: Cubic(0.25, 0.1, 0.25, 1)),
      ]),
    ),
  ],
);

/// Undo-dot: the arrow head twists back, the arc tugs, the dot pulses.
const LucideIconData kUndoDotIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M21 17a9 9 0 0 0-15-6.7L3 13',
      ScalePart([1, 0.9, 1], curve: Cubic(0.25, 0.1, 0.25, 1)),
    ),
    IconPart(
      'M11 17a1 1 0 1 0 2 0 1 1 0 1 0 -2 0',
      ScalePart([1, 1.2, 1], curve: Cubic(0.25, 0.1, 0.25, 1)),
    ),
    IconPart(
      'M3 7v6h6',
      CompositePart([
        TranslatePart([Offset.zero, Offset(2.1, -1.4), Offset.zero],
            curve: Cubic(0.25, 0.1, 0.25, 1)),
        RotatePart([0, 12, 0], curve: Cubic(0.25, 0.1, 0.25, 1)),
      ]),
    ),
  ],
);

/// Upvote arrow that nudges up and to the side with a spring tilt.
const LucideIconData kUpvoteIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart.group(
      [
        'M7 10v12',
        'M15 5.88 14 10h5.83a2 2 0 0 1 1.92 2.56l-2.33 8A2 2 0 0 1 17.5 22H4a2 2 0 0 1-2-2v-8a2 2 0 0 1 2-2h2.76a2 2 0 0 0 1.79-1.11L12 2a3.13 3.13 0 0 1 3 3.88Z',
      ],
      CompositePart([
        TranslatePart([Offset.zero, Offset(-1, -2)],
            curve: SpringCurve(stiffness: 250, damping: 25)),
        RotatePart([0, -12],
            pivot: kViewBoxCenter,
            curve: SpringCurve(stiffness: 250, damping: 25)),
      ]),
    ),
  ],
);

/// User: the head draws on with a pop, then the shoulders sweep in.
const LucideIconData kUserIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M7 8a5 5 0 1 0 10 0 5 5 0 1 0 -10 0',
      CompositePart([DrawPart(), ScalePart([0.5, 1])]),
    ),
    IconPart(
      'M20 21a8 8 0 0 0-16 0',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// User-check: the figure stays put while the check draws itself on.
const LucideIconData kUserCheckIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart('M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2'),
    IconPart('M5 7a4 4 0 1 0 8 0 4 4 0 1 0 -8 0'),
    IconPart(
      'M16 11L18 13L22 9',
      CompositePart([DrawPart(), _fadeIn]),
    ),
  ],
);

/// User-round-check: the figure stays put while the check draws itself on.
const LucideIconData kUserRoundCheckIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart('M2 21a8 8 0 0 1 13.292-6'),
    IconPart('M5 8a5 5 0 1 0 10 0 5 5 0 1 0 -10 0'),
    IconPart(
      'm16 19 2 2 4-4',
      CompositePart([DrawPart(), _fadeIn]),
    ),
  ],
);

/// User-round-cog: the figure stays put while the gear springs a half turn.
const LucideIconData kUserRoundCogIcon = LucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart('M2 21a8 8 0 0 1 10.434-7.62'),
    IconPart('M5 8a5 5 0 1 0 10 0 5 5 0 1 0 -10 0'),
    IconPart.group(
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
      RotatePart([0, 180],
          pivot: Offset(18, 18), curve: SpringCurve(stiffness: 50, damping: 10)),
    ),
  ],
);

const List<LucideIconEntry> gen19Icons = [
  LucideIconEntry('telescope', kTelescopeIcon, ['astronomy', 'space', 'stars', 'observe']),
  LucideIconEntry('terminal', kTerminalIcon, ['console', 'command', 'shell', 'code']),
  LucideIconEntry('thermometer', kThermometerIcon, ['temperature', 'heat', 'weather', 'fever']),
  LucideIconEntry('timer', kTimerIcon, ['stopwatch', 'clock', 'countdown', 'time']),
  LucideIconEntry('tornado', kTornadoIcon, ['storm', 'weather', 'wind', 'twister']),
  LucideIconEntry('train-track', kTrainTrackIcon, ['railway', 'rail', 'transport', 'track']),
  LucideIconEntry('trending-down', kTrendingDownIcon, ['chart', 'decrease', 'analytics', 'down']),
  LucideIconEntry('trending-up-down', kTrendingUpDownIcon, ['chart', 'volatile', 'analytics', 'fluctuate']),
  LucideIconEntry('truck', kTruckIcon, ['delivery', 'shipping', 'transport', 'vehicle']),
  LucideIconEntry('turkish-lira', kTurkishLiraIcon, ['currency', 'money', 'finance', 'try']),
  LucideIconEntry('twitch', kTwitchIcon, ['stream', 'gaming', 'social', 'brand']),
  LucideIconEntry('twitter', kTwitterIcon, ['social', 'bird', 'tweet', 'brand']),
  LucideIconEntry('underline', kUnderlineIcon, ['text', 'format', 'style', 'editor']),
  LucideIconEntry('undo', kUndoIcon, ['back', 'revert', 'history', 'arrow']),
  LucideIconEntry('undo-dot', kUndoDotIcon, ['back', 'revert', 'history', 'arrow']),
  LucideIconEntry('upvote', kUpvoteIcon, ['like', 'thumbs up', 'vote', 'arrow']),
  LucideIconEntry('user', kUserIcon, ['person', 'profile', 'account', 'avatar']),
  LucideIconEntry('user-check', kUserCheckIcon, ['person', 'verified', 'approved', 'account']),
  LucideIconEntry('user-round-check', kUserRoundCheckIcon, ['person', 'verified', 'approved', 'account']),
  LucideIconEntry('user-round-cog', kUserRoundCogIcon, ['person', 'settings', 'account', 'gear']),
];
