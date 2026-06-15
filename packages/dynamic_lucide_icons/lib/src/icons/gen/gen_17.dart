// Generated icon batch 17. Overwritten by the batch agent.
//
// Path data: Lucide (ISC). Animation params: pqoqubbw/icons (MIT).
// See ATTRIBUTION.md.
import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

const _fadeIn = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100));
const _introSpring = DynamicSpringCurve(stiffness: 300, damping: 20);

/// Rocking chair that rocks back and forth (loops while active).
const DynamicLucideIconData kRockingChairIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1200),
  repeats: true,
  parts: [
    DynamicIconPart.group(
      [
        'M3.5 2 L6.5 12.5 L18 12.5',
        'M9.5 12.5 L5.5 20',
        'M15 12.5 L18.5 20',
        'M2.75 18a13 13 0 0 0 18.5 0',
      ],
      DynamicRotatePart([0, -5, 5, -5, 0], pivot: Offset(2.4, 21.6)),
    ),
  ],
);

/// Roller-coaster bars and track that draw themselves on, left to right.
const DynamicLucideIconData kRollerCoasterIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart('M6 19V5', DynamicCompositePart([DynamicDrawPart(), _fadeIn])),
    DynamicIconPart('M10 19V6.8', DynamicCompositePart([DynamicDrawPart(), _fadeIn])),
    DynamicIconPart('M14 19v-7.8', DynamicCompositePart([DynamicDrawPart(), _fadeIn])),
    DynamicIconPart('M18 5v4', DynamicCompositePart([DynamicDrawPart(), _fadeIn])),
    DynamicIconPart('M18 19v-6', DynamicCompositePart([DynamicDrawPart(), _fadeIn])),
    DynamicIconPart('M22 19V9', DynamicCompositePart([DynamicDrawPart(), _fadeIn])),
    DynamicIconPart(
      'M2 19V9a4 4 0 0 1 4-4c2 0 4 1.33 6 4s4 4 6 4a4 4 0 1 0-3-6.65',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 200)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Counter-clockwise rotate arrow; springs a -50° tilt.
const DynamicLucideIconData kRotateCcwIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart.group(
      [
        'M3 12a9 9 0 1 0 9-9 9.75 9.75 0 0 0-6.74 2.74L3 8',
        'M3 3v5h5',
      ],
      DynamicRotatePart([0, -50],
          pivot: kViewBoxCenter, curve: DynamicSpringCurve(stiffness: 250, damping: 25)),
    ),
  ],
);

/// Route: the two stops and the path between them draw themselves on.
const DynamicLucideIconData kRouteIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1200),
  parts: [
    DynamicIconPart(
      'M3 19a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 150),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M9 19h8.5a3.5 3.5 0 0 0 0-7h-11a3.5 3.5 0 0 1 0-7H15',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 700)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M15 5a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 150),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Router: the antenna signal arcs fade out then ripple back in.
const DynamicLucideIconData kRouterIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
        'M4 14h16a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2h-16a2 2 0 0 1-2-2v-4a2 2 0 0 1 2-2z'),
    DynamicIconPart('M6.01 18H6'),
    DynamicIconPart('M10.01 18H10'),
    DynamicIconPart('M15 10v4'),
    DynamicIconPart('M17.84 7.17a4 4 0 0 0-5.66 0',
        DynamicOpacityPart([1, 0, 1],
            delay: Duration(milliseconds: 100), curve: _introSpring)),
    DynamicIconPart('M20.66 4.34a8 8 0 0 0-11.31 0',
        DynamicOpacityPart([1, 0, 1],
            delay: Duration(milliseconds: 200), curve: _introSpring)),
  ],
);

/// Russian ruble symbol that draws itself, with the crossbar drawing last.
const DynamicLucideIconData kRussianRubleIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M6 11h8a4 4 0 0 0 0-8H9v18',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 600)),
        _fadeIn,
      ]),
    ),
    DynamicIconPart(
      'M6 15h8',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Satellite dish that tilts and bobs while its signal waves fade back in.
const DynamicLucideIconData kSatelliteDishIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1500),
  parts: [
    DynamicIconPart.group(
      [
        'M4 10a7.31 7.31 0 0 0 10 10Z',
        'm9 15 3-3',
      ],
      DynamicCompositePart([
        DynamicRotatePart([0, -15, 0], pivot: kViewBoxCenter),
        DynamicTranslatePart([Offset.zero, Offset(0, 1), Offset(0, 2), Offset.zero]),
      ]),
    ),
    DynamicIconPart('M17 13a6 6 0 0 0-6-6',
        DynamicOpacityPart([1, 0, 1],
            delay: Duration(milliseconds: 100), curve: _introSpring)),
    DynamicIconPart('M21 13A10 10 0 0 0 11 3',
        DynamicOpacityPart([1, 0, 1],
            delay: Duration(milliseconds: 200), curve: _introSpring)),
  ],
);

/// Saudi riyal symbol whose strokes draw themselves on.
const DynamicLucideIconData kSaudiRiyalIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('m20 19.5-5.5 1.2', DynamicCompositePart([DynamicDrawPart(), _fadeIn])),
    DynamicIconPart('M14.5 4v11.22a1 1 0 0 0 1.242.97L20 15.2',
        DynamicCompositePart([DynamicDrawPart(), _fadeIn])),
    DynamicIconPart('m2.978 19.351 5.549-1.363A2 2 0 0 0 10 16V2',
        DynamicCompositePart([DynamicDrawPart(), _fadeIn])),
    DynamicIconPart('M20 10 4 13.5', DynamicCompositePart([DynamicDrawPart(), _fadeIn])),
  ],
);

/// Scan-face: the frame corners and mouth pop out, then settle back in.
const DynamicLucideIconData kScanFaceIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart(
      'M3 7V5a2 2 0 0 1 2-2h2',
      DynamicCompositePart([
        DynamicScalePart([1, 1.2, 1]),
        DynamicRotatePart([0, 45, 0]),
        DynamicOpacityPart([1, 0, 1]),
      ]),
    ),
    DynamicIconPart(
      'M17 3h2a2 2 0 0 1 2 2v2',
      DynamicCompositePart([
        DynamicScalePart([1, 1.2, 1]),
        DynamicRotatePart([0, 45, 0]),
        DynamicOpacityPart([1, 0, 1]),
      ]),
    ),
    DynamicIconPart(
      'M21 17v2a2 2 0 0 1-2 2h-2',
      DynamicCompositePart([
        DynamicScalePart([1, 1.2, 1]),
        DynamicRotatePart([0, 45, 0]),
        DynamicOpacityPart([1, 0, 1]),
      ]),
    ),
    DynamicIconPart(
      'M7 21H5a2 2 0 0 1-2-2v-2',
      DynamicCompositePart([
        DynamicScalePart([1, 1.2, 1]),
        DynamicRotatePart([0, 45, 0]),
        DynamicOpacityPart([1, 0, 1]),
      ]),
    ),
    DynamicIconPart(
      'M8 14s1.5 2 4 2 4-2 4-2',
      DynamicCompositePart([
        DynamicScalePart([1, 0.8, 1]),
        DynamicOpacityPart([1, 0, 1], delay: Duration(milliseconds: 70)),
      ]),
    ),
    DynamicIconPart('M9 9 L9.01 9'),
    DynamicIconPart('M15 9 L15.01 9'),
  ],
);

/// Scan-text: the frame stays put while the text lines redraw, one after another.
const DynamicLucideIconData kScanTextIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart('M3 7V5a2 2 0 0 1 2-2h2'),
    DynamicIconPart('M17 3h2a2 2 0 0 1 2 2v2'),
    DynamicIconPart('M21 17v2a2 2 0 0 1-2 2h-2'),
    DynamicIconPart('M7 21H5a2 2 0 0 1-2-2v-2'),
    DynamicIconPart(
      'M7 8h8',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M7 12h10',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M7 16h6',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Settings gear that springs a half-turn (180°) on activation.
const DynamicLucideIconData kSettingsIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart.group(
      [
        'M12.22 2h-.44a2 2 0 0 0-2 2v.18a2 2 0 0 1-1 1.73l-.43.25a2 2 0 0 1-2 0l-.15-.08a2 2 0 0 0-2.73.73l-.22.38a2 2 0 0 0 .73 2.73l.15.1a2 2 0 0 1 1 1.72v.51a2 2 0 0 1-1 1.74l-.15.09a2 2 0 0 0-.73 2.73l.22.38a2 2 0 0 0 2.73.73l.15-.08a2 2 0 0 1 2 0l.43.25a2 2 0 0 1 1 1.73V20a2 2 0 0 0 2 2h.44a2 2 0 0 0 2-2v-.18a2 2 0 0 1 1-1.73l.43-.25a2 2 0 0 1 2 0l.15.08a2 2 0 0 0 2.73-.73l.22-.39a2 2 0 0 0-.73-2.73l-.15-.08a2 2 0 0 1-1-1.74v-.5a2 2 0 0 1 1-1.74l.15-.09a2 2 0 0 0 .73-2.73l-.22-.38a2 2 0 0 0-2.73-.73l-.15.08a2 2 0 0 1-2 0l-.43-.25a2 2 0 0 1-1-1.73V4a2 2 0 0 0-2-2z',
        'M9 12a3 3 0 1 0 6 0 3 3 0 1 0 -6 0',
      ],
      DynamicRotatePart([0, 180],
          pivot: kViewBoxCenter, curve: DynamicSpringCurve(stiffness: 50, damping: 10)),
    ),
  ],
);

/// Shield with a check that draws on with a small pop.
const DynamicLucideIconData kShieldCheckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
        'M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z'),
    DynamicIconPart(
      'm9 12 2 2 4-4',
      DynamicCompositePart([DynamicDrawPart(), DynamicScalePart([0.5, 1]), _fadeIn]),
    ),
  ],
);

/// Ship whose wave draws in, then the hull rocks side to side (loops).
const DynamicLucideIconData kShipIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1200),
  repeats: true,
  parts: [
    DynamicIconPart(
      'M2 21c.6.5 1.2 1 2.5 1 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1 .6.5 1.2 1 2.5 1 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart.group(
      [
        'M19.38 20A11.6 11.6 0 0 0 21 14l-9-4-9 4c0 2.9.94 5.34 2.81 7.76',
        'M19 13V7a2 2 0 0 0-2-2H7a2 2 0 0 0-2 2v6',
        'M12 10v4',
        'M12 2v3',
      ],
      DynamicRotatePart([0, -3, 3, -3, 0], pivot: kViewBoxCenter),
    ),
  ],
);

/// Shower head with droplets that shimmer in sequence (loops while active).
const DynamicLucideIconData kShowerHeadIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    DynamicIconPart('m4 4 2.5 2.5'),
    DynamicIconPart('M13.5 6.5a4.95 4.95 0 0 0-7 7'),
    DynamicIconPart('M15 5 5 15'),
    DynamicIconPart('M14 17v.01', DynamicOpacityPart([1, 0.2, 1])),
    DynamicIconPart('M10 16v.01',
        DynamicOpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 100))),
    DynamicIconPart('M13 13v.01',
        DynamicOpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 200))),
    DynamicIconPart('M16 10v.01',
        DynamicOpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 300))),
    DynamicIconPart('M11 20v.01',
        DynamicOpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 400))),
    DynamicIconPart('M17 14v.01',
        DynamicOpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 500))),
    DynamicIconPart('M20 11v.01',
        DynamicOpacityPart([1, 0.2, 1], delay: Duration(milliseconds: 600))),
  ],
);

const _shrinkSpring = DynamicSpringCurve(stiffness: 250, damping: 25);

/// Shrink: the four corner arrows nudge inward toward the centre.
const DynamicLucideIconData kShrinkIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M9 4.2V9m0 0H4.2M9 9 3 3',
      DynamicTranslatePart([Offset.zero, Offset(1, 1)], curve: _shrinkSpring),
    ),
    DynamicIconPart(
      'M15 4.2V9m0 0h4.8M15 9l6-6',
      DynamicTranslatePart([Offset.zero, Offset(-1, 1)], curve: _shrinkSpring),
    ),
    DynamicIconPart(
      'M9 19.8V15m0 0H4.2M9 15l-6 6',
      DynamicTranslatePart([Offset.zero, Offset(1, -1)], curve: _shrinkSpring),
    ),
    DynamicIconPart(
      'm15 15 6 6m-6-6v4.8m0-4.8h4.8',
      DynamicTranslatePart([Offset.zero, Offset(-1, -1)], curve: _shrinkSpring),
    ),
  ],
);

const _slidersSpring = DynamicSpringCurve(stiffness: 100, damping: 12, mass: 0.4);

/// Sliders that slide their handles along the tracks (springy).
const DynamicLucideIconData kSlidersHorizontalIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M21 4 L14 4'),
    DynamicIconPart('M10 4 L3 4'),
    DynamicIconPart('M21 12 L12 12'),
    DynamicIconPart('M8 12 L3 12'),
    DynamicIconPart('M3 20 L12 20'),
    DynamicIconPart('M16 20 L21 20'),
    DynamicIconPart(
      'M14 2 L14 6',
      DynamicTranslatePart([Offset.zero, Offset(-5, 0)], curve: _slidersSpring),
    ),
    DynamicIconPart(
      'M8 10 L8 14',
      DynamicTranslatePart([Offset.zero, Offset(6, 0)], curve: _slidersSpring),
    ),
    DynamicIconPart(
      'M16 18 L16 22',
      DynamicTranslatePart([Offset.zero, Offset(-8, 0)], curve: _slidersSpring),
    ),
  ],
);

/// Smartphone with a charging bolt that pulses (loops while active).
const DynamicLucideIconData kSmartphoneChargingIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    DynamicIconPart(
        'M7 2h10a2 2 0 0 1 2 2v16a2 2 0 0 1-2 2h-10a2 2 0 0 1-2-2v-16a2 2 0 0 1 2-2z'),
    DynamicIconPart('M12.667 8 10 12h4l-2.667 4', DynamicOpacityPart([1, 0.4, 1])),
  ],
);

/// Smartphone-NFC: the signal arcs fade out then ripple back in.
const DynamicLucideIconData kSmartphoneNfcIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M3 6h5a1 1 0 0 1 1 1v10a1 1 0 0 1-1 1h-5a1 1 0 0 1-1-1v-10a1 1 0 0 1 1-1z'),
    DynamicIconPart('M13 8.32a7.43 7.43 0 0 1 0 7.36',
        DynamicOpacityPart([1, 0, 1], curve: _introSpring)),
    DynamicIconPart('M16.46 6.21a11.76 11.76 0 0 1 0 11.58',
        DynamicOpacityPart([1, 0, 1],
            delay: Duration(milliseconds: 100), curve: _introSpring)),
    DynamicIconPart('M19.91 4.1a15.91 15.91 0 0 1 .01 15.8',
        DynamicOpacityPart([1, 0, 1],
            delay: Duration(milliseconds: 200), curve: _introSpring)),
  ],
);

/// Smiley face that bobs and grins wider while the eyes blink.
const DynamicLucideIconData kSmileIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart(
      'M2 12a10 10 0 1 0 20 0 10 10 0 1 0 -20 0',
      DynamicCompositePart([
        DynamicScalePart([1, 1.15, 1.05, 1.1], pivot: kViewBoxCenter),
        DynamicRotatePart([0, -3, 3, 0], pivot: kViewBoxCenter),
      ]),
    ),
    DynamicIconPart(
      'M8 14s1.5 2 4 2 4-2 4-2',
      DynamicScalePart([1, 1.25, 1], delay: Duration(milliseconds: 100)),
    ),
    DynamicIconPart('M9 9 L9.01 9', DynamicScalePart([1, 1.5, 0.8, 1.2])),
    DynamicIconPart('M15 9 L15.01 9', DynamicScalePart([1, 1.5, 0.8, 1.2])),
  ],
);

/// Smile-plus: the face pulses while the plus spins a quarter-turn.
const DynamicLucideIconData kSmilePlusIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M22 11v1a10 10 0 1 1-9-10',
      DynamicScalePart([1, 1.1], curve: DynamicSpringCurve(stiffness: 200, damping: 20)),
    ),
    DynamicIconPart('M8 14s1.5 2 4 2 4-2 4-2'),
    DynamicIconPart('M9 9 L9.01 9'),
    DynamicIconPart('M15 9 L15.01 9'),
    DynamicIconPart.group(
      ['M16 5h6', 'M19 2v6'],
      DynamicCompositePart([
        DynamicRotatePart([0, 90],
            pivot: Offset(19, 5),
            delay: Duration(milliseconds: 100),
            curve: DynamicSpringCurve(stiffness: 200, damping: 20)),
        DynamicScalePart([1, 1.2],
            pivot: Offset(19, 5),
            delay: Duration(milliseconds: 100),
            curve: DynamicSpringCurve(stiffness: 200, damping: 20)),
      ]),
    ),
  ],
);

const List<DynamicLucideIconEntry> gen17Icons = [
  DynamicLucideIconEntry('rocking-chair', kRockingChairIcon, ['chair', 'rock', 'relax', 'furniture']),
  DynamicLucideIconEntry('roller-coaster', kRollerCoasterIcon, ['ride', 'amusement', 'park', 'theme']),
  DynamicLucideIconEntry('rotate-ccw', kRotateCcwIcon, ['rotate', 'undo', 'refresh', 'counter-clockwise']),
  DynamicLucideIconEntry('route', kRouteIcon, ['path', 'navigation', 'directions', 'map']),
  DynamicLucideIconEntry('router', kRouterIcon, ['network', 'wifi', 'modem', 'internet']),
  DynamicLucideIconEntry('russian-ruble', kRussianRubleIcon, ['currency', 'money', 'ruble', 'rouble']),
  DynamicLucideIconEntry('satellite-dish', kSatelliteDishIcon, ['signal', 'antenna', 'receiver', 'space']),
  DynamicLucideIconEntry('saudi-riyal', kSaudiRiyalIcon, ['currency', 'money', 'riyal', 'sar']),
  DynamicLucideIconEntry('scan-face', kScanFaceIcon, ['face', 'biometric', 'recognition', 'id']),
  DynamicLucideIconEntry('scan-text', kScanTextIcon, ['ocr', 'text', 'document', 'read']),
  DynamicLucideIconEntry('settings', kSettingsIcon, ['gear', 'cog', 'preferences', 'options']),
  DynamicLucideIconEntry('shield-check', kShieldCheckIcon, ['security', 'protected', 'verified', 'safe']),
  DynamicLucideIconEntry('ship', kShipIcon, ['boat', 'sea', 'vessel', 'cruise']),
  DynamicLucideIconEntry('shower-head', kShowerHeadIcon, ['bath', 'water', 'bathroom', 'wash']),
  DynamicLucideIconEntry('shrink', kShrinkIcon, ['minimize', 'collapse', 'compress', 'smaller']),
  DynamicLucideIconEntry('sliders-horizontal', kSlidersHorizontalIcon, ['filter', 'settings', 'controls', 'adjust']),
  DynamicLucideIconEntry('smartphone-charging', kSmartphoneChargingIcon, ['phone', 'battery', 'charge', 'mobile']),
  DynamicLucideIconEntry('smartphone-nfc', kSmartphoneNfcIcon, ['phone', 'nfc', 'contactless', 'mobile']),
  DynamicLucideIconEntry('smile', kSmileIcon, ['happy', 'emoji', 'face', 'emotion']),
  DynamicLucideIconEntry('smile-plus', kSmilePlusIcon, ['add', 'reaction', 'emoji', 'happy']),
];
