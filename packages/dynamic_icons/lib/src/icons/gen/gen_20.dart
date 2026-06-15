import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 20. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See LICENSE.

const _fadeIn = OpacityPart([0, 1], duration: Duration(milliseconds: 100));
const _wifiSpring = SpringCurve(stiffness: 300, damping: 20);

/// User with a plus sign whose bars draw on in sequence.
const DynamicIconData kUserRoundPlusIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart('M2 21a8 8 0 0 1 13.292-6'),
    IconPart('M5 8a5 5 0 1 0 10 0a5 5 0 1 0 -10 0'),
    IconPart(
      'M19 16v6',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 200),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'M22 19h-6',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 600),
          duration: Duration(milliseconds: 200),
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

/// Group of people: the second figure slides in from the left (spring).
const DynamicIconData kUsersIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2'),
    IconPart('M5 7a4 4 0 1 0 8 0a4 4 0 1 0 -8 0'),
    IconPart.group(
      ['M22 21v-2a4 4 0 0 0-3-3.87', 'M16 3.13a4 4 0 0 1 0 7.75'],
      TranslatePart(
        [Offset(-6, 0), Offset.zero],
        delay: Duration(milliseconds: 100),
        curve: SpringCurve(stiffness: 200, damping: 13),
      ),
    ),
  ],
);

/// Rounded group of people: the back figure fades and slides in (spring).
const DynamicIconData kUsersRoundIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('M18 21a8 8 0 0 0-16 0'),
    IconPart('M5 8a5 5 0 1 0 10 0a5 5 0 1 0 -10 0'),
    IconPart(
      'M22 20c0-3.37-2-6.5-4-8a5 5 0 0 0-.45-8.3',
      CompositePart([
        TranslatePart(
          [Offset(-4, 0), Offset.zero],
          delay: Duration(milliseconds: 100),
          curve: SpringCurve(stiffness: 200, damping: 13),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 200),
        ),
      ]),
    ),
  ],
);

/// Phone that buzzes side to side (rotate `[0,-5,5,-5,5,0]°`).
const DynamicIconData kVibrateIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart('m2 8 2 2-2 2 2 2-2 2'),
    IconPart('m22 8-2 2 2 2-2 2 2 2'),
    IconPart(
      'M9 5h6a1 1 0 0 1 1 1v12a1 1 0 0 1 -1 1h-6a1 1 0 0 1 -1 -1v-12a1 1 0 0 1 1 -1z',
      RotatePart([0, -5, 5, -5, 5, 0], pivot: kViewBoxCenter),
    ),
  ],
);

/// Wallet that gives a little bounce and tilt.
const DynamicIconData kWalletIcon = DynamicIconData(
  duration: Duration(milliseconds: 550),
  parts: [
    IconPart.group(
      [
        'M19 7V4a1 1 0 0 0-1-1H5a2 2 0 0 0 0 4h15a1 1 0 0 1 1 1v4h-3a2 2 0 0 0 0 4h3a1 1 0 0 0 1-1v-2a1 1 0 0 0-1-1',
        'M3 5v14a2 2 0 0 0 2 2h15a1 1 0 0 0 1-1v-4',
      ],
      CompositePart([
        TranslatePart([
          Offset.zero,
          Offset(0, -3),
          Offset.zero,
        ], curve: Curves.easeInOut),
        RotatePart([0, -4, 0], pivot: kViewBoxCenter, curve: Curves.easeInOut),
      ]),
    ),
  ],
);

/// Washing machine whose drum spins continuously while the body shimmies.
const DynamicIconData kWashingMachineIcon = DynamicIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    IconPart.group(
      [
        'M3 6h3',
        'M17 6h.01',
        'M5 2h14a2 2 0 0 1 2 2v16a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-16a2 2 0 0 1 2 -2z',
      ],
      TranslatePart([
        Offset.zero,
        Offset(0.5, 0),
        Offset(-0.5, 0),
        Offset(0.3, 0),
        Offset(-0.3, 0),
        Offset.zero,
      ]),
    ),
    IconPart.group([
      'M7 13a5 5 0 1 0 10 0a5 5 0 1 0 -10 0',
      'M12 18a2.5 2.5 0 0 0 0-5 2.5 2.5 0 0 1 0-5',
    ], RotatePart([0, 360], pivot: Offset(12, 13), curve: Curves.linear)),
  ],
);

/// Three water waves that ripple in, drawing left to right.
const DynamicIconData kWavesIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M2 6c.6.5 1.2 1 2.5 1C7 7 7 5 9.5 5c2.6 0 2.4 2 5 2c2.5 0 2.5-2 5-2c1.3 0 1.9.5 2.5 1',
      DrawPart(curve: Curves.linear),
    ),
    IconPart(
      'M2 12c.6.5 1.2 1 2.5 1c2.5 0 2.5-2 5-2c2.6 0 2.4 2 5 2c2.5 0 2.5-2 5-2c1.3 0 1.9.5 2.5 1',
      DrawPart(curve: Curves.linear),
    ),
    IconPart(
      'M2 18c.6.5 1.2 1 2.5 1c2.5 0 2.5-2 5-2c2.6 0 2.4 2 5 2c2.5 0 2.5-2 5-2c1.3 0 1.9.5 2.5 1',
      DrawPart(curve: Curves.linear),
    ),
  ],
);

/// Pool ladder rising out of the water (slides up + fades in).
const DynamicIconData kWavesLadderIcon = DynamicIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart(
      'M2 18c.6.5 1.2 1 2.5 1 2.5 0 2.5-2 5-2 2.6 0 2.4 2 5 2 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1',
    ),
    IconPart.group(
      [
        'M19 5a2 2 0 0 0-2 2v11',
        'M7 13h10',
        'M7 9h10',
        'M9 5a2 2 0 0 0-2 2v11',
      ],
      CompositePart([
        TranslatePart([Offset(0, 13), Offset.zero]),
        OpacityPart([0, 0, 1]),
      ]),
    ),
  ],
);

/// Network waypoints: nodes and links draw on, rippling outward.
const DynamicIconData kWaypointsIcon = DynamicIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart(
      'M9.5 4.5a2.5 2.5 0 1 0 5 0a2.5 2.5 0 1 0 -5 0',
      CompositePart([DrawPart(), _fadeIn]),
    ),
    IconPart(
      'M2 12a2.5 2.5 0 1 0 5 0a2.5 2.5 0 1 0 -5 0',
      CompositePart([DrawPart(), _fadeIn]),
    ),
    IconPart(
      'M17 12a2.5 2.5 0 1 0 5 0a2.5 2.5 0 1 0 -5 0',
      CompositePart([DrawPart(), _fadeIn]),
    ),
    IconPart(
      'M9.5 19.5a2.5 2.5 0 1 0 5 0a2.5 2.5 0 1 0 -5 0',
      CompositePart([DrawPart(), _fadeIn]),
    ),
    IconPart(
      'm10.2 6.3-3.9 3.9',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 150)),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'M7 12h10',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 300)),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'm13.8 17.7 3.9-3.9',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 450)),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
  ],
);

/// Webhook hooks that draw themselves on in sequence.
const DynamicIconData kWebhookIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M18 16.98h-5.99c-1.1 0-1.95.94-2.48 1.9A4 4 0 0 1 2 17c.01-.7.2-1.4.57-2',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 300),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 250),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'm6 17 3.13-5.78c.53-.97.1-2.18-.5-3.1a4 4 0 1 1 6.89-4.06',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 300),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 250),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'm12 6 3.13 5.73C15.66 12.7 16.9 13 18 13a4 4 0 0 1 0 8',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 300),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 250),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
  ],
);

/// Wi-Fi with a gear that springs a half-turn; the arcs stay put.
const DynamicIconData kWifiCogIcon = DynamicIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart('M2 7.82a15 15 0 0 1 20 0'),
    IconPart('M5 11.858a10 10 0 0 1 11.5-1.785'),
    IconPart('M8.5 15.429a5 5 0 0 1 2.413-1.31'),
    IconPart.group(
      [
        'm14.305 19.53.923-.382',
        'm15.228 16.852-.923-.383',
        'm16.852 15.228-.383-.923',
        'm16.852 20.772-.383.924',
        'm19.148 15.228.383-.923',
        'm19.53 21.696-.382-.924',
        'm20.772 16.852.924-.383',
        'm20.772 19.148.924.383',
        'M15 18a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      ],
      RotatePart(
        [0, 180],
        pivot: Offset(18, 18),
        curve: SpringCurve(stiffness: 50, damping: 10),
      ),
    ),
  ],
);

/// Low Wi-Fi: the upper arc flashes off then ripples back in.
const DynamicIconData kWifiLowIcon = DynamicIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart('M12 20h.01'),
    IconPart(
      'M8.5 16.429a5 5 0 0 1 7 0',
      OpacityPart(
        [1, 0, 1],
        delay: Duration(milliseconds: 100),
        curve: _wifiSpring,
      ),
    ),
  ],
);

/// Wi-Fi with a pen that does a tiny scribble wiggle; arcs stay put.
const DynamicIconData kWifiPenIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart('M2 8.82a15 15 0 0 1 20 0'),
    IconPart(
      'M21.378 16.626a1 1 0 0 0-3.004-3.004l-4.01 4.012a2 2 0 0 0-.506.854l-.837 2.87a.5.5 0 0 0 .62.62l2.87-.837a2 2 0 0 0 .854-.506z',
      CompositePart([
        RotatePart([-0.3, 0.2, -0.4]),
        TranslatePart([
          Offset.zero,
          Offset(-0.5, 1),
          Offset(1, -0.5),
          Offset.zero,
        ]),
      ]),
    ),
    IconPart('M5 12.859a10 10 0 0 1 10.5-2.222'),
    IconPart('M8.5 16.429a5 5 0 0 1 3-1.406'),
  ],
);

/// Wi-Fi sync: the refresh arrows spin a full turn; arcs stay put.
const DynamicIconData kWifiSyncIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('M2 8.82a15 15 0 0 1 20 0'),
    IconPart('M5 12.86a10 10 0 0 1 3-2.032'),
    IconPart('M8.5 16.429h.01'),
    IconPart.group([
      'M11.965 10.105v4L13.5 12.5a5 5 0 0 1 8 1.5',
      'M11.965 14.105h4',
      'M17.965 18.105h4L20.43 19.71a5 5 0 0 1-8-1.5',
      'M21.965 22.105v-4',
    ], RotatePart([0, -360])),
  ],
);

/// Wind gusts that draw in from the tail, staggered.
const DynamicIconData kWindIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M12.8 19.6A2 2 0 1 0 14 16H2',
      CompositePart([
        DrawPart(
          fromEnd: true,
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 500),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 150),
        ),
      ]),
    ),
    IconPart(
      'M17.5 8a2.5 2.5 0 1 1 2 4H2',
      CompositePart([
        DrawPart(fromEnd: true, duration: Duration(milliseconds: 500)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 150)),
      ]),
    ),
    IconPart(
      'M9.8 4.4A2 2 0 1 1 11 8H2',
      CompositePart([
        DrawPart(
          fromEnd: true,
          delay: Duration(milliseconds: 400),
          duration: Duration(milliseconds: 500),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 400),
          duration: Duration(milliseconds: 150),
        ),
      ]),
    ),
  ],
);

/// Wind blowing down an arrow: gusts draw in, then the arrow drops in.
const DynamicIconData kWindArrowDownIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M12.8 21.6A2 2 0 1 0 14 18H2',
      CompositePart([
        DrawPart(
          fromEnd: true,
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 500),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 150),
        ),
      ]),
    ),
    IconPart(
      'M17.5 10a2.5 2.5 0 1 1 2 4H2',
      CompositePart([
        DrawPart(
          fromEnd: true,
          delay: Duration(milliseconds: 400),
          duration: Duration(milliseconds: 500),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 400),
          duration: Duration(milliseconds: 150),
        ),
      ]),
    ),
    IconPart.group(
      ['M10 2v8', 'm6 6 4 4 4-4'],
      CompositePart([
        TranslatePart(
          [Offset(0, -10), Offset.zero],
          delay: Duration(milliseconds: 350),
          duration: Duration(milliseconds: 500),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 350),
          duration: Duration(milliseconds: 200),
        ),
      ]),
    ),
  ],
);

/// Workflow nodes and link that draw on in sequence.
const DynamicIconData kWorkflowIcon = DynamicIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart(
      'M5 3h4a2 2 0 0 1 2 2v4a2 2 0 0 1 -2 2h-4a2 2 0 0 1 -2 -2v-4a2 2 0 0 1 2 -2z',
      CompositePart([DrawPart(), _fadeIn]),
    ),
    IconPart(
      'M7 11v4a2 2 0 0 0 2 2h4',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 300)),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'M15 13h4a2 2 0 0 1 2 2v4a2 2 0 0 1 -2 2h-4a2 2 0 0 1 -2 -2v-4a2 2 0 0 1 2 -2z',
      CompositePart([DrawPart(), _fadeIn]),
    ),
  ],
);

/// Wrench that swings as if torquing a bolt (rotate `[0,12,-14,4,0]°`).
const DynamicIconData kWrenchIcon = DynamicIconData(
  duration: Duration(milliseconds: 1050),
  parts: [
    IconPart(
      'M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.106-3.105c.32-.322.863-.22.983.218a6 6 0 0 1-8.259 7.057l-7.91 7.91a1 1 0 0 1-2.999-3l7.91-7.91a6 6 0 0 1 7.057-8.259c.438.12.54.662.219.984z',
      RotatePart([0, 12, -14, 4, 0], pivot: Offset(21, 3)),
    ),
  ],
);

/// YouTube play button: the frame and triangle draw themselves on.
const DynamicIconData kYoutubeIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M2.5 17a24.12 24.12 0 0 1 0-10 2 2 0 0 1 1.4-1.4 49.56 49.56 0 0 1 16.2 0A2 2 0 0 1 21.5 7a24.12 24.12 0 0 1 0 10 2 2 0 0 1-1.4 1.4 49.55 49.55 0 0 1-16.2 0A2 2 0 0 1 2.5 17',
      CompositePart([DrawPart(curve: Curves.linear), _fadeIn]),
    ),
    IconPart(
      'M10 15l5-3-5-3z',
      CompositePart([DrawPart(curve: Curves.linear), _fadeIn]),
    ),
  ],
);

/// Crossed-out lightning bolt that draws itself on, stagger by stroke.
const DynamicIconData kZapOffIcon = DynamicIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart(
      'M10.513 4.856 13.12 2.17a.5.5 0 0 1 .86.46l-1.377 4.317',
      CompositePart([DrawPart(duration: Duration(milliseconds: 600)), _fadeIn]),
    ),
    IconPart(
      'M15.656 10H20a1 1 0 0 1 .78 1.63l-1.72 1.773',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 150),
          duration: Duration(milliseconds: 600),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 150),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'M16.273 16.273 10.88 21.83a.5.5 0 0 1-.86-.46l1.92-6.02A1 1 0 0 0 11 14H4a1 1 0 0 1-.78-1.63l4.507-4.643',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 600),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 300),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
    IconPart(
      'm2 2 20 20',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 600),
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

const List<IconEntry> gen20Icons = [
  IconEntry('user-round-plus', kUserRoundPlusIcon, [
    'user',
    'person',
    'add',
    'plus',
    'invite',
  ]),
  IconEntry('users', kUsersIcon, ['people', 'group', 'team', 'contacts']),
  IconEntry('users-round', kUsersRoundIcon, [
    'people',
    'group',
    'team',
    'round',
  ]),
  IconEntry('vibrate', kVibrateIcon, ['phone', 'buzz', 'haptic', 'silent']),
  IconEntry('wallet', kWalletIcon, ['money', 'payment', 'finance', 'purse']),
  IconEntry('washing-machine', kWashingMachineIcon, [
    'laundry',
    'wash',
    'appliance',
    'clothes',
  ]),
  IconEntry('waves', kWavesIcon, ['water', 'sea', 'ocean', 'ripple']),
  IconEntry('waves-ladder', kWavesLadderIcon, [
    'pool',
    'swim',
    'water',
    'ladder',
  ]),
  IconEntry('waypoints', kWaypointsIcon, [
    'network',
    'nodes',
    'connections',
    'graph',
  ]),
  IconEntry('webhook', kWebhookIcon, ['hook', 'api', 'integration', 'connect']),
  IconEntry('wifi-cog', kWifiCogIcon, ['wifi', 'network', 'settings', 'gear']),
  IconEntry('wifi-low', kWifiLowIcon, ['wifi', 'network', 'signal', 'weak']),
  IconEntry('wifi-pen', kWifiPenIcon, ['wifi', 'network', 'edit', 'pen']),
  IconEntry('wifi-sync', kWifiSyncIcon, ['wifi', 'network', 'sync', 'refresh']),
  IconEntry('wind', kWindIcon, ['weather', 'air', 'breeze', 'gust']),
  IconEntry('wind-arrow-down', kWindArrowDownIcon, [
    'weather',
    'wind',
    'arrow',
    'down',
  ]),
  IconEntry('workflow', kWorkflowIcon, ['flow', 'process', 'diagram', 'nodes']),
  IconEntry('wrench', kWrenchIcon, ['tool', 'fix', 'repair', 'settings']),
  IconEntry('youtube', kYoutubeIcon, ['video', 'play', 'media', 'social']),
  IconEntry('zap-off', kZapOffIcon, ['power', 'lightning', 'off', 'flash']),
];
