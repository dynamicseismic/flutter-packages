import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 16. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See LICENSE.

const _fadeIn = OpacityPart([0, 1], duration: Duration(milliseconds: 100));
const _rayEase = SpringCurve(stiffness: 300, damping: 20);

/// Pound sterling: the symbol strokes draw on, top arch first then the bars.
const DynamicIconData kPoundSterlingIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M18 7c0-5.333-8-5.333-8 0',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 540)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 90)),
      ]),
    ),
    IconPart(
      'M10 7v14',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 540)),
        OpacityPart([0, 1], duration: Duration(milliseconds: 90)),
      ]),
    ),
    IconPart(
      'M18 21h-12',
      CompositePart([
        DrawPart(
          fromEnd: true,
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
    IconPart(
      'M16 13h-10',
      CompositePart([
        DrawPart(
          fromEnd: true,
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
  ],
);

/// Projector: the light rays draw in, then the body bobs and swells.
const DynamicIconData kProjectorIcon = DynamicIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart(
      'M5 7 3 5',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 400), curve: Curves.easeOut),
        OpacityPart([0, 1], duration: Duration(milliseconds: 120)),
      ]),
    ),
    IconPart(
      'M9 6V3',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 400), curve: Curves.easeOut),
        OpacityPart([0, 1], duration: Duration(milliseconds: 120)),
      ]),
    ),
    IconPart(
      'm13 7 2-2',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 400), curve: Curves.easeOut),
        OpacityPart([0, 1], duration: Duration(milliseconds: 120)),
      ]),
    ),
    IconPart.group(
      [
        'M6 13a3 3 0 1 0 6 0 3 3 0 1 0 -6 0',
        'M11.83 12H20a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-4a2 2 0 0 1 2-2h2.17',
        'M16 16h2',
      ],
      CompositePart([
        ScalePart([1, 1.08, 1], pivot: kViewBoxCenter),
        TranslatePart([Offset.zero, Offset(0, -1), Offset.zero]),
      ]),
    ),
  ],
);

/// Rabbit that twitches: the whole glyph wiggles and hops in place.
const DynamicIconData kRabbitIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart.group(
      [
        'M18 21h-8a4 4 0 0 1-4-4 7 7 0 0 1 7-7h.2L9.6 6.4a1 1 0 1 1 2.8-2.8L15.8 7h.2c3.3 0 6 2.7 6 6v1a2 2 0 0 1-2 2h-1a3 3 0 0 0-3 3',
        'M13 16a3 3 0 0 1 2.24 5',
        'M18 12h.01',
        'M20 8.54V4a2 2 0 1 0-4 0v3',
        'M7.612 12.524a3 3 0 1 0-1.6 4.3',
      ],
      CompositePart([
        RotatePart([0, 5, -5, 3, -3, 0], pivot: kViewBoxCenter),
        TranslatePart([
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
const DynamicIconData kRadioTowerIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M4.9 16.1C1 12.2 1 5.8 4.9 1.9',
      OpacityPart([0, 1], delay: Duration(milliseconds: 100), curve: _rayEase),
    ),
    IconPart(
      'M7.8 4.7a6.14 6.14 0 0 0-.8 7.5',
      OpacityPart([0, 1], curve: _rayEase),
    ),
    IconPart('M10 9a2 2 0 1 0 4 0 2 2 0 1 0 -4 0'),
    IconPart(
      'M16.2 4.8c2 2 2.26 5.11.8 7.47',
      OpacityPart([0, 1], curve: _rayEase),
    ),
    IconPart(
      'M19.1 1.9a9.96 9.96 0 0 1 0 14.1',
      OpacityPart([0, 1], delay: Duration(milliseconds: 100), curve: _rayEase),
    ),
    IconPart('M9.5 18h5'),
    IconPart('m8 22 4-11 4 11'),
  ],
);

/// Receipt with a dollar sign that draws itself on.
const DynamicIconData kReceiptIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M12 17V7',
      CompositePart([
        DrawPart(
          fromEnd: true,
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
    IconPart(
      'M16 8h-6a2 2 0 0 0 0 4h4a2 2 0 0 1 0 4H8',
      CompositePart([DrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    IconPart(
      'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z',
    ),
  ],
);

/// Receipt with a cent sign that draws itself on.
const DynamicIconData kReceiptCentIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M12 7v10',
      CompositePart([
        DrawPart(
          fromEnd: true,
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
    IconPart(
      'M14.828 14.829a4 4 0 0 1-5.656 0 4 4 0 0 1 0-5.657 4 4 0 0 1 5.656 0',
      CompositePart([DrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    IconPart(
      'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z',
    ),
  ],
);

/// Receipt with a euro sign that draws itself on.
const DynamicIconData kReceiptEuroIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M15.828 14.829a4 4 0 0 1-5.656 0 4 4 0 0 1 0-5.657 4 4 0 0 1 5.656 0',
      CompositePart([DrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    IconPart(
      'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z',
    ),
    IconPart(
      'M8 12h5',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
  ],
);

/// Receipt with an Indian rupee sign that draws itself on.
const DynamicIconData kReceiptIndianRupeeIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z',
    ),
    IconPart(
      'M8 11h8',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
    IconPart(
      'M8 7h8',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
    IconPart(
      'M9 7a4 4 0 0 1 0 8H8l3 2',
      CompositePart([DrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
  ],
);

/// Receipt with a Japanese yen sign that draws itself on.
const DynamicIconData kReceiptJapaneseYenIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'm12 10 3-3',
      CompositePart([DrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    IconPart(
      'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z',
    ),
    IconPart(
      'M9 11h6',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
    IconPart(
      'M9 15h6',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
    IconPart(
      'm9 7 3 3v7',
      CompositePart([DrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
  ],
);

/// Receipt with a pound sterling sign that draws itself on.
const DynamicIconData kReceiptPoundSterlingIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M10 17V9.5a1 1 0 0 1 5 0',
      CompositePart([DrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    IconPart(
      'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z',
    ),
    IconPart(
      'M8 13h5',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
    IconPart(
      'M8 17h7',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
  ],
);

/// Receipt with a Russian ruble sign that draws itself on.
const DynamicIconData kReceiptRussianRubleIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z',
    ),
    IconPart(
      'M8 11h5a2 2 0 0 0 0-4h-3v10',
      CompositePart([DrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    IconPart(
      'M8 15h5',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
  ],
);

/// Receipt with a Swiss franc sign that draws itself on.
const DynamicIconData kReceiptSwissFrancIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M10 11h4',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
    IconPart(
      'M10 17V7h5',
      CompositePart([DrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    IconPart(
      'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z',
    ),
    IconPart(
      'M8 15h5',
      CompositePart([
        DrawPart(
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
  ],
);

/// Receipt with text lines that draw in one after another.
const DynamicIconData kReceiptTextIcon = DynamicIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart(
      'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z',
    ),
    IconPart('M8 8H14', DrawPart(duration: Duration(milliseconds: 350))),
    IconPart(
      'M8 12H16',
      DrawPart(
        delay: Duration(milliseconds: 100),
        duration: Duration(milliseconds: 350),
      ),
    ),
    IconPart(
      'M8 16H13',
      DrawPart(
        delay: Duration(milliseconds: 200),
        duration: Duration(milliseconds: 350),
      ),
    ),
  ],
);

/// Receipt with a Turkish lira sign that draws itself on.
const DynamicIconData kReceiptTurkishLiraIcon = DynamicIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M10 7v10a5 5 0 0 0 5-5',
      CompositePart([DrawPart(duration: Duration(milliseconds: 540)), _fadeIn]),
    ),
    IconPart(
      'm14 8-6 3',
      CompositePart([
        DrawPart(
          fromEnd: true,
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 360),
        ),
        OpacityPart(
          [0, 1],
          delay: Duration(milliseconds: 450),
          duration: Duration(milliseconds: 90),
        ),
      ]),
    ),
    IconPart(
      'M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z',
    ),
  ],
);

const _redoEase = Cubic(0.25, 0.1, 0.25, 1);

/// Redo: the arrow head lifts and tips back while the arc flexes.
const DynamicIconData kRedoIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M21 7v6h-6',
      CompositePart([
        TranslatePart([
          Offset.zero,
          Offset(-2.1, -1.4),
          Offset.zero,
        ], curve: _redoEase),
        RotatePart([0, -12, 0], curve: _redoEase),
      ]),
    ),
    IconPart(
      'M3 17a9 9 0 0 1 9-9 9 9 0 0 1 6 2.3l3 2.7',
      ScalePart([1, 0.8, 1], pivot: kViewBoxCenter, curve: _redoEase),
    ),
  ],
);

/// Redo with a dot: arrow head tips back, arc flexes, dot pulses.
const DynamicIconData kRedoDotIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M21 7v6h-6',
      CompositePart([
        TranslatePart([
          Offset.zero,
          Offset(-2.1, -1.4),
          Offset.zero,
        ], curve: _redoEase),
        RotatePart([0, -12, 0], curve: _redoEase),
      ]),
    ),
    IconPart(
      'M3 17a9 9 0 0 1 9-9 9 9 0 0 1 6 2.3l3 2.7',
      ScalePart([1, 0.8, 1], pivot: kViewBoxCenter, curve: _redoEase),
    ),
    IconPart(
      'M11 17a1 1 0 1 0 2 0 1 1 0 1 0 -2 0',
      ScalePart([1, 1.2, 1], curve: _redoEase),
    ),
  ],
);

const _refreshSpring = SpringCurve(stiffness: 250, damping: 25);

/// Counter-clockwise refresh; springs a -50° tilt.
const DynamicIconData kRefreshCcwIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart.group([
      'M3 2v6h6',
      'M21 12A9 9 0 0 0 6 5.3L3 8',
      'M21 22v-6h-6',
      'M3 12a9 9 0 0 0 15 6.7l3-2.7',
    ], RotatePart([0, -50], pivot: kViewBoxCenter, curve: _refreshSpring)),
  ],
);

/// Counter-clockwise refresh with a centre dot; arrows spring a -50° tilt.
const DynamicIconData kRefreshCcwDotIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart.group([
      'M3 2v6h6',
      'M21 12A9 9 0 0 0 6 5.3L3 8',
      'M21 22v-6h-6',
      'M3 12a9 9 0 0 0 15 6.7l3-2.7',
    ], RotatePart([0, -50], pivot: kViewBoxCenter, curve: _refreshSpring)),
    IconPart('M11 12a1 1 0 1 0 2 0 1 1 0 1 0 -2 0'),
  ],
);

/// Refresh (disabled): the whole glyph shakes side to side.
const DynamicIconData kRefreshCwOffIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart.group(
      [
        'M21 8L18.74 5.74A9.75 9.75 0 0 0 12 3C11 3 10.03 3.16 9.13 3.47',
        'M8 16H3v5',
        'M3 12C3 9.51 4 7.26 5.64 5.64',
        'm3 16 2.26 2.26A9.75 9.75 0 0 0 12 21c2.49 0 4.74-1 6.36-2.64',
        'M21 12c0 1-.16 1.97-.47 2.87',
        'M21 3v5h-5',
        'M22 22 2 2',
      ],
      TranslatePart([
        Offset(-3, 0),
        Offset(3, 0),
        Offset(-3, 0),
        Offset(3, 0),
        Offset.zero,
      ], curve: SpringCurve(stiffness: 500, damping: 20)),
    ),
  ],
);

/// Rocket that hovers and bobs while its exhaust flickers (loops while active).
const DynamicIconData kRocketIcon = DynamicIconData(
  duration: Duration(milliseconds: 1500),
  repeats: true,
  parts: [
    IconPart.group(
      [
        'm12 15-3-3a22 22 0 0 1 2-3.95A12.88 12.88 0 0 1 22 2c0 2.72-.78 7.5-6 11a22.35 22.35 0 0 1-4 2z',
        'M9 12H4s.55-3.03 2-4c1.62-1.08 5 0 5 0',
        'M12 15v5s3.03-.55 4-2c1.08-1.62 0-5 0-5',
      ],
      TranslatePart([
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
    IconPart(
      'M4.5 16.5c-1.5 1.26-2 5-2 5s3.74-.5 5-2c.71-.84.7-2.13-.09-2.91a2.18 2.18 0 0 0-2.91-.09z',
      ScalePart([1, 1.2, 0.9, 1.1, 1], pivot: Offset(4.5, 21)),
    ),
  ],
);

const List<IconEntry> gen16Icons = [
  IconEntry('pound-sterling', kPoundSterlingIcon, [
    'pound',
    'sterling',
    'currency',
    'money',
    'gbp',
  ]),
  IconEntry('projector', kProjectorIcon, [
    'projector',
    'presentation',
    'beamer',
  ]),
  IconEntry('rabbit', kRabbitIcon, ['rabbit', 'bunny', 'animal', 'fast']),
  IconEntry('radio-tower', kRadioTowerIcon, [
    'radio',
    'tower',
    'signal',
    'broadcast',
    'antenna',
  ]),
  IconEntry('receipt', kReceiptIcon, [
    'receipt',
    'bill',
    'invoice',
    'dollar',
    'payment',
  ]),
  IconEntry('receipt-cent', kReceiptCentIcon, [
    'receipt',
    'cent',
    'currency',
    'invoice',
    'bill',
  ]),
  IconEntry('receipt-euro', kReceiptEuroIcon, [
    'receipt',
    'euro',
    'currency',
    'invoice',
    'bill',
  ]),
  IconEntry('receipt-indian-rupee', kReceiptIndianRupeeIcon, [
    'receipt',
    'rupee',
    'indian',
    'currency',
    'invoice',
  ]),
  IconEntry('receipt-japanese-yen', kReceiptJapaneseYenIcon, [
    'receipt',
    'yen',
    'japanese',
    'currency',
    'invoice',
  ]),
  IconEntry('receipt-pound-sterling', kReceiptPoundSterlingIcon, [
    'receipt',
    'pound',
    'sterling',
    'currency',
    'invoice',
  ]),
  IconEntry('receipt-russian-ruble', kReceiptRussianRubleIcon, [
    'receipt',
    'ruble',
    'russian',
    'currency',
    'invoice',
  ]),
  IconEntry('receipt-swiss-franc', kReceiptSwissFrancIcon, [
    'receipt',
    'franc',
    'swiss',
    'currency',
    'invoice',
  ]),
  IconEntry('receipt-text', kReceiptTextIcon, [
    'receipt',
    'text',
    'lines',
    'invoice',
    'bill',
  ]),
  IconEntry('receipt-turkish-lira', kReceiptTurkishLiraIcon, [
    'receipt',
    'lira',
    'turkish',
    'currency',
    'invoice',
  ]),
  IconEntry('redo', kRedoIcon, ['redo', 'arrow', 'forward', 'repeat']),
  IconEntry('redo-dot', kRedoDotIcon, [
    'redo',
    'dot',
    'arrow',
    'forward',
    'repeat',
  ]),
  IconEntry('refresh-ccw', kRefreshCcwIcon, [
    'refresh',
    'reload',
    'sync',
    'counterclockwise',
    'rotate',
  ]),
  IconEntry('refresh-ccw-dot', kRefreshCcwDotIcon, [
    'refresh',
    'reload',
    'sync',
    'dot',
    'rotate',
  ]),
  IconEntry('refresh-cw-off', kRefreshCwOffIcon, [
    'refresh',
    'reload',
    'sync',
    'off',
    'disabled',
  ]),
  IconEntry('rocket', kRocketIcon, [
    'rocket',
    'launch',
    'ship',
    'startup',
    'space',
  ]),
];
