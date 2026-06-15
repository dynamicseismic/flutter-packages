import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 08. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _fadeIn = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100));
const _springExpand = DynamicSpringCurve(stiffness: 250, damping: 25);

/// Discord glyph that shimmies side to side (authored in a 44×44 viewBox).
const DynamicLucideIconData kDiscordIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  viewBox: 44,
  parts: [
    DynamicIconPart.group(
      [
        'M17.54,34.22A47.42,47.42,0,0,1,14.68,38C7.3,37.79,4.5,33,4.5,33A44.83,44.83,0,0,1,9.31,13.48,16.47,16.47,0,0,1,18.69,10l1,2.31',
        'M17.85,22.67a3.48,3.48,0,0,0-3.37,3.9,3.38,3.38,0,0,0,3.31,3.22,3.53,3.53,0,0,0,3.43-3.9A3.45,3.45,0,0,0,17.85,22.67Z',
        'M12.2,14.37a28.19,28.19,0,0,1,8.16-2.18A23.26,23.26,0,0,1,24,12a23.26,23.26,0,0,1,3.64.21,28.19,28.19,0,0,1,8.16,2.18m-7.47-2.09l1-2.31a16.47,16.47,0,0,1,9.38,3.51A44.83,44.83,0,0,1,43.5,33S40.7,37.79,33.32,38a47.42,47.42,0,0,1-2.86-3.81',
        'M36.92,31.29a29.63,29.63,0,0,1-8.64,3.49,21.25,21.25,0,0,1-4.28.4h0a21.25,21.25,0,0,1-4.28-.4,29.63,29.63,0,0,1-8.64-3.49',
        'M30.15,22.67a3.48,3.48,0,0,1,3.37,3.9,3.38,3.38,0,0,1-3.31,3.22,3.53,3.53,0,0,1-3.43-3.9A3.45,3.45,0,0,1,30.15,22.67Z',
      ],
      DynamicTranslatePart([
        Offset.zero,
        Offset(-2, 0),
        Offset(2, 0),
        Offset(-2, 0),
        Offset(2, 0),
        Offset.zero,
      ]),
    ),
  ],
);

/// Dollar sign whose S-curve draws on, then the vertical bar draws through it.
const DynamicLucideIconData kDollarSignIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 600)),
        _fadeIn,
      ]),
    ),
    DynamicIconPart(
      'M12 22 L12 2',
      DynamicCompositePart([
        DynamicDrawPart(
            fromEnd: true,
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Downvote arrow that nudges down-left with a little tilt.
const DynamicLucideIconData kDownvoteIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart.group(
      [
        'M17 14V2',
        'M9 18.12 10 14H4.17a2 2 0 0 1-1.92-2.56l2.33-8A2 2 0 0 1 6.5 2H20a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2h-2.76a2 2 0 0 0-1.79 1.11L12 22a3.13 3.13 0 0 1-3-3.88Z',
      ],
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(-1, 2)], curve: _springExpand),
        DynamicRotatePart([0, -12], pivot: kViewBoxCenter, curve: _springExpand),
      ]),
    ),
  ],
);

/// Dribbble — the ball and its three arcs draw themselves on.
const DynamicLucideIconData kDribbbleIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M2 12a10 10 0 1 0 20 0 10 10 0 1 0 -20 0',
      DynamicCompositePart([DynamicDrawPart(curve: Curves.linear), _fadeIn]),
    ),
    DynamicIconPart(
      'M19.13 5.09C15.22 9.14 10 10.44 2.25 10.94',
      DynamicCompositePart([DynamicDrawPart(curve: Curves.linear), _fadeIn]),
    ),
    DynamicIconPart(
      'M21.75 12.84c-6.62-1.41-12.14 1-16.38 6.32',
      DynamicCompositePart([DynamicDrawPart(curve: Curves.linear), _fadeIn]),
    ),
    DynamicIconPart(
      'M8.56 2.75c4.37 6 6 9.42 8 17.72',
      DynamicCompositePart([DynamicDrawPart(curve: Curves.linear), _fadeIn]),
    ),
  ],
);

/// Droplet that draws itself on from the tail down.
const DynamicLucideIconData kDropletIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart(
      'M12 22a7 7 0 0 0 7-7c0-2-1-3.9-3-5.5s-3.5-4-4-6.5c-.5 2.5-2 4.9-4 6.5C6 11.1 5 13 5 15a7 7 0 0 0 7 7z',
      DynamicCompositePart([
        DynamicDrawPart(
            fromEnd: true,
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 600)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 150)),
      ]),
    ),
  ],
);

/// Drum whose two sticks tap, rocking back and forth (loops while active).
const DynamicLucideIconData kDrumIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  repeats: true,
  parts: [
    DynamicIconPart('M2 9a10 5 0 1 0 20 0a10 5 0 1 0 -20 0'),
    DynamicIconPart('M7 13.4v7.9'),
    DynamicIconPart('M12 14v8'),
    DynamicIconPart('M17 13.4v7.9'),
    DynamicIconPart('M2 9v8a10 5 0 0 0 20 0V9'),
    DynamicIconPart(
      'm2 2 8 8',
      DynamicRotatePart([-10, 10, 0], curve: Curves.easeInOut),
    ),
    DynamicIconPart(
      'm22 2-8 8',
      DynamicRotatePart([10, -10, 0],
          delay: Duration(milliseconds: 100), curve: Curves.easeInOut),
    ),
  ],
);

/// Earth — the continents and outline draw themselves on.
const DynamicLucideIconData kEarthIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1200),
  parts: [
    DynamicIconPart(
      'M2 12a10 10 0 1 0 20 0 10 10 0 1 0 -20 0',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 150),
            duration: Duration(milliseconds: 150)),
      ]),
    ),
    DynamicIconPart(
      'M21.54 15H17a2 2 0 0 0-2 2v4.54',
      DynamicCompositePart([
        DynamicDrawPart(
            fromEnd: true,
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 700)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 150)),
      ]),
    ),
    DynamicIconPart(
      'M7 3.34V5a3 3 0 0 0 3 3a2 2 0 0 1 2 2c0 1.1.9 2 2 2a2 2 0 0 0 2-2c0-1.1.9-2 2-2h3.17',
      DynamicCompositePart([
        DynamicDrawPart(
            fromEnd: true,
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 700)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 150)),
      ]),
    ),
    DynamicIconPart(
      'M11 21.95V18a2 2 0 0 0-2-2a2 2 0 0 1-2-2v-1a2 2 0 0 0-2-2H2.05',
      DynamicCompositePart([
        DynamicDrawPart(
            fromEnd: true,
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 700)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 150)),
      ]),
    ),
  ],
);

/// Euro sign whose curve draws on, then the two bars draw through it.
const DynamicLucideIconData kEuroIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M19 6a7.7 7.7 0 0 0-5.2-2A7.9 7.9 0 0 0 6 12c0 4.4 3.5 8 7.8 8 2 0 3.8-.8 5.2-2',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 600)),
        _fadeIn,
      ]),
    ),
    DynamicIconPart(
      'M16 10h-12',
      DynamicCompositePart([
        DynamicDrawPart(
            fromEnd: true,
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M13 14h-9',
      DynamicCompositePart([
        DynamicDrawPart(
            fromEnd: true,
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// EV charger whose lightning bolt pulses (loops while active).
const DynamicLucideIconData kEvChargerIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    DynamicIconPart(
        'M14 13h2a2 2 0 0 1 2 2v2a2 2 0 0 0 4 0v-6.998a2 2 0 0 0-.59-1.42L18 5'),
    DynamicIconPart('M14 21V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v16'),
    DynamicIconPart('M2 21h13'),
    DynamicIconPart('M3 7h11'),
    DynamicIconPart(
      'm9 11-2 3h3l-2 3',
      DynamicOpacityPart([1, 0.4, 1]),
    ),
  ],
);

/// Expand — the four corner arrows spring outward to the corners.
const DynamicLucideIconData kExpandIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'm21 21-6-6m6 6v-4.8m0 4.8h-4.8',
      DynamicTranslatePart([Offset.zero, Offset(2, 2)], curve: _springExpand),
    ),
    DynamicIconPart(
      'M3 16.2V21m0 0h4.8M3 21l6-6',
      DynamicTranslatePart([Offset.zero, Offset(-2, 2)], curve: _springExpand),
    ),
    DynamicIconPart(
      'M21 7.8V3m0 0h-4.8M21 3l-6 6',
      DynamicTranslatePart([Offset.zero, Offset(2, -2)], curve: _springExpand),
    ),
    DynamicIconPart(
      'M3 7.8V3m0 0h4.8M3 3l6 6',
      DynamicTranslatePart([Offset.zero, Offset(-2, -2)], curve: _springExpand),
    ),
  ],
);

/// Eye-off — the eye sits static while the slash sweeps across.
const DynamicLucideIconData kEyeOffIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
        'M10.733 5.076a10.744 10.744 0 0 1 11.205 6.575 1 1 0 0 1 0 .696 10.747 10.747 0 0 1-1.444 2.49'),
    DynamicIconPart('M14.084 14.158a3 3 0 0 1-4.242-4.242'),
    DynamicIconPart(
        'M17.479 17.499a10.75 10.75 0 0 1-15.417-5.151 1 1 0 0 1 0-.696 10.75 10.75 0 0 1 4.446-5.143'),
    DynamicIconPart(
      'm2 2 20 20',
      DynamicCompositePart([
        DynamicDrawPart(),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 150)),
      ]),
    ),
  ],
);

/// Facebook glyph that draws itself on.
const DynamicLucideIconData kFacebookIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z',
      DynamicCompositePart([DynamicDrawPart(curve: Curves.linear), _fadeIn]),
    ),
  ],
);

/// Fan that spins three-quarters of a turn with a spring.
const DynamicLucideIconData kFanIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart.group(
      [
        'M10.827 16.379a6.082 6.082 0 0 1-8.618-7.002l5.412 1.45a6.082 6.082 0 0 1 7.002-8.618l-1.45 5.412a6.082 6.082 0 0 1 8.618 7.002l-5.412-1.45a6.082 6.082 0 0 1-7.002 8.618l1.45-5.412Z',
        'M12 12v.01',
      ],
      DynamicRotatePart([0, 270],
          pivot: kViewBoxCenter,
          curve: DynamicSpringCurve(stiffness: 80, damping: 13)),
    ),
  ],
);

/// Feather that flutters — a gentle rotate-and-drift wobble.
const DynamicLucideIconData kFeatherIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1600),
  parts: [
    DynamicIconPart.group(
      [
        'M12.67 19a2 2 0 0 0 1.416-.588l6.154-6.172a6 6 0 0 0-8.49-8.49L5.586 9.914A2 2 0 0 0 5 11.328V18a1 1 0 0 0 1 1z',
        'M16 8 2 22',
        'M17.5 15H9',
      ],
      DynamicCompositePart([
        DynamicRotatePart([0, -8, 4, -3, 0], pivot: kViewBoxCenter),
        DynamicTranslatePart([
          Offset.zero,
          Offset(2, -4),
          Offset(-2, -2),
          Offset(1, -1),
          Offset.zero,
        ]),
      ]),
    ),
  ],
);

/// Figma — its five panels draw themselves on together.
const DynamicLucideIconData kFigmaIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart.group(
      [
        'M5 5.5A3.5 3.5 0 0 1 8.5 2H12v7H8.5A3.5 3.5 0 0 1 5 5.5z',
        'M12 2h3.5a3.5 3.5 0 1 1 0 7H12V2z',
        'M12 12.5a3.5 3.5 0 1 1 7 0 3.5 3.5 0 1 1-7 0z',
        'M5 19.5A3.5 3.5 0 0 1 8.5 16H12v3.5a3.5 3.5 0 1 1-7 0z',
        'M5 12.5A3.5 3.5 0 0 1 8.5 9H12v7H8.5A3.5 3.5 0 0 1 5 12.5z',
      ],
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 500)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 250),
            duration: Duration(milliseconds: 150)),
      ]),
    ),
  ],
);

/// File with a chart line that draws itself on.
const DynamicLucideIconData kFileChartLineIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart('M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z'),
    DynamicIconPart('M14 2v4a2 2 0 0 0 2 2h4'),
    DynamicIconPart(
      'm8 17 2.5-2.5 2 2L16 13',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 150),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 150)),
      ]),
    ),
  ],
);

/// File with a checkmark that draws itself on.
const DynamicLucideIconData kFileCheckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart('M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z'),
    DynamicIconPart('M14 2v4a2 2 0 0 0 2 2h4'),
    DynamicIconPart(
      'm9 15 2 2 4-4',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
  ],
);

/// File (corner-cut) with a checkmark that draws itself on.
const DynamicLucideIconData kFileCheck2Icon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart('M14 2v4a2 2 0 0 0 2 2h4'),
    DynamicIconPart('M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v4'),
    DynamicIconPart(
      'm3 15 2 2 4-4',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
  ],
);

/// File whose settings gear springs a half-turn.
const DynamicLucideIconData kFileCogIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart('M14 2v4a2 2 0 0 0 2 2h4'),
    DynamicIconPart(
        'M4.677 21.5a2 2 0 0 0 1.313.5H18a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v2.5'),
    DynamicIconPart.group(
      [
        'm3.2 12.9-.9-.4',
        'm3.2 15.1-.9.4',
        'm4.9 11.2-.4-.9',
        'm4.9 16.8-.4.9',
        'm7.5 10.3-.4.9',
        'm7.5 17.7-.4-.9',
        'm9.7 12.5-.9.4',
        'm9.7 15.5-.9-.4',
        'M3 14a3 3 0 1 0 6 0 3 3 0 1 0 -6 0',
      ],
      DynamicRotatePart([0, 180],
          pivot: Offset(6, 14),
          curve: DynamicSpringCurve(stiffness: 50, damping: 10)),
    ),
  ],
);

/// File whose pen does a tiny scribble wiggle as the underline extends.
const DynamicLucideIconData kFilePenLineIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
        'm18 5-2.414-2.414A2 2 0 0 0 14.172 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2'),
    DynamicIconPart(
      'M21.378 12.626a1 1 0 0 0-3.004-3.004l-4.01 4.012a2 2 0 0 0-.506.854l-.837 2.87a.5.5 0 0 0 .62.62l2.87-.837a2 2 0 0 0 .854-.506z',
      DynamicCompositePart([
        DynamicRotatePart([-0.3, 0.2, -0.4, 0]),
        DynamicTranslatePart([
          Offset.zero,
          Offset(-0.5, 1),
          Offset(1, -0.5),
          Offset.zero,
        ]),
      ]),
    ),
    DynamicIconPart(
      'M8 18h1',
      DynamicScalePart([1, 5], axis: DynamicScaleAxis.horizontal, pivot: Offset(8, 18)),
    ),
  ],
);

const List<DynamicLucideIconEntry> gen08Icons = [
  DynamicLucideIconEntry('discord', kDiscordIcon, ['chat', 'gaming', 'social', 'logo']),
  DynamicLucideIconEntry(
      'dollar-sign', kDollarSignIcon, ['money', 'currency', 'usd', 'cash']),
  DynamicLucideIconEntry(
      'downvote', kDownvoteIcon, ['arrow', 'dislike', 'vote', 'down']),
  DynamicLucideIconEntry('dribbble', kDribbbleIcon, ['basketball', 'social', 'design']),
  DynamicLucideIconEntry('droplet', kDropletIcon, ['water', 'drop', 'liquid', 'rain']),
  DynamicLucideIconEntry('drum', kDrumIcon, ['music', 'instrument', 'percussion']),
  DynamicLucideIconEntry('earth', kEarthIcon, ['globe', 'world', 'planet', 'map']),
  DynamicLucideIconEntry('euro', kEuroIcon, ['money', 'currency', 'eur', 'cash']),
  DynamicLucideIconEntry(
      'ev-charger', kEvChargerIcon, ['electric', 'vehicle', 'charge', 'car']),
  DynamicLucideIconEntry('expand', kExpandIcon, ['fullscreen', 'arrows', 'resize']),
  DynamicLucideIconEntry('eye-off', kEyeOffIcon, ['hide', 'visibility', 'private']),
  DynamicLucideIconEntry('facebook', kFacebookIcon, ['social', 'logo', 'meta']),
  DynamicLucideIconEntry('fan', kFanIcon, ['cooling', 'air', 'ventilation', 'spin']),
  DynamicLucideIconEntry('feather', kFeatherIcon, ['light', 'write', 'quill', 'bird']),
  DynamicLucideIconEntry('figma', kFigmaIcon, ['design', 'logo', 'tool']),
  DynamicLucideIconEntry(
      'file-chart-line', kFileChartLineIcon, ['document', 'graph', 'report']),
  DynamicLucideIconEntry(
      'file-check', kFileCheckIcon, ['document', 'done', 'verified']),
  DynamicLucideIconEntry(
      'file-check-2', kFileCheck2Icon, ['document', 'done', 'verified']),
  DynamicLucideIconEntry('file-cog', kFileCogIcon, ['document', 'settings', 'gear']),
  DynamicLucideIconEntry(
      'file-pen-line', kFilePenLineIcon, ['document', 'edit', 'write', 'sign']),
];
