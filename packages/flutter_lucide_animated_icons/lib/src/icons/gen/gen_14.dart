import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 14. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _fadeIn = OpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Map pin (slashed) that hops up; the slash draws itself in.
const LucideIconData kMapPinOffIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart.group(
      [
        'M12.75 7.09a3 3 0 0 1 2.16 2.16',
        'M17.072 17.072c-1.634 2.17-3.527 3.912-4.471 4.727a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 1.432-4.568',
        'M8.475 2.818A8 8 0 0 1 20 10c0 1.183-.31 2.377-.81 3.533',
        'M9.13 9.13a3 3 0 0 0 3.74 3.74',
      ],
      TranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)]),
    ),
    IconPart(
      'm2 2 20 20',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Map pin (plus) that hops up; the plus strokes draw in one after the other.
const LucideIconData kMapPinPlusIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart.group(
      [
        'M19.914 11.105A7.298 7.298 0 0 0 20 10a8 8 0 0 0-16 0c0 4.993 5.539 10.193 7.399 11.799a1 1 0 0 0 1.202 0 32 32 0 0 0 .824-.738',
        'M9 10a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      ],
      TranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)]),
    ),
    IconPart(
      'M19 15v6',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 200)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'M16 18h6',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 600), duration: Duration(milliseconds: 200)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 600), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Map pin with an inside plus that hops up; the plus draws in.
const LucideIconData kMapPinPlusInsideIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart(
      'M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0',
      TranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)]),
    ),
    IconPart(
      'M12 7v6',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 200)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'M9 10h6',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 600), duration: Duration(milliseconds: 200)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 600), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Map pin with an inside X that hops up; the two strokes draw in.
const LucideIconData kMapPinXInsideIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart(
      'M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0',
      TranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)]),
    ),
    IconPart(
      'm14.5 7.5-5 5',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 200)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'm9.5 7.5 5 5',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 600), duration: Duration(milliseconds: 200)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 600), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

const _maximizeSpring = SpringCurve(stiffness: 250, damping: 25);

/// Maximize: four corner brackets spring outward to their diagonals.
const LucideIconData kMaximizeIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M8 3H5a2 2 0 0 0-2 2v3',
      TranslatePart([Offset.zero, Offset(-2, -2)], curve: _maximizeSpring),
    ),
    IconPart(
      'M21 8V5a2 2 0 0 0-2-2h-3',
      TranslatePart([Offset.zero, Offset(2, -2)], curve: _maximizeSpring),
    ),
    IconPart(
      'M3 16v3a2 2 0 0 0 2 2h3',
      TranslatePart([Offset.zero, Offset(-2, 2)], curve: _maximizeSpring),
    ),
    IconPart(
      'M16 21h3a2 2 0 0 0 2-2v-3',
      TranslatePart([Offset.zero, Offset(2, 2)], curve: _maximizeSpring),
    ),
  ],
);

/// Maximize-2: the two arrows spring apart along the diagonal.
const LucideIconData kMaximize2Icon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M3 16.2V21m0 0h4.8M3 21l6-6',
      TranslatePart([Offset.zero, Offset(-2, 2)], curve: _maximizeSpring),
    ),
    IconPart(
      'M21 7.8V3m0 0h-4.8M21 3l-6 6',
      TranslatePart([Offset.zero, Offset(2, -2)], curve: _maximizeSpring),
    ),
  ],
);

/// Meh face that gives a subtle scale-and-tilt wobble.
const LucideIconData kMehIcon = LucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart.group(
      [
        'M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0',
        'M8 15L16 15',
        'M9 9L9.01 9',
        'M15 9L15.01 9',
      ],
      CompositePart([
        ScalePart([1, 1.05, 0.98, 1.02], pivot: kViewBoxCenter),
        RotatePart([0, 1, -1, 0], pivot: kViewBoxCenter),
      ]),
    ),
  ],
);

const _messageWag = SpringCurve(stiffness: 400, damping: 10);

/// Message circle that pops and wags (whole-icon scale + rotate `[0,-7,7,0]°`).
const LucideIconData kMessageCircleIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M7.9 20A9 9 0 1 0 4 16.1L2 22Z',
      CompositePart([
        RotatePart([0, -7, 7, 0], pivot: kViewBoxCenter),
        ScalePart([1, 1.05], pivot: kViewBoxCenter, curve: _messageWag),
      ]),
    ),
  ],
);

/// Message bubble with a check that draws itself in.
const LucideIconData kMessageCircleCheckIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
        'M2.992 16.342a2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 1 0-4.777-4.719'),
    IconPart(
      'm9 12 2 2 4-4',
      CompositePart([DrawPart(), _fadeIn]),
    ),
  ],
);

/// Message bubble drawn from dashes that fade in one by one.
const LucideIconData kMessageCircleDashedIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart('M13.5 3.1c-.5 0-1-.1-1.5-.1s-1 .1-1.5.1',
        OpacityPart([0, 1], delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 300))),
    IconPart('M19.3 6.8a10.45 10.45 0 0 0-2.1-2.1',
        OpacityPart([0, 1], delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 300))),
    IconPart('M20.9 13.5c.1-.5.1-1 .1-1.5s-.1-1-.1-1.5',
        OpacityPart([0, 1], delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 300))),
    IconPart('M17.2 19.3a10.45 10.45 0 0 0 2.1-2.1',
        OpacityPart([0, 1], delay: Duration(milliseconds: 400), duration: Duration(milliseconds: 300))),
    IconPart('M10.5 20.9c.5.1 1 .1 1.5.1s1-.1 1.5-.1',
        OpacityPart([0, 1], delay: Duration(milliseconds: 500), duration: Duration(milliseconds: 300))),
    IconPart('M3.5 17.5 2 22l4.5-1.5',
        OpacityPart([0, 1], delay: Duration(milliseconds: 600), duration: Duration(milliseconds: 300))),
    IconPart('M3.1 10.5c0 .5-.1 1-.1 1.5s.1 1 .1 1.5',
        OpacityPart([0, 1], delay: Duration(milliseconds: 700), duration: Duration(milliseconds: 300))),
    IconPart('M6.8 4.7a10.45 10.45 0 0 0-2.1 2.1',
        OpacityPart([0, 1], delay: Duration(milliseconds: 800), duration: Duration(milliseconds: 300))),
  ],
);

/// Message bubble whose three dots blink in sequence (loops while active).
const LucideIconData kMessageCircleMoreIcon = LucideIconData(
  duration: Duration(milliseconds: 1500),
  repeats: true,
  parts: [
    IconPart('M7.9 20A9 9 0 1 0 4 16.1L2 22Z'),
    IconPart('M8 12h.01', OpacityPart([1, 0, 0, 1, 1, 0, 0, 1])),
    IconPart('M12 12h.01',
        OpacityPart([1, 0, 0, 1, 1, 0, 0, 1], delay: Duration(milliseconds: 100))),
    IconPart('M16 12h.01',
        OpacityPart([1, 0, 0, 1, 1, 0, 0, 1], delay: Duration(milliseconds: 200))),
  ],
);

/// Message bubble with a plus that draws on (vertical, then horizontal).
const LucideIconData kMessageCirclePlusIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
        'M2.992 16.342a2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 1 0-4.777-4.719'),
    IconPart(
      'M12 8v8',
      CompositePart([DrawPart(duration: Duration(milliseconds: 400)), _fadeIn]),
    ),
    IconPart(
      'M8 12h8',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Message bubble with an X that draws on, stroke after stroke.
const LucideIconData kMessageCircleXIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
        'M2.992 16.342a2 2 0 0 1 .094 1.167l-1.065 3.29a1 1 0 0 0 1.236 1.168l3.413-.998a2 2 0 0 1 1.099.092 10 10 0 1 0-4.777-4.719'),
    IconPart(
      'm15 9-6 6',
      CompositePart([DrawPart(duration: Duration(milliseconds: 400)), _fadeIn]),
    ),
    IconPart(
      'm9 9 6 6',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Message square that pops and wags (whole-icon scale + rotate `[0,-7,7,0]°`).
const LucideIconData kMessageSquareIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z',
      CompositePart([
        RotatePart([0, -7, 7, 0], pivot: kViewBoxCenter),
        ScalePart([1, 1.05], pivot: kViewBoxCenter, curve: _messageWag),
      ]),
    ),
  ],
);

/// Square message bubble with a check that draws itself in.
const LucideIconData kMessageSquareCheckIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
        'M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.7.7 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z'),
    IconPart(
      'm9 11 2 2 4-4',
      CompositePart([DrawPart(), _fadeIn]),
    ),
  ],
);

/// Square message bubble drawn from dashes that fade in one by one.
const LucideIconData kMessageSquareDashedIcon = LucideIconData(
  duration: Duration(milliseconds: 1100),
  parts: [
    IconPart('M14 3h1',
        OpacityPart([0, 1], delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 300))),
    IconPart('M14 17h1',
        OpacityPart([0, 1], delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 300))),
    IconPart('M10 17H7l-4 4v-7',
        OpacityPart([0, 1], delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 300))),
    IconPart('M9 3h1',
        OpacityPart([0, 1], delay: Duration(milliseconds: 400), duration: Duration(milliseconds: 300))),
    IconPart('M19 3a2 2 0 0 1 2 2',
        OpacityPart([0, 1], delay: Duration(milliseconds: 500), duration: Duration(milliseconds: 300))),
    IconPart('M3 9v1',
        OpacityPart([0, 1], delay: Duration(milliseconds: 600), duration: Duration(milliseconds: 300))),
    IconPart('M21 9v1',
        OpacityPart([0, 1], delay: Duration(milliseconds: 700), duration: Duration(milliseconds: 300))),
    IconPart('M21 14v1a2 2 0 0 1-2 2',
        OpacityPart([0, 1], delay: Duration(milliseconds: 800), duration: Duration(milliseconds: 300))),
    IconPart('M5 3a2 2 0 0 0-2 2',
        OpacityPart([0, 1], delay: Duration(milliseconds: 900), duration: Duration(milliseconds: 300))),
  ],
);

/// Square message bubble whose three dots blink in sequence (loops).
const LucideIconData kMessageSquareMoreIcon = LucideIconData(
  duration: Duration(milliseconds: 1500),
  repeats: true,
  parts: [
    IconPart('M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z'),
    IconPart('M8 10h.01', OpacityPart([1, 0, 0, 1, 1, 0, 0, 1])),
    IconPart('M12 10h.01',
        OpacityPart([1, 0, 0, 1, 1, 0, 0, 1], delay: Duration(milliseconds: 100))),
    IconPart('M16 10h.01',
        OpacityPart([1, 0, 0, 1, 1, 0, 0, 1], delay: Duration(milliseconds: 200))),
  ],
);

/// Square message bubble with a plus that draws on (vertical, then horizontal).
const LucideIconData kMessageSquarePlusIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
        'M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z'),
    IconPart(
      'M12 8v6',
      CompositePart([DrawPart(duration: Duration(milliseconds: 400)), _fadeIn]),
    ),
    IconPart(
      'M9 11h6',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Square message bubble with an X that draws on, stroke after stroke.
const LucideIconData kMessageSquareXIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
        'M22 17a2 2 0 0 1-2 2H6.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 2 21.286V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2z'),
    IconPart(
      'm14.5 8.5-5 5',
      CompositePart([DrawPart(duration: Duration(milliseconds: 400)), _fadeIn]),
    ),
    IconPart(
      'm9.5 8.5 5 5',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Microphone whose capsule bobs up and down; the stand stays put.
const LucideIconData kMicIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('M12 19v3'),
    IconPart('M19 10v2a7 7 0 0 1-14 0v-2'),
    IconPart(
      'M12 2h0a3 3 0 0 1 3 3v7a3 3 0 0 1 -3 3h-0a3 3 0 0 1 -3 -3v-7a3 3 0 0 1 3 -3z',
      TranslatePart([Offset.zero, Offset(0, -3), Offset.zero, Offset(0, -2), Offset.zero]),
    ),
  ],
);

const List<LucideIconEntry> gen14Icons = [
  LucideIconEntry('map-pin-off', kMapPinOffIcon, ['map', 'pin', 'off', 'location']),
  LucideIconEntry('map-pin-plus', kMapPinPlusIcon, ['map', 'pin', 'plus', 'add', 'location']),
  LucideIconEntry('map-pin-plus-inside', kMapPinPlusInsideIcon, ['map', 'pin', 'plus', 'add', 'inside', 'location']),
  LucideIconEntry('map-pin-x-inside', kMapPinXInsideIcon, ['map', 'pin', 'x', 'remove', 'inside', 'location']),
  LucideIconEntry('maximize', kMaximizeIcon, ['maximize', 'expand', 'fullscreen', 'corners']),
  LucideIconEntry('maximize-2', kMaximize2Icon, ['maximize', 'expand', 'fullscreen', 'arrows']),
  LucideIconEntry('meh', kMehIcon, ['meh', 'face', 'emoji', 'neutral', 'emotion']),
  LucideIconEntry('message-circle', kMessageCircleIcon, ['message', 'chat', 'circle', 'bubble', 'comment']),
  LucideIconEntry('message-circle-check', kMessageCircleCheckIcon, ['message', 'chat', 'check', 'done', 'bubble']),
  LucideIconEntry('message-circle-dashed', kMessageCircleDashedIcon, ['message', 'chat', 'dashed', 'bubble', 'draft']),
  LucideIconEntry('message-circle-more', kMessageCircleMoreIcon, ['message', 'chat', 'more', 'dots', 'typing']),
  LucideIconEntry('message-circle-plus', kMessageCirclePlusIcon, ['message', 'chat', 'plus', 'add', 'new']),
  LucideIconEntry('message-circle-x', kMessageCircleXIcon, ['message', 'chat', 'x', 'close', 'remove']),
  LucideIconEntry('message-square', kMessageSquareIcon, ['message', 'chat', 'square', 'bubble', 'comment']),
  LucideIconEntry('message-square-check', kMessageSquareCheckIcon, ['message', 'chat', 'check', 'done', 'square']),
  LucideIconEntry('message-square-dashed', kMessageSquareDashedIcon, ['message', 'chat', 'dashed', 'square', 'draft']),
  LucideIconEntry('message-square-more', kMessageSquareMoreIcon, ['message', 'chat', 'more', 'dots', 'typing']),
  LucideIconEntry('message-square-plus', kMessageSquarePlusIcon, ['message', 'chat', 'plus', 'add', 'new']),
  LucideIconEntry('message-square-x', kMessageSquareXIcon, ['message', 'chat', 'x', 'close', 'remove']),
  LucideIconEntry('mic', kMicIcon, ['mic', 'microphone', 'audio', 'record', 'voice']),
];
