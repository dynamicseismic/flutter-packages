// Generated icon batch 01. Path data: Lucide (ISC). Animation params:
// pqoqubbw/icons (MIT). See ATTRIBUTION.md.
import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Big "A" with a down arrow: the letter pops in while the arrow drops in.
const LucideIconData kAArrowDownIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M3.5 13h6',
      CompositePart([
        ScalePart([0.8, 1], duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 300)),
      ]),
    ),
    IconPart(
      'm2 16 4.5-9 4.5 9',
      CompositePart([
        ScalePart([0.8, 1], duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 300)),
      ]),
    ),
    IconPart(
      'M18 7v9',
      CompositePart([
        TranslatePart([Offset(0, -10), Offset.zero],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 300)),
      ]),
    ),
    IconPart(
      'm14 12 4 4 4-4',
      CompositePart([
        TranslatePart([Offset(0, -10), Offset.zero],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 300)),
      ]),
    ),
  ],
);

/// Big "A" with an up arrow: the letter pops in while the arrow rises in.
const LucideIconData kAArrowUpIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M3.5 13h6',
      CompositePart([
        ScalePart([0.8, 1], duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 300)),
      ]),
    ),
    IconPart(
      'm2 16 4.5-9 4.5 9',
      CompositePart([
        ScalePart([0.8, 1], duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 300)),
      ]),
    ),
    IconPart(
      'M18 16V7',
      CompositePart([
        TranslatePart([Offset(0, 10), Offset.zero],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 300)),
      ]),
    ),
    IconPart(
      'm14 11 4-4 4 4',
      CompositePart([
        TranslatePart([Offset(0, 10), Offset.zero],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 300)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 300)),
      ]),
    ),
  ],
);

/// Accessibility figure: head bobs, upper limb wiggles, the wheel spins round.
const LucideIconData kAccessibilityIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart(
      'M16 3a1 1 0 1 0 2 0 1 1 0 1 0 -2 0',
      TranslatePart([Offset.zero, Offset(1, 1), Offset(-1, -1), Offset.zero],
          duration: Duration(milliseconds: 800)),
    ),
    IconPart.group(
      [
        'm18 19 1-7-6 1',
        'M8,5l5.5,3-2.4,3.5',
      ],
      RotatePart([0, 5, -5, 0],
          pivot: kViewBoxCenter, duration: Duration(milliseconds: 800)),
    ),
    IconPart(
      'M8 5 L5 8',
      RotatePart([0, -60, 0],
          pivot: Offset(8, 5),
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 400)),
    ),
    IconPart.group(
      [
        'M4.2,14.5c-.8,2.6.7,5.4,3.3,6.2,1.2.4,2.4.3,3.6-.2',
        'M13.8,17.5c.8-2.6-.7-5.4-3.3-6.2-1.2-.4-2.4-.3-3.6.2',
        'M13,13.1c-.5-.7-1.1-1.2-1.9-1.6',
      ],
      RotatePart([0, -360],
          delay: Duration(milliseconds: 400), duration: Duration(milliseconds: 600)),
    ),
  ],
);

/// Air vent: the frame is static while the airflow swirls draw themselves on.
const LucideIconData kAirVentIcon = LucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart('M6 12H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2'),
    IconPart('M6 8h12'),
    IconPart(
      'M18.3 17.7a2.5 2.5 0 0 1-3.16 3.83 2.53 2.53 0 0 1-1.14-2V12',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 500)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'M6.6 15.6A2 2 0 1 0 10 17v-5',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 500)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Paper airplane that lifts off up-and-to-the-right while shrinking.
const LucideIconData kAirplaneIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M17.8 19.2L16 11l3.5-3.5C21 6 21.5 4 21 3c-1-.5-3 0-4.5 1.5L13 8 4.8 6.2c-.5-.1-.9.1-1.1.5l-.3.5c-.2.5-.1 1 .3 1.3L9 12l-2 3H4l-1 1 3 2 2 3 1-1v-3l3-2 3.5 5.3c.3.4.8.5 1.3.3l.5-.2c.4-.3.6-.7.5-1.2z',
      CompositePart([
        TranslatePart([Offset.zero, Offset(3, -3)]),
        ScalePart([1, 0.8]),
      ]),
    ),
  ],
);

/// Airplay: the screen outline draws itself on, then the triangle pops up.
const LucideIconData kAirplayIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M5 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-1',
      CompositePart([
        DrawPart(),
        OpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'M12 15l5 6H7z',
      CompositePart([
        ScalePart([0.6, 1.1, 1], curve: Curves.easeOut),
        OpacityPart([0, 1], duration: Duration(milliseconds: 200)),
      ]),
    ),
  ],
);

/// Alarm clock that rattles side to side (loops while active).
const LucideIconData kAlarmClockIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  repeats: true,
  parts: [
    IconPart.group(
      [
        'M18 20.5L19.5 22',
        'M6 20.5L4.5 22',
        'M21 13C21 17.968 16.968 22 12 22C7.032 22 3 17.968 3 13C3 8.032 7.032 4 12 4C16.968 4 21 8.032 21 13Z',
        'M15.339 15.862L12.549 14.197C12.063 13.909 11.667 13.216 11.667 12.649V8.95898',
      ],
      TranslatePart([
        Offset(-1, -1.5),
        Offset(1, -1.5),
        Offset(-1, -1.5),
        Offset(1, -1.5),
        Offset(-1, -1.5),
        Offset(0, -1.5),
      ], curve: Curves.linear),
    ),
    IconPart.group(
      [
        'M18 2L21.747 5.31064',
        'M6 2L2.25304 5.31064',
      ],
      TranslatePart([
        Offset(-2, -2.5),
        Offset(2, -2.5),
        Offset(-2, -2.5),
        Offset(2, -2.5),
        Offset(-2, -2.5),
        Offset(0, -2.5),
      ], curve: Curves.linear),
    ),
  ],
);

/// Alarm clock with a check that rattles side to side (loops while active).
const LucideIconData kAlarmClockCheckIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  repeats: true,
  parts: [
    IconPart.group(
      [
        'M4 13a8 8 0 1 0 16 0 8 8 0 1 0 -16 0',
        'M6.38 18.7 4 21',
        'M17.64 18.67 20 21',
        'm9 13 2 2 4-4',
      ],
      TranslatePart([
        Offset(-1, -1.5),
        Offset(1, -1.5),
        Offset(-1, -1.5),
        Offset(1, -1.5),
        Offset(-1, -1.5),
        Offset(0, -1.5),
      ], curve: Curves.linear),
    ),
    IconPart.group(
      [
        'M5 3 2 6',
        'm22 6-3-3',
      ],
      TranslatePart([
        Offset(-2, -2.5),
        Offset(2, -2.5),
        Offset(-2, -2.5),
        Offset(2, -2.5),
        Offset(-2, -2.5),
        Offset(0, -2.5),
      ], curve: Curves.linear),
    ),
  ],
);

/// Alarm clock with a minus that rattles side to side (loops while active).
const LucideIconData kAlarmClockMinusIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  repeats: true,
  parts: [
    IconPart.group(
      [
        'M4 13a8 8 0 1 0 16 0 8 8 0 1 0 -16 0',
        'M6.38 18.7 4 21',
        'M17.64 18.67 20 21',
        'M9 13h6',
      ],
      TranslatePart([
        Offset(-1, -1.5),
        Offset(1, -1.5),
        Offset(-1, -1.5),
        Offset(1, -1.5),
        Offset(-1, -1.5),
        Offset(0, -1.5),
      ], curve: Curves.linear),
    ),
    IconPart.group(
      [
        'M5 3 2 6',
        'm22 6-3-3',
      ],
      TranslatePart([
        Offset(-2, -2.5),
        Offset(2, -2.5),
        Offset(-2, -2.5),
        Offset(2, -2.5),
        Offset(-2, -2.5),
        Offset(0, -2.5),
      ], curve: Curves.linear),
    ),
  ],
);

/// Alarm clock with a plus that rattles side to side (loops while active).
const LucideIconData kAlarmClockPlusIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  repeats: true,
  parts: [
    IconPart.group(
      [
        'M4 13a8 8 0 1 0 16 0 8 8 0 1 0 -16 0',
        'M6.38 18.7 4 21',
        'M17.64 18.67 20 21',
        'M9 13h6',
        'M12 10v6',
      ],
      TranslatePart([
        Offset(-1, -1.5),
        Offset(1, -1.5),
        Offset(-1, -1.5),
        Offset(1, -1.5),
        Offset(-1, -1.5),
        Offset(0, -1.5),
      ], curve: Curves.linear),
    ),
    IconPart.group(
      [
        'M5 3 2 6',
        'm22 6-3-3',
      ],
      TranslatePart([
        Offset(-2, -2.5),
        Offset(2, -2.5),
        Offset(-2, -2.5),
        Offset(2, -2.5),
        Offset(-2, -2.5),
        Offset(0, -2.5),
      ], curve: Curves.linear),
    ),
  ],
);

/// Smoke alarm: the unit pulses while wisps of smoke rise and fade (loops).
const LucideIconData kAlarmSmokeIcon = LucideIconData(
  duration: Duration(milliseconds: 1400),
  repeats: true,
  parts: [
    IconPart(
      'M11 21c0-2.5 2-2.5 2-5',
      CompositePart([
        TranslatePart([Offset(0, 6), Offset.zero]),
        OpacityPart([0, 1, 0]),
      ]),
    ),
    IconPart(
      'M16 21c0-2.5 2-2.5 2-5',
      CompositePart([
        TranslatePart([Offset(0, 6), Offset.zero]),
        OpacityPart([0, 1, 0]),
      ]),
    ),
    IconPart.group(
      [
        'm19 8-.8 3a1.25 1.25 0 0 1-1.2 1H7a1.25 1.25 0 0 1-1.2-1L5 8',
        'M21 3a1 1 0 0 1 1 1v2a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V4a1 1 0 0 1 1-1z',
      ],
      ScalePart([1, 1.05, 1], pivot: kViewBoxCenter),
    ),
    IconPart(
      'M6 21c0-2.5 2-2.5 2-5',
      CompositePart([
        TranslatePart([Offset(0, 6), Offset.zero]),
        OpacityPart([0, 1, 0]),
      ]),
    ),
  ],
);

/// Align-center: the middle line slides back and forth.
const LucideIconData kAlignCenterIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart(
      'M17 12H7',
      TranslatePart([
        Offset.zero,
        Offset(3, 0),
        Offset(-3, 0),
        Offset(2, 0),
        Offset(-2, 0),
        Offset.zero,
      ], curve: Curves.linear),
    ),
    IconPart('M19 18H5'),
    IconPart('M21 6H3'),
  ],
);

/// Align-horizontal: the bars settle inward toward the centre guide.
const LucideIconData kAlignHorizontalIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M9 9h4a2 2 0 0 1 2 2v0a2 2 0 0 1-2 2H9a2 2 0 0 1-2-2v0a2 2 0 0 1 2-2z',
      ScalePart([1, 0.85],
          axis: ScaleAxis.horizontal,
          pivot: Offset(12, 12),
          curve: SpringCurve(stiffness: 160, damping: 17)),
    ),
    IconPart(
      'M4 22V2',
      CompositePart([
        TranslatePart([Offset.zero, Offset(2, 0)],
            curve: SpringCurve(stiffness: 160, damping: 17)),
        ScalePart([1, 0.9],
            axis: ScaleAxis.vertical,
            curve: SpringCurve(stiffness: 160, damping: 17)),
      ]),
    ),
    IconPart(
      'M20 22V2',
      CompositePart([
        TranslatePart([Offset.zero, Offset(-2, 0)],
            curve: SpringCurve(stiffness: 160, damping: 17)),
        ScalePart([1, 0.9],
            axis: ScaleAxis.vertical,
            curve: SpringCurve(stiffness: 160, damping: 17)),
      ]),
    ),
  ],
);

/// Align-left: the text lines spring to new widths.
const LucideIconData kAlignLeftIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart('M3 6 L21 6'),
    IconPart(
      'M3 12 L15 12',
      ScalePart([1, 1.33],
          axis: ScaleAxis.horizontal,
          pivot: Offset(3, 12),
          curve: SpringCurve(stiffness: 150, damping: 15)),
    ),
    IconPart(
      'M3 18 L17 18',
      ScalePart([1, 0.64],
          axis: ScaleAxis.horizontal,
          pivot: Offset(3, 18),
          curve: SpringCurve(stiffness: 150, damping: 15)),
    ),
  ],
);

/// Align-right: the text lines spring to new widths, anchored to the right.
const LucideIconData kAlignRightIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart('M3 6 L21 6'),
    IconPart(
      'M9 12 L21 12',
      ScalePart([1, 1.33],
          axis: ScaleAxis.horizontal,
          pivot: Offset(21, 12),
          curve: SpringCurve(stiffness: 150, damping: 15)),
    ),
    IconPart(
      'M7 18 L21 18',
      ScalePart([1, 0.64],
          axis: ScaleAxis.horizontal,
          pivot: Offset(21, 18),
          curve: SpringCurve(stiffness: 150, damping: 15)),
    ),
  ],
);

/// Align-vertical: the bars settle inward toward the centre guide.
const LucideIconData kAlignVerticalIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M9 9h10a2 2 0 0 1 2 2v0a2 2 0 0 1-2 2H9a2 2 0 0 1-2-2v0a2 2 0 0 1 2-2z',
      ScalePart([1, 0.8],
          axis: ScaleAxis.vertical,
          pivot: Offset(12, 12),
          curve: SpringCurve(stiffness: 160, damping: 17)),
    ),
    IconPart(
      'M22 20H2',
      CompositePart([
        TranslatePart([Offset.zero, Offset(0, -2)],
            curve: SpringCurve(stiffness: 160, damping: 17)),
        ScalePart([1, 0.9],
            axis: ScaleAxis.horizontal,
            curve: SpringCurve(stiffness: 160, damping: 17)),
      ]),
    ),
    IconPart(
      'M22 4H2',
      CompositePart([
        TranslatePart([Offset.zero, Offset(0, 2)],
            curve: SpringCurve(stiffness: 160, damping: 17)),
        ScalePart([1, 0.9],
            axis: ScaleAxis.horizontal,
            curve: SpringCurve(stiffness: 160, damping: 17)),
      ]),
    ),
  ],
);

/// Ambulance speeding along: body bobs, wheels spin, cross blinks (loops).
const LucideIconData kAmbulanceIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  repeats: true,
  parts: [
    IconPart(
      'M0 8 L5 8',
      OpacityPart([0, 0.7, 0.5, 0], curve: Curves.easeOut),
    ),
    IconPart(
      'M-1 11 L6 11',
      OpacityPart([0, 0.7, 0.5, 0],
          delay: Duration(milliseconds: 40), curve: Curves.easeOut),
    ),
    IconPart(
      'M0 14 L4 14',
      OpacityPart([0, 0.7, 0.5, 0],
          delay: Duration(milliseconds: 80), curve: Curves.easeOut),
    ),
    IconPart.group(
      [
        'M14 18V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v11a1 1 0 0 0 1 1h2',
        'M19 18h2a1 1 0 0 0 1-1v-3.28a1 1 0 0 0-.684-.948l-1.923-.641a1 1 0 0 1-.578-.502l-1.539-3.076A1 1 0 0 0 16.382 8H14',
        'M9 18h6',
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
      ['M10 10H6', 'M8 8v4'],
      CompositePart([
        TranslatePart([
          Offset.zero,
          Offset(0, -1),
          Offset.zero,
          Offset(0, -0.5),
          Offset.zero,
        ]),
        OpacityPart([1, 0.3, 1]),
      ]),
    ),
    IconPart(
      'M5 18a2 2 0 1 0 4 0 2 2 0 1 0 -4 0',
      RotatePart([0, 360], pivot: Offset(7, 18), curve: Curves.linear),
    ),
    IconPart(
      'M15 18a2 2 0 1 0 4 0 2 2 0 1 0 -4 0',
      RotatePart([0, 360], pivot: Offset(17, 18), curve: Curves.linear),
    ),
  ],
);

/// Angry face: the head puffs up and shakes, eyebrows knit, eyes widen.
const LucideIconData kAngryIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart.group(
      [
        'M2 12a10 10 0 1 0 20 0 10 10 0 1 0 -20 0',
        'M16 16s-1.5-2-4-2-4 2-4 2',
        'M7.5 8 10 9',
        'm14 9 2.5-1',
        'M9 10h.01',
        'M15 10h.01',
      ],
      CompositePart([
        ScalePart([1, 1.2, 1.2, 1.2, 1], pivot: kViewBoxCenter),
        RotatePart([0, -3, 3, -1, 1, 0], pivot: kViewBoxCenter),
      ]),
    ),
  ],
);

/// Annoyed face: a flat unimpressed look that scales up slightly.
const LucideIconData kAnnoyedIcon = LucideIconData(
  duration: Duration(milliseconds: 300),
  parts: [
    IconPart(
      'M2 12a10 10 0 1 0 20 0 10 10 0 1 0 -20 0',
      ScalePart([1, 1.05], pivot: kViewBoxCenter, curve: Curves.easeOut),
    ),
    IconPart(
      'M8 15h8',
      ScalePart([1, 0.8], axis: ScaleAxis.horizontal, curve: Curves.easeOut),
    ),
    IconPart(
      'M8 9h2',
      RotatePart([0, 15], curve: Curves.easeOut),
    ),
    IconPart(
      'M14 9h2',
      RotatePart([0, 15],
          delay: Duration(milliseconds: 50), curve: Curves.easeOut),
    ),
  ],
);

/// Archive box: the lid lifts off slightly as the box opens.
const LucideIconData kArchiveIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M3 4h18a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5a1 1 0 0 1 1-1z',
      TranslatePart([Offset.zero, Offset(0, -1.5)],
          curve: SpringCurve(stiffness: 200, damping: 25)),
    ),
    IconPart('M4 8v11a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8'),
    IconPart('M10 12h4'),
  ],
);

const List<LucideIconEntry> gen01Icons = [
  LucideIconEntry('a-arrow-down', kAArrowDownIcon, ['letter', 'font', 'size', 'decrease']),
  LucideIconEntry('a-arrow-up', kAArrowUpIcon, ['letter', 'font', 'size', 'increase']),
  LucideIconEntry('accessibility', kAccessibilityIcon, ['disability', 'wheelchair', 'access', 'a11y']),
  LucideIconEntry('air-vent', kAirVentIcon, ['ac', 'air conditioning', 'hvac', 'ventilation']),
  LucideIconEntry('airplane', kAirplaneIcon, ['plane', 'flight', 'travel', 'send']),
  LucideIconEntry('airplay', kAirplayIcon, ['cast', 'stream', 'screen', 'mirror']),
  LucideIconEntry('alarm-clock', kAlarmClockIcon, ['time', 'wake', 'reminder', 'ring']),
  LucideIconEntry('alarm-clock-check', kAlarmClockCheckIcon, ['time', 'done', 'reminder', 'tick']),
  LucideIconEntry('alarm-clock-minus', kAlarmClockMinusIcon, ['time', 'remove', 'reminder', 'subtract']),
  LucideIconEntry('alarm-clock-plus', kAlarmClockPlusIcon, ['time', 'add', 'reminder', 'new']),
  LucideIconEntry('alarm-smoke', kAlarmSmokeIcon, ['fire', 'detector', 'safety', 'smoke']),
  LucideIconEntry('align-center', kAlignCenterIcon, ['text', 'paragraph', 'format', 'center']),
  LucideIconEntry('align-horizontal', kAlignHorizontalIcon, ['layout', 'distribute', 'arrange', 'space']),
  LucideIconEntry('align-left', kAlignLeftIcon, ['text', 'paragraph', 'format', 'left']),
  LucideIconEntry('align-right', kAlignRightIcon, ['text', 'paragraph', 'format', 'right']),
  LucideIconEntry('align-vertical', kAlignVerticalIcon, ['layout', 'distribute', 'arrange', 'space']),
  LucideIconEntry('ambulance', kAmbulanceIcon, ['emergency', 'medical', 'hospital', 'vehicle']),
  LucideIconEntry('angry', kAngryIcon, ['emotion', 'face', 'mad', 'emoji']),
  LucideIconEntry('annoyed', kAnnoyedIcon, ['emotion', 'face', 'meh', 'emoji']),
  LucideIconEntry('archive', kArchiveIcon, ['box', 'store', 'storage', 'save']),
];
