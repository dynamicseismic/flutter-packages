import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 03. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _fadeIn = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Paperclip-style attach pin that draws itself on.
const DynamicLucideIconData kAttachFileIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M6 7.90909V16C6 19.3137 8.68629 22 12 22V22C15.3137 22 18 19.3137 18 16V6C18 3.79086 16.2091 2 14 2V2C11.7909 2 10 3.79086 10 6V15.1818C10 16.2864 10.8954 17.1818 12 17.1818V17.1818C13.1046 17.1818 14 16.2864 14 15.1818V8',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Axe that swings: whole-icon rotate through `[0,-20,25,0]°`, pivoting at the
/// handle butt (bottom-left).
const DynamicLucideIconData kAxeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart.group(
      [
        'm14 12-8.381 8.38a1 1 0 0 1-3.001-3L11 9',
        'M15 15.5a.5.5 0 0 0 .5.5A6.5 6.5 0 0 0 22 9.5a.5.5 0 0 0-.5-.5h-1.672a2 2 0 0 1-1.414-.586l-5.062-5.062a1.205 1.205 0 0 0-1.704 0L9.352 5.648a1.205 1.205 0 0 0 0 1.704l5.062 5.062A2 2 0 0 1 15 13.828z',
      ],
      DynamicRotatePart([0, -20, 25, 0], pivot: Offset(0, 24)),
    ),
  ],
);

/// Alert badge that scales up and shakes (whole-icon scale + rotate pulse).
const DynamicLucideIconData kBadgeAlertIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart.group(
      [
        'M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z',
        'M12 8 12 12',
        'M12 16 12.01 16',
      ],
      DynamicCompositePart([
        DynamicScalePart([1, 1.1, 1.1, 1.1, 1], pivot: kViewBoxCenter),
        DynamicRotatePart([0, -3, 3, -2, 2, 0], pivot: kViewBoxCenter),
      ]),
    ),
  ],
);

/// Percent badge whose scalloped outline spins a half-turn with a spring; the
/// percent glyph stays put.
const DynamicLucideIconData kBadgePercentIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z',
      DynamicRotatePart([0, 180],
          delay: Duration(milliseconds: 100),
          pivot: kViewBoxCenter,
          curve: DynamicSpringCurve(stiffness: 80, damping: 13)),
    ),
    DynamicIconPart('m15 9-6 6'),
    DynamicIconPart('M9 9h.01'),
    DynamicIconPart('M15 15h.01'),
  ],
);

/// Prohibition sign: the ring draws on, then the slash draws across it.
const DynamicLucideIconData kBanIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'm4.9 4.9 14.2 14.2',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 500), duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Banana whose two curves draw themselves on, staggered.
const DynamicLucideIconData kBananaIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M5.15 17.89c5.52-1.52 8.65-6.89 7-12C11.55 4 11.5 2 13 2c3.22 0 5 5.5 5 8 0 6.5-4.2 12-10.49 12C5.11 22 2 22 2 20c0-1.5 1.14-1.55 3.15-2.11Z',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
    DynamicIconPart(
      'M4 13c3.5-2 8-2 10 2a5.5 5.5 0 0 1 8 5',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 200)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Battery whose charge bar fills in from the left.
const DynamicLucideIconData kBatteryIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart('M4 6h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2z'),
    DynamicIconPart('M22 14v-4'),
    DynamicIconPart(
      'M4 8 16 8 16 16 4 16Z',
      DynamicCompositePart([
        DynamicScalePart([0, 1],
            axis: DynamicScaleAxis.horizontal, pivot: Offset(4, 12), curve: Curves.easeOut),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

const _batteryBar = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 600));

/// Full battery whose three charge bars fade out then cascade back in.
const DynamicLucideIconData kBatteryFullIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1400),
  parts: [
    DynamicIconPart('M2 9h12a2 2 0 0 1 2 2v2a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2a2 2 0 0 1 2-2z'),
    DynamicIconPart('M22 11 22 13'),
    DynamicIconPart('M6 11 6 13', _batteryBar),
    DynamicIconPart('M10 11 10 13',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 400), duration: Duration(milliseconds: 600))),
    DynamicIconPart('M14 11 14 13',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 800), duration: Duration(milliseconds: 600))),
  ],
);

/// Low battery whose single charge bar fades out then back in.
const DynamicLucideIconData kBatteryLowIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M2 9h12a2 2 0 0 1 2 2v2a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2a2 2 0 0 1 2-2z'),
    DynamicIconPart('M22 11 22 13'),
    DynamicIconPart('M6 11 6 13', DynamicOpacityPart([0, 1])),
  ],
);

/// Medium battery whose two charge bars fade out then cascade back in.
const DynamicLucideIconData kBatteryMediumIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart('M2 9h12a2 2 0 0 1 2 2v2a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2a2 2 0 0 1 2-2z'),
    DynamicIconPart('M22 11 22 13'),
    DynamicIconPart('M6 11 6 13', _batteryBar),
    DynamicIconPart('M10 11 10 13',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 400), duration: Duration(milliseconds: 600))),
  ],
);

/// Battery-plus whose plus glyph pulses (scale + fade).
const DynamicLucideIconData kBatteryPlusIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart('M12.543 6H16a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2h-3.605'),
    DynamicIconPart('M22 14v-4'),
    DynamicIconPart('M7.606 18H4a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h3.606'),
    DynamicIconPart.group(
      ['M10 9v6', 'M7 12h6'],
      DynamicCompositePart([
        DynamicScalePart([1, 0.8, 1.2, 1], pivot: kViewBoxCenter),
        DynamicOpacityPart([1, 0.5, 1]),
      ]),
    ),
  ],
);

/// Battery-warning whose exclamation glyph pulses continuously.
const DynamicLucideIconData kBatteryWarningIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  repeats: true,
  parts: [
    DynamicIconPart('M14 6h2a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2h-2'),
    DynamicIconPart('M22 14v-4'),
    DynamicIconPart('M6 18H4a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h2'),
    DynamicIconPart.group(
      ['M10 17h.01', 'M10 7v6'],
      DynamicCompositePart([
        DynamicScalePart([1, 1.1, 1], pivot: kViewBoxCenter),
        DynamicOpacityPart([1, 0.4, 1]),
      ]),
    ),
  ],
);

/// Electric bell that rings: the whole glyph shakes (rotate wobble).
const DynamicLucideIconData kBellElectricIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart.group(
      [
        'M18.518 17.347A7 7 0 0 1 14 19',
        'M18.8 4A11 11 0 0 1 20 9',
        'M9 9h.01',
        'M2 9a7 7 0 1 0 14 0a7 7 0 1 0 -14 0',
        'M6 16h6a2 2 0 0 1 2 2v2a2 2 0 0 1 -2 2h-6a2 2 0 0 1 -2 -2v-2a2 2 0 0 1 2 -2z',
        'M18 16a2 2 0 1 0 4 0a2 2 0 1 0 -4 0',
      ],
      DynamicRotatePart([0, -12, 12, -8, 8, 0], pivot: kViewBoxCenter),
    ),
  ],
);

/// Flexed biceps that flexes: whole-icon rotate swing (loops while active).
const DynamicLucideIconData kBicepsFlexedIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 2000),
  repeats: true,
  parts: [
    DynamicIconPart.group(
      [
        'M12.409 13.017A5 5 0 0 1 22 15c0 3.866-4 7-9 7-4.077 0-8.153-.82-10.371-2.462-.426-.316-.631-.832-.62-1.362C2.118 12.723 2.627 2 10 2a3 3 0 0 1 3 3 2 2 0 0 1-2 2c-1.105 0-1.64-.444-2-1',
        'M15 14a5 5 0 0 0-7.584 2',
        'M9.964 6.825C8.019 7.977 9.5 13 8 15',
      ],
      DynamicRotatePart([0, 15, 0], pivot: kViewBoxCenter),
    ),
  ],
);

/// Blocks: the top block slides down-left toward the base.
const DynamicLucideIconData kBlocksIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart('M10 21V8a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-5a1 1 0 0 0-1-1H3'),
    DynamicIconPart(
      'M14 3h7v7h-7z',
      DynamicTranslatePart([Offset.zero, Offset(-4, 4)], curve: Curves.easeOut),
    ),
  ],
);

/// Bluetooth glyph whose two strokes draw themselves on.
const DynamicLucideIconData kBluetoothIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'm7 7 10 10-5 5V2l5 5L7 17',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 150)),
      ]),
    ),
    DynamicIconPart(
      'M14.5 9.5 17 7l-5-5v4.5',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 150)),
      ]),
    ),
  ],
);

/// Bluetooth-connected: the glyph pulses while the side dashes draw in.
const DynamicLucideIconData kBluetoothConnectedIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'm7 7 10 10-5 5V2l5 5L7 17',
      DynamicOpacityPart([1, 0, 1, 0.5, 1],
          delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 300)),
    ),
    DynamicIconPart(
      'M18 12 21 12',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 150)),
      ]),
    ),
    DynamicIconPart(
      'M3 12 6 12',
      DynamicCompositePart([
        DynamicDrawPart(fromEnd: true, duration: Duration(milliseconds: 200)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 150)),
      ]),
    ),
  ],
);

/// Bluetooth-off: the broken glyph draws on, then the slash draws across.
const DynamicLucideIconData kBluetoothOffIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'm17 17-5 5V12l-5 5',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M14.5 9.5 17 7l-5-5v4.5',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'm2 2 20 20',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 200)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Bold "B" that gives an emphatic squeeze (stroke-weight swap approximated as
/// a gentle scale pulse).
const DynamicLucideIconData kBoldIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M6 12h9a4 4 0 0 1 0 8H7a1 1 0 0 1-1-1V5a1 1 0 0 1 1-1h7a4 4 0 0 1 0 8',
      DynamicScalePart([1, 1.1, 1], pivot: kViewBoxCenter),
    ),
  ],
);

/// Bone that wiggles (rotate `[0,-8,8,-6,0]°`).
const DynamicLucideIconData kBoneIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M17 10c.7-.7 1.69 0 2.5 0a2.5 2.5 0 1 0 0-5 .5.5 0 0 1-.5-.5 2.5 2.5 0 1 0-5 0c0 .81.7 1.8 0 2.5l-7 7c-.7.7-1.69 0-2.5 0a2.5 2.5 0 0 0 0 5c.28 0 .5.22.5.5a2.5 2.5 0 1 0 5 0c0-.81-.7-1.8 0-2.5Z',
      DynamicRotatePart([0, -8, 8, -6, 0], pivot: kViewBoxCenter, curve: Curves.easeIn),
    ),
  ],
);

const List<DynamicLucideIconEntry> gen03Icons = [
  DynamicLucideIconEntry('attach-file', kAttachFileIcon, ['attach', 'file', 'paperclip', 'pin']),
  DynamicLucideIconEntry('axe', kAxeIcon, ['axe', 'chop', 'tool', 'weapon']),
  DynamicLucideIconEntry('badge-alert', kBadgeAlertIcon, ['badge', 'alert', 'warning', 'notification']),
  DynamicLucideIconEntry('badge-percent', kBadgePercentIcon, ['badge', 'percent', 'discount', 'sale']),
  DynamicLucideIconEntry('ban', kBanIcon, ['ban', 'block', 'forbidden', 'prohibited', 'cancel']),
  DynamicLucideIconEntry('banana', kBananaIcon, ['banana', 'fruit', 'food']),
  DynamicLucideIconEntry('battery', kBatteryIcon, ['battery', 'power', 'charge', 'energy']),
  DynamicLucideIconEntry('battery-full', kBatteryFullIcon, ['battery', 'full', 'power', 'charge']),
  DynamicLucideIconEntry('battery-low', kBatteryLowIcon, ['battery', 'low', 'power', 'charge']),
  DynamicLucideIconEntry('battery-medium', kBatteryMediumIcon, ['battery', 'medium', 'power', 'charge']),
  DynamicLucideIconEntry('battery-plus', kBatteryPlusIcon, ['battery', 'plus', 'add', 'charge']),
  DynamicLucideIconEntry('battery-warning', kBatteryWarningIcon, ['battery', 'warning', 'alert', 'low']),
  DynamicLucideIconEntry('bell-electric', kBellElectricIcon, ['bell', 'electric', 'alarm', 'ring']),
  DynamicLucideIconEntry('biceps-flexed', kBicepsFlexedIcon, ['biceps', 'flex', 'muscle', 'strong', 'arm']),
  DynamicLucideIconEntry('blocks', kBlocksIcon, ['blocks', 'build', 'stack', 'integration']),
  DynamicLucideIconEntry('bluetooth', kBluetoothIcon, ['bluetooth', 'wireless', 'connection']),
  DynamicLucideIconEntry('bluetooth-connected', kBluetoothConnectedIcon,
      ['bluetooth', 'connected', 'paired', 'wireless']),
  DynamicLucideIconEntry('bluetooth-off', kBluetoothOffIcon,
      ['bluetooth', 'off', 'disabled', 'disconnected']),
  DynamicLucideIconEntry('bold', kBoldIcon, ['bold', 'text', 'format', 'weight']),
  DynamicLucideIconEntry('bone', kBoneIcon, ['bone', 'dog', 'pet', 'skeleton']),
];
