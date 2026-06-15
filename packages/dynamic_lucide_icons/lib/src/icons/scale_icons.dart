import 'package:flutter/widgets.dart';

import '../core/core.dart';

/// Scale / pulse family. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

/// Heart that gives a gentle pulse.
const DynamicLucideIconData kHeartIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 450),
  parts: [
    DynamicIconPart(
      'M19 14c1.49-1.46 3-3.21 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.76 0-3 .5-4.5 2-1.5-1.5-2.74-2-4.5-2A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4.05 3 5.5l7 7Z',
      DynamicScalePart([1, 1.08, 1], pivot: kViewBoxCenter),
    ),
  ],
);

/// Sparkle that bobs and swells while the little stars twinkle.
const DynamicLucideIconData kSparklesIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart(
      'M9.937 15.5A2 2 0 0 0 8.5 14.063l-6.135-1.582a.5.5 0 0 1 0-.962L8.5 9.936A2 2 0 0 0 9.937 8.5l1.582-6.135a.5.5 0 0 1 .963 0L14.063 8.5A2 2 0 0 0 15.5 9.937l6.135 1.581a.5.5 0 0 1 0 .964L15.5 14.063a2 2 0 0 0-1.437 1.437l-1.582 6.135a.5.5 0 0 1-.963 0z',
      DynamicCompositePart([
        DynamicScalePart([1, 1.08, 1]),
        DynamicTranslatePart([Offset.zero, Offset(0, -1), Offset.zero]),
      ]),
    ),
    DynamicIconPart.group(
      ['M20 3v4', 'M22 5h-4'],
      DynamicOpacityPart([1, 0, 1], delay: Duration(milliseconds: 400)),
    ),
    DynamicIconPart.group(
      ['M4 17v2', 'M5 18H3'],
      DynamicOpacityPart([1, 0, 1], delay: Duration(milliseconds: 550)),
    ),
  ],
);

/// Search lens that hops up and to the side.
const DynamicLucideIconData kSearchIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart.group(
      ['M3 11a8 8 0 1 0 16 0 8 8 0 1 0 -16 0', 'm21 21-4.3-4.3'],
      DynamicTranslatePart([
        Offset.zero,
        Offset(0, -4),
        Offset(-3, 0),
        Offset.zero,
      ]),
    ),
  ],
);

/// Bookmark with a squash-and-stretch wobble.
const DynamicLucideIconData kBookmarkIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'm19 21-7-4-7 4V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v16z',
      DynamicCompositePart([
        DynamicScalePart([1, 1.3, 0.9, 1.05, 1],
            axis: DynamicScaleAxis.vertical, curve: Curves.easeOut),
        DynamicScalePart([1, 0.9, 1.1, 0.95, 1],
            axis: DynamicScaleAxis.horizontal, curve: Curves.easeOut),
      ]),
    ),
  ],
);

/// Eye that blinks (lid squashes, pupil shrinks).
const DynamicLucideIconData kEyeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0',
      DynamicCompositePart([
        DynamicScalePart([1, 0.1, 1], axis: DynamicScaleAxis.vertical, pivot: kViewBoxCenter),
        DynamicOpacityPart([1, 0.3, 1]),
      ]),
    ),
    DynamicIconPart(
      'M9 12a3 3 0 1 0 6 0 3 3 0 1 0 -6 0',
      DynamicCompositePart([
        DynamicScalePart([1, 0.3, 1]),
        DynamicOpacityPart([1, 0.3, 1]),
      ]),
    ),
  ],
);

/// Battery with a lightning bolt that pulses (loops while active).
const DynamicLucideIconData kBatteryChargingIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  repeats: true,
  parts: [
    DynamicIconPart('M14.856 6H16a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2h-2.935'),
    DynamicIconPart('M22 14v-4'),
    DynamicIconPart('M5.14 18H4a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h2.936'),
    DynamicIconPart(
      'm11 7-3 5h4l-3 5',
      DynamicCompositePart([
        DynamicScalePart([1, 1.2, 1], curve: Curves.easeInOut),
        DynamicOpacityPart([1, 0.8, 1], curve: Curves.easeInOut),
      ]),
    ),
  ],
);
