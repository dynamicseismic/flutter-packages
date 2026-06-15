import 'package:flutter/widgets.dart';

import '../core/core.dart';

/// Scale / pulse family. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

/// Heart that gives a gentle pulse.
const LucideIconData kHeartIcon = LucideIconData(
  duration: Duration(milliseconds: 450),
  parts: [
    IconPart(
      'M19 14c1.49-1.46 3-3.21 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.76 0-3 .5-4.5 2-1.5-1.5-2.74-2-4.5-2A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4.05 3 5.5l7 7Z',
      ScalePart([1, 1.08, 1], pivot: kViewBoxCenter),
    ),
  ],
);

/// Sparkle that bobs and swells while the little stars twinkle.
const LucideIconData kSparklesIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart(
      'M9.937 15.5A2 2 0 0 0 8.5 14.063l-6.135-1.582a.5.5 0 0 1 0-.962L8.5 9.936A2 2 0 0 0 9.937 8.5l1.582-6.135a.5.5 0 0 1 .963 0L14.063 8.5A2 2 0 0 0 15.5 9.937l6.135 1.581a.5.5 0 0 1 0 .964L15.5 14.063a2 2 0 0 0-1.437 1.437l-1.582 6.135a.5.5 0 0 1-.963 0z',
      CompositePart([
        ScalePart([1, 1.08, 1]),
        TranslatePart([Offset.zero, Offset(0, -1), Offset.zero]),
      ]),
    ),
    IconPart.group(
      ['M20 3v4', 'M22 5h-4'],
      OpacityPart([1, 0, 1], delay: Duration(milliseconds: 400)),
    ),
    IconPart.group(
      ['M4 17v2', 'M5 18H3'],
      OpacityPart([1, 0, 1], delay: Duration(milliseconds: 550)),
    ),
  ],
);

/// Search lens that hops up and to the side.
const LucideIconData kSearchIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart.group(
      ['M3 11a8 8 0 1 0 16 0 8 8 0 1 0 -16 0', 'm21 21-4.3-4.3'],
      TranslatePart([
        Offset.zero,
        Offset(0, -4),
        Offset(-3, 0),
        Offset.zero,
      ]),
    ),
  ],
);

/// Bookmark with a squash-and-stretch wobble.
const LucideIconData kBookmarkIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'm19 21-7-4-7 4V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v16z',
      CompositePart([
        ScalePart([1, 1.3, 0.9, 1.05, 1],
            axis: ScaleAxis.vertical, curve: Curves.easeOut),
        ScalePart([1, 0.9, 1.1, 0.95, 1],
            axis: ScaleAxis.horizontal, curve: Curves.easeOut),
      ]),
    ),
  ],
);

/// Eye that blinks (lid squashes, pupil shrinks).
const LucideIconData kEyeIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0',
      CompositePart([
        ScalePart([1, 0.1, 1], axis: ScaleAxis.vertical, pivot: kViewBoxCenter),
        OpacityPart([1, 0.3, 1]),
      ]),
    ),
    IconPart(
      'M9 12a3 3 0 1 0 6 0 3 3 0 1 0 -6 0',
      CompositePart([
        ScalePart([1, 0.3, 1]),
        OpacityPart([1, 0.3, 1]),
      ]),
    ),
  ],
);

/// Battery with a lightning bolt that pulses (loops while active).
const LucideIconData kBatteryChargingIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  repeats: true,
  parts: [
    IconPart('M14.856 6H16a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2h-2.935'),
    IconPart('M22 14v-4'),
    IconPart('M5.14 18H4a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h2.936'),
    IconPart(
      'm11 7-3 5h4l-3 5',
      CompositePart([
        ScalePart([1, 1.2, 1], curve: Curves.easeInOut),
        OpacityPart([1, 0.8, 1], curve: Curves.easeInOut),
      ]),
    ),
  ],
);
