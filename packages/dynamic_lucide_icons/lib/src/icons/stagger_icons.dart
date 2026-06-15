import '../core/core.dart';

/// Staggered multi-part family — pieces cascade in. Path data: Lucide (ISC).
/// Animation params: pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _wifiSpring = DynamicSpringCurve(stiffness: 300, damping: 20);

/// Wi-Fi arcs that ripple in from the dot outward.
const DynamicLucideIconData kWifiIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart('M12 20h.01', DynamicOpacityPart([0, 1], curve: _wifiSpring)),
    DynamicIconPart('M8.5 16.429a5 5 0 0 1 7 0',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 100), curve: _wifiSpring)),
    DynamicIconPart('M5 12.859a10 10 0 0 1 14 0',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 200), curve: _wifiSpring)),
    DynamicIconPart('M2 8.82a15 15 0 0 1 20 0',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 300), curve: _wifiSpring)),
  ],
);

/// Speaker whose sound waves draw in, one after the other.
const DynamicLucideIconData kVolumeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
        'M11 4.702a.705.705 0 0 0-1.203-.498L6.413 7.587A1.4 1.4 0 0 1 5.416 8H3a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h2.416a1.4 1.4 0 0 1 .997.413l3.383 3.384A.705.705 0 0 0 11 19.298z'),
    DynamicIconPart(
      'M16 9a5 5 0 0 1 0 6',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 100)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 150)),
      ]),
    ),
    DynamicIconPart(
      'M19.364 18.364a9 9 0 0 0 0-12.728',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 200)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 150)),
      ]),
    ),
  ],
);

/// Audio equalizer bars that bounce (loops while active).
const DynamicLucideIconData kAudioLinesIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    DynamicIconPart('M2 10v3'),
    DynamicIconPart('M6 6v11', DynamicScalePart([1, 0.27, 1], axis: DynamicScaleAxis.vertical)),
    DynamicIconPart('M10 3v18', DynamicScalePart([1, 0.28, 1], axis: DynamicScaleAxis.vertical)),
    DynamicIconPart('M14 8v7', DynamicScalePart([1, 1.57, 1], axis: DynamicScaleAxis.vertical)),
    DynamicIconPart('M18 5v13', DynamicScalePart([1, 0.69, 1], axis: DynamicScaleAxis.vertical)),
    DynamicIconPart('M22 10v3'),
  ],
);

/// Radio waves that fade in from the centre outward.
const DynamicLucideIconData kRadioIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M4.9 19.1C1 15.2 1 8.8 4.9 4.9',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 100), curve: _wifiSpring)),
    DynamicIconPart('M7.8 16.2c-2.3-2.3-2.3-6.1 0-8.5',
        DynamicOpacityPart([0, 1], curve: _wifiSpring)),
    DynamicIconPart('M10 12a2 2 0 1 0 4 0 2 2 0 1 0 -4 0'),
    DynamicIconPart('M16.2 7.8c2.3 2.3 2.3 6.1 0 8.5',
        DynamicOpacityPart([0, 1], curve: _wifiSpring)),
    DynamicIconPart('M19.1 4.9C23 8.8 23 15.1 19.1 19',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 100), curve: _wifiSpring)),
  ],
);

/// Bluetooth searching: glyph pulses while the indicators ping (loops).
const DynamicLucideIconData kBluetoothSearchingIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  repeats: true,
  parts: [
    DynamicIconPart('m7 7 10 10-5 5V2l5 5L7 17', DynamicOpacityPart([1, 0.8, 1])),
    DynamicIconPart('M18 12h.01', DynamicScalePart([0, 1, 0.8])),
    DynamicIconPart('M20.83 14.83a4 4 0 0 0 0-5.66',
        DynamicScalePart([0, 1, 0.8], delay: Duration(milliseconds: 200))),
  ],
);

/// Cast: signal indicators fan out from the dot.
const DynamicLucideIconData kCastIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart(
        'M2 8V6a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2h-6'),
    DynamicIconPart('M2 20 2.01 20', DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 500))),
    DynamicIconPart('M2 16a5 5 0 0 1 4 4',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 500))),
    DynamicIconPart('M2 12a9 9 0 0 1 8 8',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 500))),
  ],
);

/// Sun whose rays light up one by one around the disc.
const DynamicLucideIconData kSunIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1100),
  parts: [
    DynamicIconPart('M8 12a4 4 0 1 0 8 0 4 4 0 1 0 -8 0'),
    DynamicIconPart('M12 2v2',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 300))),
    DynamicIconPart('m19.07 4.93-1.41 1.41',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 300))),
    DynamicIconPart('M20 12h2',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 300))),
    DynamicIconPart('m17.66 17.66 1.41 1.41',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 400), duration: Duration(milliseconds: 300))),
    DynamicIconPart('M12 20v2',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 500), duration: Duration(milliseconds: 300))),
    DynamicIconPart('m6.34 17.66-1.41 1.41',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 600), duration: Duration(milliseconds: 300))),
    DynamicIconPart('M2 12h2',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 700), duration: Duration(milliseconds: 300))),
    DynamicIconPart('m4.93 4.93 1.41 1.41',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 800), duration: Duration(milliseconds: 300))),
  ],
);
