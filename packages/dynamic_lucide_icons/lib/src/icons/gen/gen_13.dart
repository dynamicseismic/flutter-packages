import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 13. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _fadeIn = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Laugh: face gives a little squash-and-stretch bounce while the eyes squint.
const DynamicLucideIconData kLaughIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1200),
  parts: [
    DynamicIconPart.group(
      [
        'M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0',
        'M18 13a6 6 0 0 1-6 5 6 6 0 0 1-6-5h12Z',
      ],
      DynamicScalePart([1, 1.15, 1, 1.1, 1.05], pivot: kViewBoxCenter),
    ),
    DynamicIconPart.group(
      ['M9 9 9.01 9', 'M15 9 15.01 9'],
      DynamicScalePart([1, 1.3, 1, 1.7], curve: Curves.easeInOut),
    ),
  ],
);

/// Layers: the two lower sheets lift up and settle back down.
const DynamicLucideIconData kLayersIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart(
        'm12.83 2.18a2 2 0 0 0-1.66 0L2.6 6.08a1 1 0 0 0 0 1.83l8.58 3.91a2 2 0 0 0 1.66 0l8.58-3.9a1 1 0 0 0 0-1.83Z'),
    DynamicIconPart(
      'm22 17.65-9.17 4.16a2 2 0 0 1-1.66 0L2 17.65',
      DynamicTranslatePart(
        [Offset.zero, Offset(0, -9), Offset.zero],
        curve: DynamicSpringCurve(stiffness: 100, damping: 14),
      ),
    ),
    DynamicIconPart(
      'm22 12.65-9.17 4.16a2 2 0 0 1-1.66 0L2 12.65',
      DynamicTranslatePart(
        [Offset.zero, Offset(0, -5), Offset.zero],
        curve: DynamicSpringCurve(stiffness: 100, damping: 14),
      ),
    ),
  ],
);

/// Layout-grid: the four cells shuffle around the square and return.
const DynamicLucideIconData kLayoutGridIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart(
      'M4 3h5a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-5a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      DynamicTranslatePart([Offset.zero, Offset(11, 0), Offset(11, 0), Offset.zero]),
    ),
    DynamicIconPart(
      'M15 3h5a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-5a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      DynamicTranslatePart([Offset.zero, Offset(0, 11), Offset(0, 11), Offset.zero]),
    ),
    DynamicIconPart(
      'M15 14h5a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-5a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      DynamicTranslatePart([Offset.zero, Offset(-11, 0), Offset(-11, 0), Offset.zero]),
    ),
    DynamicIconPart(
      'M4 14h5a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-5a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      DynamicTranslatePart([Offset.zero, Offset(0, -11), Offset(0, -11), Offset.zero]),
    ),
  ],
);

/// Layout-panel-top: the top bar drops in, then the two bottom cells slide in.
const DynamicLucideIconData kLayoutPanelTopIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart(
      'M4 3h16a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-16a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      DynamicCompositePart([
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 250)),
        DynamicTranslatePart([Offset(0, -5), Offset.zero],
            duration: Duration(milliseconds: 250)),
      ]),
    ),
    DynamicIconPart(
      'M4 14h5a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-5a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      DynamicCompositePart([
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 250)),
        DynamicTranslatePart([Offset(-10, 0), Offset.zero],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 250)),
      ]),
    ),
    DynamicIconPart(
      'M15 14h5a1 1 0 0 1 1 1v5a1 1 0 0 1 -1 1h-5a1 1 0 0 1 -1 -1v-5a1 1 0 0 1 1 -1z',
      DynamicCompositePart([
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 250)),
        DynamicTranslatePart([Offset(10, 0), Offset.zero],
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 250)),
      ]),
    ),
  ],
);

/// Link: the chain tilts and the links tug slightly apart and back.
const DynamicLucideIconData kLinkIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart.group(
      [
        'M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71',
        'M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71',
      ],
      DynamicRotatePart([0, -5, 0], pivot: kViewBoxCenter),
    ),
  ],
);

/// LinkedIn: the body, bar and dot draw themselves in.
const DynamicLucideIconData kLinkedinIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
    DynamicIconPart(
      'M2 9h4v12h-4z',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
    DynamicIconPart(
      'M2 4a2 2 0 1 0 4 0a2 2 0 1 0 -4 0',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
  ],
);

/// Loader: the spokes spin continuously (loops while active).
const DynamicLucideIconData kLoaderIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  repeats: true,
  parts: [
    DynamicIconPart.group(
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
      DynamicRotatePart([0, 360], pivot: kViewBoxCenter, curve: Curves.linear),
    ),
  ],
);

/// Loader-pinwheel: the blades spin while the ring stays put (loops).
const DynamicLucideIconData kLoaderPinwheelIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    DynamicIconPart.group(
      [
        'M22 12a1 1 0 0 1-10 0 1 1 0 0 0-10 0',
        'M7 20.7a1 1 0 1 1 5-8.7 1 1 0 1 0 5-8.6',
        'M7 3.3a1 1 0 1 1 5 8.6 1 1 0 1 0 5 8.6',
      ],
      DynamicRotatePart([0, 360], pivot: kViewBoxCenter, curve: Curves.linear),
    ),
    DynamicIconPart('M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0'),
  ],
);

/// Lock-keyhole: the lock rattles (rotate + scale wobble).
const DynamicLucideIconData kLockKeyholeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart.group(
      [
        'M11 16a1 1 0 1 0 2 0a1 1 0 1 0 -2 0',
        'M5 10h14a2 2 0 0 1 2 2v8a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-8a2 2 0 0 1 2 -2z',
        'M7 10V7a5 5 0 0 1 10 0v3',
      ],
      DynamicCompositePart([
        DynamicRotatePart([-3, 1, -2, 0],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
        DynamicScalePart([0.95, 1.05, 0.98, 1],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
      ]),
    ),
  ],
);

/// Lock-keyhole-open: the open lock rattles (rotate + scale wobble).
const DynamicLucideIconData kLockKeyholeOpenIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart.group(
      [
        'M11 16a1 1 0 1 0 2 0a1 1 0 1 0 -2 0',
        'M5 10h14a2 2 0 0 1 2 2v8a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-8a2 2 0 0 1 2 -2z',
        'M7 10V7a5 5 0 0 1 10 0v3',
      ],
      DynamicCompositePart([
        DynamicRotatePart([2, 4, -2, 0],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
        DynamicScalePart([1.05, 0.95, 1.02, 1],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
      ]),
    ),
  ],
);

/// Lock-open: the open lock rattles (rotate + scale wobble).
const DynamicLucideIconData kLockOpenIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart.group(
      [
        'M5 11h14a2 2 0 0 1 2 2v7a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-7a2 2 0 0 1 2 -2z',
        'M7 11V7a5 5 0 0 1 10 0v4',
      ],
      DynamicCompositePart([
        DynamicRotatePart([2, 4, -2, 0],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
        DynamicScalePart([1.05, 0.95, 1.02, 1],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
      ]),
    ),
  ],
);

/// Login: the arrow and line nudge into the door.
const DynamicLucideIconData kLoginIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart('M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4'),
    DynamicIconPart.group(
      ['M10 17 15 12 10 7', 'M3 12 15 12'],
      DynamicTranslatePart([Offset.zero, Offset(3, 0), Offset.zero]),
    ),
  ],
);

/// Mail-check: the envelope sits while the check draws on.
const DynamicLucideIconData kMailCheckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
        'M22 13V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h8'),
    DynamicIconPart('m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7'),
    DynamicIconPart(
      'm16 19 2 2 4-4',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
  ],
);

/// Mailbox: the flag swings up with a spring.
const DynamicLucideIconData kMailboxIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
        'M22 17a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V9.5C2 7 4 5 6.5 5H18c2.2 0 4 1.8 4 4v8Z'),
    DynamicIconPart(
      'M18 11V9H15',
      DynamicRotatePart([0, -90],
          pivot: Offset(18, 11), curve: DynamicSpringCurve(stiffness: 280, damping: 12)),
    ),
    DynamicIconPart('M6.5 5C9 5 11 7 11 9.5V17a2 2 0 0 1-2 2'),
    DynamicIconPart('M6 10 7 10'),
  ],
);

/// Map-pin: the pin lifts up while the inner circle draws in.
const DynamicLucideIconData kMapPinIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart(
      'M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0',
      DynamicTranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)],
          duration: Duration(milliseconds: 400)),
    ),
    DynamicIconPart(
      'M9 10a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Map-pin-check: the pin lifts while the check draws on.
const DynamicLucideIconData kMapPinCheckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart.group(
      [
        'M19.43 12.935c.357-.967.57-1.955.57-2.935a8 8 0 0 0-16 0c0 4.993 5.539 10.193 7.399 11.799a1 1 0 0 0 1.202 0 32.197 32.197 0 0 0 .813-.728',
        'M9 10a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      ],
      DynamicTranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)],
          duration: Duration(milliseconds: 400)),
    ),
    DynamicIconPart(
      'm16 18 2 2 4-4',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Map-pin-check-inside: the pin lifts while the inner check draws on.
const DynamicLucideIconData kMapPinCheckInsideIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart(
      'M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0',
      DynamicTranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)],
          duration: Duration(milliseconds: 400)),
    ),
    DynamicIconPart(
      'm9 10 2 2 4-4',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Map-pin-house: the pin lifts while the little house draws on.
const DynamicLucideIconData kMapPinHouseIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart.group(
      [
        'M18 10a8 8 0 0 0-16 0c0 4.993 5.539 10.193 7.399 11.799a1 1 0 0 0 .601.2',
        'M7 10a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      ],
      DynamicTranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)],
          duration: Duration(milliseconds: 400)),
    ),
    DynamicIconPart(
      'M15 22a1 1 0 0 1-1-1v-4a1 1 0 0 1 .445-.832l3-2a1 1 0 0 1 1.11 0l3 2A1 1 0 0 1 22 17v4a1 1 0 0 1-1 1z M18 22v-3',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Map-pin-minus: the pin lifts while the minus draws on.
const DynamicLucideIconData kMapPinMinusIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart.group(
      [
        'M18.977 14C19.6 12.701 20 11.343 20 10a8 8 0 0 0-16 0c0 4.993 5.539 10.193 7.399 11.799a1 1 0 0 0 1.202 0 32 32 0 0 0 .824-.738',
        'M9 10a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      ],
      DynamicTranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)],
          duration: Duration(milliseconds: 400)),
    ),
    DynamicIconPart(
      'M16 18h6',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Map-pin-minus-inside: the pin lifts while the inner minus draws on.
const DynamicLucideIconData kMapPinMinusInsideIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart(
      'M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0',
      DynamicTranslatePart([Offset.zero, Offset(0, -5), Offset(0, -3)],
          duration: Duration(milliseconds: 400)),
    ),
    DynamicIconPart(
      'M9 10h6',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

const List<DynamicLucideIconEntry> gen13Icons = [
  DynamicLucideIconEntry('laugh', kLaughIcon, ['emoji', 'happy', 'smile', 'face']),
  DynamicLucideIconEntry('layers', kLayersIcon, ['stack', 'sheets', 'overlay']),
  DynamicLucideIconEntry('layout-grid', kLayoutGridIcon, ['grid', 'cells', 'dashboard']),
  DynamicLucideIconEntry('layout-panel-top', kLayoutPanelTopIcon,
      ['layout', 'panel', 'dashboard']),
  DynamicLucideIconEntry('link', kLinkIcon, ['chain', 'url', 'hyperlink']),
  DynamicLucideIconEntry('linkedin', kLinkedinIcon, ['social', 'brand', 'network']),
  DynamicLucideIconEntry('loader', kLoaderIcon, ['spinner', 'loading', 'wait']),
  DynamicLucideIconEntry('loader-pinwheel', kLoaderPinwheelIcon,
      ['spinner', 'loading', 'pinwheel']),
  DynamicLucideIconEntry('lock-keyhole', kLockKeyholeIcon,
      ['secure', 'private', 'password']),
  DynamicLucideIconEntry('lock-keyhole-open', kLockKeyholeOpenIcon,
      ['unlock', 'unsecure', 'open']),
  DynamicLucideIconEntry('lock-open', kLockOpenIcon, ['unlock', 'unsecure', 'open']),
  DynamicLucideIconEntry('login', kLoginIcon, ['sign in', 'enter', 'arrow']),
  DynamicLucideIconEntry('mail-check', kMailCheckIcon,
      ['email', 'envelope', 'verified']),
  DynamicLucideIconEntry('mailbox', kMailboxIcon, ['post', 'letter', 'flag']),
  DynamicLucideIconEntry('map-pin', kMapPinIcon, ['location', 'marker', 'place']),
  DynamicLucideIconEntry('map-pin-check', kMapPinCheckIcon,
      ['location', 'verified', 'place']),
  DynamicLucideIconEntry('map-pin-check-inside', kMapPinCheckInsideIcon,
      ['location', 'verified', 'place']),
  DynamicLucideIconEntry('map-pin-house', kMapPinHouseIcon,
      ['location', 'home', 'address']),
  DynamicLucideIconEntry('map-pin-minus', kMapPinMinusIcon,
      ['location', 'remove', 'place']),
  DynamicLucideIconEntry('map-pin-minus-inside', kMapPinMinusInsideIcon,
      ['location', 'remove', 'place']),
];
