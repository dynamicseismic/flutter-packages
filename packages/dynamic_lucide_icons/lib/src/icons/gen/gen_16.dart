import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 16. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _fadeIn = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100));
const _rayEase = DynamicSpringCurve(stiffness: 300, damping: 20);

/// Pound sterling: the symbol strokes draw on, top arch first then the bars.
const DynamicLucideIconData kPoundSterlingIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M18 7c0-5.333-8-5.333-8 0',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 540)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 90)),
      ]),
    ),
    DynamicIconPart(
      'M10 7v14',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 540)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 90)),
      ]),
    ),
    DynamicIconPart(
      'M18 21h-12',
      DynamicCompositePart([
        DynamicDrawPart(
            fromEnd: true,
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
    DynamicIconPart(
      'M16 13h-10',
      DynamicCompositePart([
        DynamicDrawPart(
            fromEnd: true,
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
  ],
);

/// Projector: the light rays draw in, then the body bobs and swells.
const DynamicLucideIconData kProjectorIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart(
      'M5 7 3 5',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 400), curve: Curves.easeOut),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 120)),
      ]),
    ),
    DynamicIconPart(
      'M9 6V3',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 400), curve: Curves.easeOut),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 120)),
      ]),
    ),
    DynamicIconPart(
      'm13 7 2-2',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 400), curve: Curves.easeOut),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 120)),
      ]),
    ),
    DynamicIconPart.group(
      [
        'M6 13a3 3 0 1 0 6 0 3 3 0 1 0 -6 0',
        'M11.83 12H20a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-4a2 2 0 0 1 2-2h2.17',
        'M16 16h2',
      ],
      DynamicCompositePart([
        DynamicScalePart([1, 1.08, 1], pivot: kViewBoxCenter),
        DynamicTranslatePart([Offset.zero, Offset(0, -1), Offset.zero]),
      ]),
    ),
  ],
);

/// Rabbit that twitches: the whole glyph wiggles and hops in place.
const DynamicLucideIconData kRabbitIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart.group(
      [
        'M18 21h-8a4 4 0 0 1-4-4 7 7 0 0 1 7-7h.2L9.6 6.4a1 1 0 1 1 2.8-2.8L15.8 7h.2c3.3 0 6 2.7 6 6v1a2 2 0 0 1-2 2h-1a3 3 0 0 0-3 3',
        'M13 16a3 3 0 0 1 2.24 5',
        'M18 12h.01',
        'M20 8.54V4a2 2 0 1 0-4 0v3',
        'M7.612 12.524a3 3 0 1 0-1.6 4.3',
      ],
      DynamicCompositePart([
        DynamicRotatePart([0, 5, -5, 3, -3, 0], pivot: kViewBoxCenter),
        DynamicTranslatePart([
          Offset.zero,
          Offset(3, 1.5),
          Offset(-3, -1.5),
          Offset(2, 1),
          Offset(-2, -1),
          Offset.zero,
        ]),
      ]),
    ),
  ],
);

/// Radio tower: the signal arcs fade out then ripple back in from the centre.
const DynamicLucideIconData kRadioTowerIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M4.9 16.1C1 12.2 1 5.8 4.9 1.9',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 100), curve: _rayEase)),
    DynamicIconPart('M7.8 4.7a6.14 6.14 0 0 0-.8 7.5',
        DynamicOpacityPart([0, 1], curve: _rayEase)),
    DynamicIconPart('M10 9a2 2 0 1 0 4 0 2 2 0 1 0 -4 0'),
    DynamicIconPart('M16.2 4.8c2 2 2.26 5.11.8 7.47',
        DynamicOpacityPart([0, 1], curve: _rayEase)),
    DynamicIconPart('M19.1 1.9a9.96 9.96 0 0 1 0 14.1',
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 100), curve: _rayEase)),
    DynamicIconPart('M9.5 18h5'),
    DynamicIconPart('m8 22 4-11 4 11'),
  ],
);

/// Receipt with a dollar sign that draws itself on.
const DynamicLucideIconData kReceiptIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M12 17V7',
      DynamicCompositePart([
        DynamicDrawPart(
            fromEnd: true,
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
    DynamicIconPart(
      'M16 8h-6a2 2 0 0 0 0 4h4a2 2 0 0 1 0 4H8',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    DynamicIconPart(
        'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z'),
  ],
);

/// Receipt with a cent sign that draws itself on.
const DynamicLucideIconData kReceiptCentIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M12 7v10',
      DynamicCompositePart([
        DynamicDrawPart(
            fromEnd: true,
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
    DynamicIconPart(
      'M14.828 14.829a4 4 0 0 1-5.656 0 4 4 0 0 1 0-5.657 4 4 0 0 1 5.656 0',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    DynamicIconPart(
        'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z'),
  ],
);

/// Receipt with a euro sign that draws itself on.
const DynamicLucideIconData kReceiptEuroIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M15.828 14.829a4 4 0 0 1-5.656 0 4 4 0 0 1 0-5.657 4 4 0 0 1 5.656 0',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    DynamicIconPart(
        'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z'),
    DynamicIconPart(
      'M8 12h5',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
  ],
);

/// Receipt with an Indian rupee sign that draws itself on.
const DynamicLucideIconData kReceiptIndianRupeeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
        'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z'),
    DynamicIconPart(
      'M8 11h8',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
    DynamicIconPart(
      'M8 7h8',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
    DynamicIconPart(
      'M9 7a4 4 0 0 1 0 8H8l3 2',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
  ],
);

/// Receipt with a Japanese yen sign that draws itself on.
const DynamicLucideIconData kReceiptJapaneseYenIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'm12 10 3-3',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    DynamicIconPart(
        'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z'),
    DynamicIconPart(
      'M9 11h6',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
    DynamicIconPart(
      'M9 15h6',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
    DynamicIconPart(
      'm9 7 3 3v7',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
  ],
);

/// Receipt with a pound sterling sign that draws itself on.
const DynamicLucideIconData kReceiptPoundSterlingIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M10 17V9.5a1 1 0 0 1 5 0',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    DynamicIconPart(
        'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z'),
    DynamicIconPart(
      'M8 13h5',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
    DynamicIconPart(
      'M8 17h7',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
  ],
);

/// Receipt with a Russian ruble sign that draws itself on.
const DynamicLucideIconData kReceiptRussianRubleIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
        'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z'),
    DynamicIconPart(
      'M8 11h5a2 2 0 0 0 0-4h-3v10',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    DynamicIconPart(
      'M8 15h5',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
  ],
);

/// Receipt with a Swiss franc sign that draws itself on.
const DynamicLucideIconData kReceiptSwissFrancIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M10 11h4',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
    DynamicIconPart(
      'M10 17V7h5',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    DynamicIconPart(
        'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z'),
    DynamicIconPart(
      'M8 15h5',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
  ],
);

/// Receipt with text lines that draw in one after another.
const DynamicLucideIconData kReceiptTextIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart(
        'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z'),
    DynamicIconPart(
      'M8 8H14',
      DynamicDrawPart(duration: Duration(milliseconds: 350)),
    ),
    DynamicIconPart(
      'M8 12H16',
      DynamicDrawPart(
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 350)),
    ),
    DynamicIconPart(
      'M8 16H13',
      DynamicDrawPart(
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 350)),
    ),
  ],
);

/// Receipt with a Turkish lira sign that draws itself on.
const DynamicLucideIconData kReceiptTurkishLiraIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M10 7v10a5 5 0 0 0 5-5',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    DynamicIconPart(
      'm14 8-6 3',
      DynamicCompositePart([
        DynamicDrawPart(
            fromEnd: true,
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 360)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 90)),
      ]),
    ),
    DynamicIconPart(
        'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z'),
  ],
);

const _redoEase = Cubic(0.25, 0.1, 0.25, 1);

/// Redo: the arrow head lifts and tips back while the arc flexes.
const DynamicLucideIconData kRedoIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M21 7v6h-6',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(-2.1, -1.4), Offset.zero],
            curve: _redoEase),
        DynamicRotatePart([0, -12, 0], curve: _redoEase),
      ]),
    ),
    DynamicIconPart(
      'M3 17a9 9 0 0 1 9-9 9 9 0 0 1 6 2.3l3 2.7',
      DynamicScalePart([1, 0.8, 1], pivot: kViewBoxCenter, curve: _redoEase),
    ),
  ],
);

/// Redo with a dot: arrow head tips back, arc flexes, dot pulses.
const DynamicLucideIconData kRedoDotIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M21 7v6h-6',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(-2.1, -1.4), Offset.zero],
            curve: _redoEase),
        DynamicRotatePart([0, -12, 0], curve: _redoEase),
      ]),
    ),
    DynamicIconPart(
      'M3 17a9 9 0 0 1 9-9 9 9 0 0 1 6 2.3l3 2.7',
      DynamicScalePart([1, 0.8, 1], pivot: kViewBoxCenter, curve: _redoEase),
    ),
    DynamicIconPart(
      'M11 17a1 1 0 1 0 2 0 1 1 0 1 0 -2 0',
      DynamicScalePart([1, 1.2, 1], curve: _redoEase),
    ),
  ],
);

const _refreshSpring = DynamicSpringCurve(stiffness: 250, damping: 25);

/// Counter-clockwise refresh; springs a -50° tilt.
const DynamicLucideIconData kRefreshCcwIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart.group(
      [
        'M3 2v6h6',
        'M21 12A9 9 0 0 0 6 5.3L3 8',
        'M21 22v-6h-6',
        'M3 12a9 9 0 0 0 15 6.7l3-2.7',
      ],
      DynamicRotatePart([0, -50], pivot: kViewBoxCenter, curve: _refreshSpring),
    ),
  ],
);

/// Counter-clockwise refresh with a centre dot; arrows spring a -50° tilt.
const DynamicLucideIconData kRefreshCcwDotIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart.group(
      [
        'M3 2v6h6',
        'M21 12A9 9 0 0 0 6 5.3L3 8',
        'M21 22v-6h-6',
        'M3 12a9 9 0 0 0 15 6.7l3-2.7',
      ],
      DynamicRotatePart([0, -50], pivot: kViewBoxCenter, curve: _refreshSpring),
    ),
    DynamicIconPart('M11 12a1 1 0 1 0 2 0 1 1 0 1 0 -2 0'),
  ],
);

/// Refresh (disabled): the whole glyph shakes side to side.
const DynamicLucideIconData kRefreshCwOffIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart.group(
      [
        'M21 8L18.74 5.74A9.75 9.75 0 0 0 12 3C11 3 10.03 3.16 9.13 3.47',
        'M8 16H3v5',
        'M3 12C3 9.51 4 7.26 5.64 5.64',
        'm3 16 2.26 2.26A9.75 9.75 0 0 0 12 21c2.49 0 4.74-1 6.36-2.64',
        'M21 12c0 1-.16 1.97-.47 2.87',
        'M21 3v5h-5',
        'M22 22 2 2',
      ],
      DynamicTranslatePart([
        Offset(-3, 0),
        Offset(3, 0),
        Offset(-3, 0),
        Offset(3, 0),
        Offset.zero,
      ], curve: DynamicSpringCurve(stiffness: 500, damping: 20)),
    ),
  ],
);

/// Rocket that hovers and bobs while its exhaust flickers (loops while active).
const DynamicLucideIconData kRocketIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1500),
  repeats: true,
  parts: [
    DynamicIconPart.group(
      [
        'm12 15-3-3a22 22 0 0 1 2-3.95A12.88 12.88 0 0 1 22 2c0 2.72-.78 7.5-6 11a22.35 22.35 0 0 1-4 2z',
        'M9 12H4s.55-3.03 2-4c1.62-1.08 5 0 5 0',
        'M12 15v5s3.03-.55 4-2c1.08-1.62 0-5 0-5',
      ],
      DynamicTranslatePart([
        Offset.zero,
        Offset(0, -3),
        Offset(-3, 0),
        Offset(2, -2),
        Offset(-2, -3),
        Offset(1, -1),
        Offset(-1, -2),
        Offset.zero,
      ]),
    ),
    DynamicIconPart(
      'M4.5 16.5c-1.5 1.26-2 5-2 5s3.74-.5 5-2c.71-.84.7-2.13-.09-2.91a2.18 2.18 0 0 0-2.91-.09z',
      DynamicScalePart([1, 1.2, 0.9, 1.1, 1], pivot: Offset(4.5, 21)),
    ),
  ],
);

const List<DynamicLucideIconEntry> gen16Icons = [
  DynamicLucideIconEntry('pound-sterling', kPoundSterlingIcon,
      ['pound', 'sterling', 'currency', 'money', 'gbp']),
  DynamicLucideIconEntry(
      'projector', kProjectorIcon, ['projector', 'presentation', 'beamer']),
  DynamicLucideIconEntry('rabbit', kRabbitIcon, ['rabbit', 'bunny', 'animal', 'fast']),
  DynamicLucideIconEntry('radio-tower', kRadioTowerIcon,
      ['radio', 'tower', 'signal', 'broadcast', 'antenna']),
  DynamicLucideIconEntry('receipt', kReceiptIcon,
      ['receipt', 'bill', 'invoice', 'dollar', 'payment']),
  DynamicLucideIconEntry('receipt-cent', kReceiptCentIcon,
      ['receipt', 'cent', 'currency', 'invoice', 'bill']),
  DynamicLucideIconEntry('receipt-euro', kReceiptEuroIcon,
      ['receipt', 'euro', 'currency', 'invoice', 'bill']),
  DynamicLucideIconEntry('receipt-indian-rupee', kReceiptIndianRupeeIcon,
      ['receipt', 'rupee', 'indian', 'currency', 'invoice']),
  DynamicLucideIconEntry('receipt-japanese-yen', kReceiptJapaneseYenIcon,
      ['receipt', 'yen', 'japanese', 'currency', 'invoice']),
  DynamicLucideIconEntry('receipt-pound-sterling', kReceiptPoundSterlingIcon,
      ['receipt', 'pound', 'sterling', 'currency', 'invoice']),
  DynamicLucideIconEntry('receipt-russian-ruble', kReceiptRussianRubleIcon,
      ['receipt', 'ruble', 'russian', 'currency', 'invoice']),
  DynamicLucideIconEntry('receipt-swiss-franc', kReceiptSwissFrancIcon,
      ['receipt', 'franc', 'swiss', 'currency', 'invoice']),
  DynamicLucideIconEntry('receipt-text', kReceiptTextIcon,
      ['receipt', 'text', 'lines', 'invoice', 'bill']),
  DynamicLucideIconEntry('receipt-turkish-lira', kReceiptTurkishLiraIcon,
      ['receipt', 'lira', 'turkish', 'currency', 'invoice']),
  DynamicLucideIconEntry('redo', kRedoIcon, ['redo', 'arrow', 'forward', 'repeat']),
  DynamicLucideIconEntry(
      'redo-dot', kRedoDotIcon, ['redo', 'dot', 'arrow', 'forward', 'repeat']),
  DynamicLucideIconEntry('refresh-ccw', kRefreshCcwIcon,
      ['refresh', 'reload', 'sync', 'counterclockwise', 'rotate']),
  DynamicLucideIconEntry('refresh-ccw-dot', kRefreshCcwDotIcon,
      ['refresh', 'reload', 'sync', 'dot', 'rotate']),
  DynamicLucideIconEntry('refresh-cw-off', kRefreshCwOffIcon,
      ['refresh', 'reload', 'sync', 'off', 'disabled']),
  DynamicLucideIconEntry(
      'rocket', kRocketIcon, ['rocket', 'launch', 'ship', 'startup', 'space']),
];
