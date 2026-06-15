import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 03. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See LICENSE.

const _fadeIn = OpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Paperclip-style attach pin that draws itself on.
const DynamicIconData kAttachFileIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M6 7.90909V16C6 19.3137 8.68629 22 12 22V22C15.3137 22 18 19.3137 18 16V6C18 3.79086 16.2091 2 14 2V2C11.7909 2 10 3.79086 10 6V15.1818C10 16.2864 10.8954 17.1818 12 17.1818V17.1818C13.1046 17.1818 14 16.2864 14 15.1818V8',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 400),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
  ],
);

/// Axe that swings: whole-icon rotate through `[0,-20,25,0]°`, pivoting at the
/// handle butt (bottom-left).
const DynamicIconData kAxeIcon = DynamicIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart.group([
      'm14 12-8.381 8.38a1 1 0 0 1-3.001-3L11 9',
      'M15 15.5a.5.5 0 0 0 .5.5A6.5 6.5 0 0 0 22 9.5a.5.5 0 0 0-.5-.5h-1.672a2 2 0 0 1-1.414-.586l-5.062-5.062a1.205 1.205 0 0 0-1.704 0L9.352 5.648a1.205 1.205 0 0 0 0 1.704l5.062 5.062A2 2 0 0 1 15 13.828z',
    ], RotatePart([0, -20, 25, 0], pivot: Offset(0, 24))),
  ],
);

/// Alert badge that scales up and shakes (whole-icon scale + rotate pulse).
const DynamicIconData kBadgeAlertIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart.group(
      [
        'M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z',
        'M12 8 12 12',
        'M12 16 12.01 16',
      ],
      CompositePart([
        ScalePart([1, 1.1, 1.1, 1.1, 1], pivot: kViewBoxCenter),
        RotatePart([0, -3, 3, -2, 2, 0], pivot: kViewBoxCenter),
      ]),
    ),
  ],
);

/// Percent badge whose scalloped outline spins a half-turn with a spring; the
/// percent glyph stays put.
const DynamicIconData kBadgePercentIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z',
      RotatePart(
        [0, 180],
        delay: Duration(milliseconds: 100),
        pivot: kViewBoxCenter,
        curve: SpringCurve(stiffness: 80, damping: 13),
      ),
    ),
    IconPart('m15 9-6 6'),
    IconPart('M9 9h.01'),
    IconPart('M15 15h.01'),
  ],
);

/// Prohibition sign: the ring draws on, then the slash draws across it.
const DynamicIconData kBanIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'm4.9 4.9 14.2 14.2',
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

/// Banana whose two curves draw themselves on, staggered.
const DynamicIconData kBananaIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M5.15 17.89c5.52-1.52 8.65-6.89 7-12C11.55 4 11.5 2 13 2c3.22 0 5 5.5 5 8 0 6.5-4.2 12-10.49 12C5.11 22 2 22 2 20c0-1.5 1.14-1.55 3.15-2.11Z',
      CompositePart([DrawPart(), _fadeIn]),
    ),
    IconPart(
      'M4 13c3.5-2 8-2 10 2a5.5 5.5 0 0 1 8 5',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 200)),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 100),
        ),
      ]),
    ),
  ],
);

/// Battery whose charge bar fills in from the left.
const DynamicIconData kBatteryIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M4 6h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2z',
    ),
    IconPart('M22 14v-4'),
    IconPart(
      'M4 8 16 8 16 16 4 16Z',
      CompositePart([
        ScalePart(
          [0, 1],
          axis: ScaleAxis.horizontal,
          pivot: Offset(4, 12),
          curve: Curves.easeOut,
        ),
        OpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

const _batteryBar = OpacityPart([0, 1], duration: Duration(milliseconds: 600));

/// Full battery whose three charge bars fade out then cascade back in.
const DynamicIconData kBatteryFullIcon = DynamicIconData(
  duration: Duration(milliseconds: 1400),
  parts: [
    IconPart(
      'M2 9h12a2 2 0 0 1 2 2v2a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2a2 2 0 0 1 2-2z',
    ),
    IconPart('M22 11 22 13'),
    IconPart('M6 11 6 13', _batteryBar),
    IconPart(
      'M10 11 10 13',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 400),
        duration: Duration(milliseconds: 600),
      ),
    ),
    IconPart(
      'M14 11 14 13',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 800),
        duration: Duration(milliseconds: 600),
      ),
    ),
  ],
);

/// Low battery whose single charge bar fades out then back in.
const DynamicIconData kBatteryLowIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M2 9h12a2 2 0 0 1 2 2v2a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2a2 2 0 0 1 2-2z',
    ),
    IconPart('M22 11 22 13'),
    IconPart('M6 11 6 13', OpacityPart([0, 1])),
  ],
);

/// Medium battery whose two charge bars fade out then cascade back in.
const DynamicIconData kBatteryMediumIcon = DynamicIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart(
      'M2 9h12a2 2 0 0 1 2 2v2a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2a2 2 0 0 1 2-2z',
    ),
    IconPart('M22 11 22 13'),
    IconPart('M6 11 6 13', _batteryBar),
    IconPart(
      'M10 11 10 13',
      OpacityPart(
        [0, 1],
        delay: Duration(milliseconds: 400),
        duration: Duration(milliseconds: 600),
      ),
    ),
  ],
);

/// Battery-plus whose plus glyph pulses (scale + fade).
const DynamicIconData kBatteryPlusIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart('M12.543 6H16a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2h-3.605'),
    IconPart('M22 14v-4'),
    IconPart('M7.606 18H4a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h3.606'),
    IconPart.group(
      ['M10 9v6', 'M7 12h6'],
      CompositePart([
        ScalePart([1, 0.8, 1.2, 1], pivot: kViewBoxCenter),
        OpacityPart([1, 0.5, 1]),
      ]),
    ),
  ],
);

/// Battery-warning whose exclamation glyph pulses continuously.
const DynamicIconData kBatteryWarningIcon = DynamicIconData(
  duration: Duration(milliseconds: 800),
  repeats: true,
  parts: [
    IconPart('M14 6h2a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2h-2'),
    IconPart('M22 14v-4'),
    IconPart('M6 18H4a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h2'),
    IconPart.group(
      ['M10 17h.01', 'M10 7v6'],
      CompositePart([
        ScalePart([1, 1.1, 1], pivot: kViewBoxCenter),
        OpacityPart([1, 0.4, 1]),
      ]),
    ),
  ],
);

/// Electric bell that rings: the whole glyph shakes (rotate wobble).
const DynamicIconData kBellElectricIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart.group([
      'M18.518 17.347A7 7 0 0 1 14 19',
      'M18.8 4A11 11 0 0 1 20 9',
      'M9 9h.01',
      'M2 9a7 7 0 1 0 14 0a7 7 0 1 0 -14 0',
      'M6 16h6a2 2 0 0 1 2 2v2a2 2 0 0 1 -2 2h-6a2 2 0 0 1 -2 -2v-2a2 2 0 0 1 2 -2z',
      'M18 16a2 2 0 1 0 4 0a2 2 0 1 0 -4 0',
    ], RotatePart([0, -12, 12, -8, 8, 0], pivot: kViewBoxCenter)),
  ],
);

/// Flexed biceps that flexes: whole-icon rotate swing (loops while active).
const DynamicIconData kBicepsFlexedIcon = DynamicIconData(
  duration: Duration(milliseconds: 2000),
  repeats: true,
  parts: [
    IconPart.group([
      'M12.409 13.017A5 5 0 0 1 22 15c0 3.866-4 7-9 7-4.077 0-8.153-.82-10.371-2.462-.426-.316-.631-.832-.62-1.362C2.118 12.723 2.627 2 10 2a3 3 0 0 1 3 3 2 2 0 0 1-2 2c-1.105 0-1.64-.444-2-1',
      'M15 14a5 5 0 0 0-7.584 2',
      'M9.964 6.825C8.019 7.977 9.5 13 8 15',
    ], RotatePart([0, 15, 0], pivot: kViewBoxCenter)),
  ],
);

/// Blocks: the top block slides down-left toward the base.
const DynamicIconData kBlocksIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M10 21V8a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-5a1 1 0 0 0-1-1H3',
    ),
    IconPart(
      'M14 3h7v7h-7z',
      TranslatePart([Offset.zero, Offset(-4, 4)], curve: Curves.easeOut),
    ),
  ],
);

/// Bluetooth glyph whose two strokes draw themselves on.
const DynamicIconData kBluetoothIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'm7 7 10 10-5 5V2l5 5L7 17',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 150)),
      ]),
    ),
    IconPart(
      'M14.5 9.5 17 7l-5-5v4.5',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 150)),
      ]),
    ),
  ],
);

/// Bluetooth-connected: the glyph pulses while the side dashes draw in.
const DynamicIconData kBluetoothConnectedIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'm7 7 10 10-5 5V2l5 5L7 17',
      OpacityPart(
        [1, 0, 1, 0.5, 1],
        delay: Duration(milliseconds: 200),
        duration: Duration(milliseconds: 300),
      ),
    ),
    IconPart(
      'M18 12 21 12',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 150)),
      ]),
    ),
    IconPart(
      'M3 12 6 12',
      CompositePart([
        DrawPart(fromEnd: true, duration: Duration(milliseconds: 200)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 150)),
      ]),
    ),
  ],
);

/// Bluetooth-off: the broken glyph draws on, then the slash draws across.
const DynamicIconData kBluetoothOffIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'm17 17-5 5V12l-5 5',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'M14.5 9.5 17 7l-5-5v4.5',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'm2 2 20 20',
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
  ],
);

/// Bold "B" that gives an emphatic squeeze (stroke-weight swap approximated as
/// a gentle scale pulse).
const DynamicIconData kBoldIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M6 12h9a4 4 0 0 1 0 8H7a1 1 0 0 1-1-1V5a1 1 0 0 1 1-1h7a4 4 0 0 1 0 8',
      ScalePart([1, 1.1, 1], pivot: kViewBoxCenter),
    ),
  ],
);

/// Bone that wiggles (rotate `[0,-8,8,-6,0]°`).
const DynamicIconData kBoneIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M17 10c.7-.7 1.69 0 2.5 0a2.5 2.5 0 1 0 0-5 .5.5 0 0 1-.5-.5 2.5 2.5 0 1 0-5 0c0 .81.7 1.8 0 2.5l-7 7c-.7.7-1.69 0-2.5 0a2.5 2.5 0 0 0 0 5c.28 0 .5.22.5.5a2.5 2.5 0 1 0 5 0c0-.81-.7-1.8 0-2.5Z',
      RotatePart(
        [0, -8, 8, -6, 0],
        pivot: kViewBoxCenter,
        curve: Curves.easeIn,
      ),
    ),
  ],
);

const List<IconEntry> gen03Icons = [
  IconEntry('attach-file', kAttachFileIcon, [
    'attach',
    'file',
    'paperclip',
    'pin',
  ]),
  IconEntry('axe', kAxeIcon, ['axe', 'chop', 'tool', 'weapon']),
  IconEntry('badge-alert', kBadgeAlertIcon, [
    'badge',
    'alert',
    'warning',
    'notification',
  ]),
  IconEntry('badge-percent', kBadgePercentIcon, [
    'badge',
    'percent',
    'discount',
    'sale',
  ]),
  IconEntry('ban', kBanIcon, [
    'ban',
    'block',
    'forbidden',
    'prohibited',
    'cancel',
  ]),
  IconEntry('banana', kBananaIcon, ['banana', 'fruit', 'food']),
  IconEntry('battery', kBatteryIcon, ['battery', 'power', 'charge', 'energy']),
  IconEntry('battery-full', kBatteryFullIcon, [
    'battery',
    'full',
    'power',
    'charge',
  ]),
  IconEntry('battery-low', kBatteryLowIcon, [
    'battery',
    'low',
    'power',
    'charge',
  ]),
  IconEntry('battery-medium', kBatteryMediumIcon, [
    'battery',
    'medium',
    'power',
    'charge',
  ]),
  IconEntry('battery-plus', kBatteryPlusIcon, [
    'battery',
    'plus',
    'add',
    'charge',
  ]),
  IconEntry('battery-warning', kBatteryWarningIcon, [
    'battery',
    'warning',
    'alert',
    'low',
  ]),
  IconEntry('bell-electric', kBellElectricIcon, [
    'bell',
    'electric',
    'alarm',
    'ring',
  ]),
  IconEntry('biceps-flexed', kBicepsFlexedIcon, [
    'biceps',
    'flex',
    'muscle',
    'strong',
    'arm',
  ]),
  IconEntry('blocks', kBlocksIcon, ['blocks', 'build', 'stack', 'integration']),
  IconEntry('bluetooth', kBluetoothIcon, [
    'bluetooth',
    'wireless',
    'connection',
  ]),
  IconEntry('bluetooth-connected', kBluetoothConnectedIcon, [
    'bluetooth',
    'connected',
    'paired',
    'wireless',
  ]),
  IconEntry('bluetooth-off', kBluetoothOffIcon, [
    'bluetooth',
    'off',
    'disabled',
    'disconnected',
  ]),
  IconEntry('bold', kBoldIcon, ['bold', 'text', 'format', 'weight']),
  IconEntry('bone', kBoneIcon, ['bone', 'dog', 'pet', 'skeleton']),
];
