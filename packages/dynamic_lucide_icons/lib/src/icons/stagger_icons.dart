import '../core/core.dart';

/// Staggered multi-part family — pieces cascade in. Path data: Lucide (ISC).
/// Animation params: pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _wifiSpring = SpringCurve(stiffness: 300, damping: 20);

/// Wi-Fi arcs that ripple in from the dot outward.
const LucideIconData kWifiIcon = LucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart('M12 20h.01', OpacityPart([0, 1], curve: _wifiSpring)),
    IconPart('M8.5 16.429a5 5 0 0 1 7 0',
        OpacityPart([0, 1], delay: Duration(milliseconds: 100), curve: _wifiSpring)),
    IconPart('M5 12.859a10 10 0 0 1 14 0',
        OpacityPart([0, 1], delay: Duration(milliseconds: 200), curve: _wifiSpring)),
    IconPart('M2 8.82a15 15 0 0 1 20 0',
        OpacityPart([0, 1], delay: Duration(milliseconds: 300), curve: _wifiSpring)),
  ],
);

/// Speaker whose sound waves draw in, one after the other.
const LucideIconData kVolumeIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
        'M11 4.702a.705.705 0 0 0-1.203-.498L6.413 7.587A1.4 1.4 0 0 1 5.416 8H3a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h2.416a1.4 1.4 0 0 1 .997.413l3.383 3.384A.705.705 0 0 0 11 19.298z'),
    IconPart(
      'M16 9a5 5 0 0 1 0 6',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 100)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 150)),
      ]),
    ),
    IconPart(
      'M19.364 18.364a9 9 0 0 0 0-12.728',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 200)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 150)),
      ]),
    ),
  ],
);

/// Audio equalizer bars that bounce (loops while active).
const LucideIconData kAudioLinesIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    IconPart('M2 10v3'),
    IconPart('M6 6v11', ScalePart([1, 0.27, 1], axis: ScaleAxis.vertical)),
    IconPart('M10 3v18', ScalePart([1, 0.28, 1], axis: ScaleAxis.vertical)),
    IconPart('M14 8v7', ScalePart([1, 1.57, 1], axis: ScaleAxis.vertical)),
    IconPart('M18 5v13', ScalePart([1, 0.69, 1], axis: ScaleAxis.vertical)),
    IconPart('M22 10v3'),
  ],
);

/// Radio waves that fade in from the centre outward.
const LucideIconData kRadioIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('M4.9 19.1C1 15.2 1 8.8 4.9 4.9',
        OpacityPart([0, 1], delay: Duration(milliseconds: 100), curve: _wifiSpring)),
    IconPart('M7.8 16.2c-2.3-2.3-2.3-6.1 0-8.5',
        OpacityPart([0, 1], curve: _wifiSpring)),
    IconPart('M10 12a2 2 0 1 0 4 0 2 2 0 1 0 -4 0'),
    IconPart('M16.2 7.8c2.3 2.3 2.3 6.1 0 8.5',
        OpacityPart([0, 1], curve: _wifiSpring)),
    IconPart('M19.1 4.9C23 8.8 23 15.1 19.1 19',
        OpacityPart([0, 1], delay: Duration(milliseconds: 100), curve: _wifiSpring)),
  ],
);

/// Bluetooth searching: glyph pulses while the indicators ping (loops).
const LucideIconData kBluetoothSearchingIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  repeats: true,
  parts: [
    IconPart('m7 7 10 10-5 5V2l5 5L7 17', OpacityPart([1, 0.8, 1])),
    IconPart('M18 12h.01', ScalePart([0, 1, 0.8])),
    IconPart('M20.83 14.83a4 4 0 0 0 0-5.66',
        ScalePart([0, 1, 0.8], delay: Duration(milliseconds: 200))),
  ],
);

/// Cast: signal indicators fan out from the dot.
const LucideIconData kCastIcon = LucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart(
        'M2 8V6a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2h-6'),
    IconPart('M2 20 2.01 20', OpacityPart([0, 1], duration: Duration(milliseconds: 500))),
    IconPart('M2 16a5 5 0 0 1 4 4',
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 500))),
    IconPart('M2 12a9 9 0 0 1 8 8',
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 500))),
  ],
);

/// Sun whose rays light up one by one around the disc.
const LucideIconData kSunIcon = LucideIconData(
  duration: Duration(milliseconds: 1100),
  parts: [
    IconPart('M8 12a4 4 0 1 0 8 0 4 4 0 1 0 -8 0'),
    IconPart('M12 2v2',
        OpacityPart([0, 1], delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 300))),
    IconPart('m19.07 4.93-1.41 1.41',
        OpacityPart([0, 1], delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 300))),
    IconPart('M20 12h2',
        OpacityPart([0, 1], delay: Duration(milliseconds: 300), duration: Duration(milliseconds: 300))),
    IconPart('m17.66 17.66 1.41 1.41',
        OpacityPart([0, 1], delay: Duration(milliseconds: 400), duration: Duration(milliseconds: 300))),
    IconPart('M12 20v2',
        OpacityPart([0, 1], delay: Duration(milliseconds: 500), duration: Duration(milliseconds: 300))),
    IconPart('m6.34 17.66-1.41 1.41',
        OpacityPart([0, 1], delay: Duration(milliseconds: 600), duration: Duration(milliseconds: 300))),
    IconPart('M2 12h2',
        OpacityPart([0, 1], delay: Duration(milliseconds: 700), duration: Duration(milliseconds: 300))),
    IconPart('m4.93 4.93 1.41 1.41',
        OpacityPart([0, 1], delay: Duration(milliseconds: 800), duration: Duration(milliseconds: 300))),
  ],
);
