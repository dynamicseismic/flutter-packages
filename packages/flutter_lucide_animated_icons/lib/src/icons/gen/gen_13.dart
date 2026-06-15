import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 13. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _fadeIn = OpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Laugh: face gives a little squash-and-stretch bounce while the eyes squint.
const LucideIconData kLaughIcon = LucideIconData(
  duration: Duration(milliseconds: 1200),
  parts: [
    IconPart.group(
      [
        'M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0',
        'M18 13a6 6 0 0 1-6 5 6 6 0 0 1-6-5h12Z',
      ],
      ScalePart([1, 1.15, 1, 1.1, 1.05], pivot: kViewBoxCenter),
    ),
    IconPart.group(
      ['M9 9 9.01 9', 'M15 9 15.01 9'],
      ScalePart([1, 1.3, 1, 1.7], curve: Curves.easeInOut),
    ),
  ],
);

/// Layers: the two lower sheets lift up and settle back down.
const LucideIconData kLayersIcon = LucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart(
        'm12.83 2.18a2 2 0 0 0-1.66 0L2.6 6.08a1 1 0 0 0 0 1.83l8.58 3.91a2 2 0 0 0 1.66 0l8.58-3.9a1 1 0 0 0 0-1.83Z'),
    IconPart(
      'm22 17.65-9.17 4.16a2 2 0 0 1-1.66 0L2 17.65',
      TranslatePart(
        [Offset.zero, Offset(0, -9), Offset.zero],
        curve: SpringCurve(stiffness: 100, damping: 14),
      ),
    ),
    IconPart(
      'm22 12.65-9.17 4.16a2 2 0 0 1-1.66 0L2 12.65',
      TranslatePart(
        [Offset.zero, Offset(0, -5), Offset.zero],
        curve: SpringCurve(stiffness: 100, damping: 14),
      ),
    ),
  ],
);

/// Layout-grid: the four cells shuffle around the square and return.
const LucideIconData kLayoutGridIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart(
      'M4 3h5a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-5a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      TranslatePart([Offset.zero, Offset(11, 0), Offset(11, 0), Offset.zero]),
    ),
    IconPart(
      'M15 3h5a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-5a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      TranslatePart([Offset.zero, Offset(0, 11), Offset(0, 11), Offset.zero]),
    ),
    IconPart(
      'M15 14h5a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-5a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      TranslatePart([Offset.zero, Offset(-11, 0), Offset(-11, 0), Offset.zero]),
    ),
    IconPart(
      'M4 14h5a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-5a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      TranslatePart([Offset.zero, Offset(0, -11), Offset(0, -11), Offset.zero]),
    ),
  ],
);

/// Layout-panel-top: the top bar drops in, then the two bottom cells slide in.
const LucideIconData kLayoutPanelTopIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart(
      'M4 3h16a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-16a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      CompositePart([
        OpacityPart([0, 1], duration: Duration(milliseconds: 250)),
        TranslatePart([Offset(0, -5), Offset.zero],
            duration: Duration(milliseconds: 250)),
      ]),
    ),
    IconPart(
      'M4 14h5a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-5a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      CompositePart([
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 250)),
        TranslatePart([Offset(-10, 0), Offset.zero],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 250)),
      ]),
    ),
    IconPart(
      'M15 14h5a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-5a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      CompositePart([
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 250)),
        TranslatePart([Offset(10, 0), Offset.zero],
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 250)),
      ]),
    ),
  ],
);

/// Link: the chain tilts and the links tug slightly apart and back.
const LucideIconData kLinkIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart.group(
      [
        'M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71',
        'M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71',
      ],
      RotatePart([0, -5, 0], pivot: kViewBoxCenter),
    ),
  ],
);

/// LinkedIn: the body, bar and dot draw themselves in.
const LucideIconData kLinkedinIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z',
      CompositePart([DrawPart(), _fadeIn]),
    ),
    IconPart(
      'M2 9h4v12h-4z',
      CompositePart([DrawPart(), _fadeIn]),
    ),
    IconPart(
      'M2 4a2 2 0 1 0 4 0a2 2 0 1 0 -4 0',
      CompositePart([DrawPart(), _fadeIn]),
    ),
  ],
);

/// Loader: the spokes spin continuously (loops while active).
const LucideIconData kLoaderIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  repeats: true,
  parts: [
    IconPart.group(
      [
        'M12 2v4',
        'm16.2 7.8 2.9-2.9',
        'M18 12h4',
        'm16.2 16.2 2.9 2.9',
        'M12 18v4',
        'm4.9 19.1 2.9-2.9',
        'M2 12h4',
        'm4.9 4.9 2.9 2.9',
      ],
      RotatePart([0, 360], pivot: kViewBoxCenter, curve: Curves.linear),
    ),
  ],
);

/// Loader-pinwheel: the blades spin while the ring stays put (loops).
const LucideIconData kLoaderPinwheelIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    IconPart.group(
      [
        'M22 12a1 1 0 0 1-10 0 1 1 0 0 0-10 0',
        'M7 20.7a1 1 0 1 1 5-8.7 1 1 0 1 0 5-8.6',
        'M7 3.3a1 1 0 1 1 5 8.6 1 1 0 1 0 5 8.6',
      ],
      RotatePart([0, 360], pivot: kViewBoxCenter, curve: Curves.linear),
    ),
    IconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
  ],
);

/// Lock-keyhole: the lock rattles (rotate + scale wobble).
const LucideIconData kLockKeyholeIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart.group(
      [
        'M11 16a1 1 0 1 0 2 0a1 1 0 1 0 -2 0',
        'M5 10h14a2 2 0 0 1 2 2v8a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-8a2 2 0 0 1 2 -2z',
        'M7 10V7a5 5 0 0 1 10 0v3',
      ],
      CompositePart([
        RotatePart([-3, 1, -2, 0],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
        ScalePart([0.95, 1.05, 0.98, 1],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
      ]),
    ),
  ],
);

/// Lock-keyhole-open: the open lock rattles (rotate + scale wobble).
const LucideIconData kLockKeyholeOpenIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart.group(
      [
        'M11 16a1 1 0 1 0 2 0a1 1 0 1 0 -2 0',
        'M5 10h14a2 2 0 0 1 2 2v8a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-8a2 2 0 0 1 2 -2z',
        'M7 10V7a5 5 0 0 1 10 0v3',
      ],
      CompositePart([
        RotatePart([2, 4, -2, 0],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
        ScalePart([1.05, 0.95, 1.02, 1],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
      ]),
    ),
  ],
);

/// Lock-open: the open lock rattles (rotate + scale wobble).
const LucideIconData kLockOpenIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart.group(
      [
        'M5 11h14a2 2 0 0 1 2 2v7a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-7a2 2 0 0 1 2 -2z',
        'M7 11V7a5 5 0 0 1 10 0v4',
      ],
      CompositePart([
        RotatePart([2, 4, -2, 0],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
        ScalePart([1.05, 0.95, 1.02, 1],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
      ]),
    ),
  ],
);

/// Login: the arrow and line nudge into the door.
const LucideIconData kLoginIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart('M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4'),
    IconPart.group(
      ['M10 17 15 12 10 7', 'M3 12 15 12'],
      TranslatePart([Offset.zero, Offset(3, 0), Offset.zero]),
    ),
  ],
);

/// Mail-check: the envelope sits while the check draws on.
const LucideIconData kMailCheckIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
        'M22 13V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h8'),
    IconPart('m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7'),
    IconPart(
      'm16 19 2 2 4-4',
      CompositePart([DrawPart(), _fadeIn]),
    ),
  ],
);

/// Mailbox: the flag swings up with a spring.
const LucideIconData kMailboxIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
        'M22 17a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V9.5C2 7 4 5 6.5 5H18c2.2 0 4 1.8 4 4v8Z'),
    IconPart(
      'M18 11V9H15',
      RotatePart([0, -90],
          pivot: Offset(18, 11), curve: SpringCurve(stiffness: 280, damping: 12)),
    ),
    IconPart('M6.5 5C9 5 11 7 11 9.5V17a2 2 0 0 1-2 2'),
    IconPart('M6 10 7 10'),
  ],
);

/// Map-pin: the pin lifts up while the inner circle draws in.
const LucideIconData kMapPinIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart(
      'M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0',
      TranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)],
          duration: Duration(milliseconds: 400)),
    ),
    IconPart(
      'M9 10a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Map-pin-check: the pin lifts while the check draws on.
const LucideIconData kMapPinCheckIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart.group(
      [
        'M19.43 12.935c.357-.967.57-1.955.57-2.935a8 8 0 0 0-16 0c0 4.993 5.539 10.193 7.399 11.799a1 1 0 0 0 1.202 0 32.197 32.197 0 0 0 .813-.728',
        'M9 10a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      ],
      TranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)],
          duration: Duration(milliseconds: 400)),
    ),
    IconPart(
      'm16 18 2 2 4-4',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Map-pin-check-inside: the pin lifts while the inner check draws on.
const LucideIconData kMapPinCheckInsideIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart(
      'M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0',
      TranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)],
          duration: Duration(milliseconds: 400)),
    ),
    IconPart(
      'm9 10 2 2 4-4',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Map-pin-house: the pin lifts while the little house draws on.
const LucideIconData kMapPinHouseIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart.group(
      [
        'M18 10a8 8 0 0 0-16 0c0 4.993 5.539 10.193 7.399 11.799a1 1 0 0 0 .601.2',
        'M7 10a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      ],
      TranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)],
          duration: Duration(milliseconds: 400)),
    ),
    IconPart(
      'M15 22a1 1 0 0 1-1-1v-4a1 1 0 0 1 .445-.832l3-2a1 1 0 0 1 1.11 0l3 2A1 1 0 0 1 22 17v4a1 1 0 0 1-1 1z M18 22v-3',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Map-pin-minus: the pin lifts while the minus draws on.
const LucideIconData kMapPinMinusIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart.group(
      [
        'M18.977 14C19.6 12.701 20 11.343 20 10a8 8 0 0 0-16 0c0 4.993 5.539 10.193 7.399 11.799a1 1 0 0 0 1.202 0 32 32 0 0 0 .824-.738',
        'M9 10a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      ],
      TranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)],
          duration: Duration(milliseconds: 400)),
    ),
    IconPart(
      'M16 18h6',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Map-pin-minus-inside: the pin lifts while the inner minus draws on.
const LucideIconData kMapPinMinusInsideIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart(
      'M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0',
      TranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)],
          duration: Duration(milliseconds: 400)),
    ),
    IconPart(
      'M9 10h6',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

const List<LucideIconEntry> gen13Icons = [
  LucideIconEntry('laugh', kLaughIcon, ['emoji', 'happy', 'smile', 'face']),
  LucideIconEntry('layers', kLayersIcon, ['stack', 'sheets', 'overlay']),
  LucideIconEntry('layout-grid', kLayoutGridIcon, ['grid', 'cells', 'dashboard']),
  LucideIconEntry('layout-panel-top', kLayoutPanelTopIcon,
      ['layout', 'panel', 'dashboard']),
  LucideIconEntry('link', kLinkIcon, ['chain', 'url', 'hyperlink']),
  LucideIconEntry('linkedin', kLinkedinIcon, ['social', 'brand', 'network']),
  LucideIconEntry('loader', kLoaderIcon, ['spinner', 'loading', 'wait']),
  LucideIconEntry('loader-pinwheel', kLoaderPinwheelIcon,
      ['spinner', 'loading', 'pinwheel']),
  LucideIconEntry('lock-keyhole', kLockKeyholeIcon,
      ['secure', 'private', 'password']),
  LucideIconEntry('lock-keyhole-open', kLockKeyholeOpenIcon,
      ['unlock', 'unsecure', 'open']),
  LucideIconEntry('lock-open', kLockOpenIcon, ['unlock', 'unsecure', 'open']),
  LucideIconEntry('login', kLoginIcon, ['sign in', 'enter', 'arrow']),
  LucideIconEntry('mail-check', kMailCheckIcon,
      ['email', 'envelope', 'verified']),
  LucideIconEntry('mailbox', kMailboxIcon, ['post', 'letter', 'flag']),
  LucideIconEntry('map-pin', kMapPinIcon, ['location', 'marker', 'place']),
  LucideIconEntry('map-pin-check', kMapPinCheckIcon,
      ['location', 'verified', 'place']),
  LucideIconEntry('map-pin-check-inside', kMapPinCheckInsideIcon,
      ['location', 'verified', 'place']),
  LucideIconEntry('map-pin-house', kMapPinHouseIcon,
      ['location', 'home', 'address']),
  LucideIconEntry('map-pin-minus', kMapPinMinusIcon,
      ['location', 'remove', 'place']),
  LucideIconEntry('map-pin-minus-inside', kMapPinMinusInsideIcon,
      ['location', 'remove', 'place']),
];
