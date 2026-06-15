import 'package:flutter/widgets.dart';

import '../core/core.dart';

/// Path-draw family — strokes that draw themselves on. Path data: Lucide (ISC).
/// Animation params: pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _fadeIn = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Heartbeat line that draws itself.
const DynamicLucideIconData kActivityIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M22 12h-2.48a2 2 0 0 0-1.93 1.46l-2.35 8.36a.25.25 0 0 1-.48 0L9.24 2.18a.25.25 0 0 0-.48 0l-2.35 8.36A2 2 0 0 1 4.49 12H2',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
  ],
);

/// Lightning bolt that draws itself.
const DynamicLucideIconData kZapIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M4 14a1 1 0 0 1-.78-1.63l9.9-10.2a.5.5 0 0 1 .86.46l-1.92 6.02A1 1 0 0 0 13 10h7a1 1 0 0 1 .78 1.63l-9.9 10.2a.5.5 0 0 1-.86-.46l1.92-6.02A1 1 0 0 0 11 14z',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
  ],
);

/// Single check that draws on with a slight pop.
const DynamicLucideIconData kCheckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M4 12 9 17L20 6',
      DynamicCompositePart([DynamicDrawPart(), DynamicScalePart([0.5, 1]), _fadeIn]),
    ),
  ],
);

/// Double check — second tick draws after the first.
const DynamicLucideIconData kCheckCheckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M2 12 7 17L18 6',
      DynamicCompositePart([DynamicDrawPart(), DynamicScalePart([0.5, 1]), _fadeIn]),
    ),
    DynamicIconPart(
      'M13 16L14.5 17.5L22 10',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 100)),
        DynamicScalePart([0.5, 1], delay: Duration(milliseconds: 100)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Heart with a pulse line: the line draws, then the heart draws.
const DynamicLucideIconData kHeartPulseIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1100),
  parts: [
    DynamicIconPart(
      'M3.22 13H9.5l.5-1 2 4.5 2-7 1.5 3.5h5.27',
      DynamicDrawPart(duration: Duration(milliseconds: 600)),
    ),
    DynamicIconPart(
      'M2 9.5a5.5 5.5 0 0 1 9.591-3.676.56.56 0 0 0 .818 0A5.49 5.49 0 0 1 22 9.5c0 2.29-1.5 4-3 5.5l-5.492 5.313a2 2 0 0 1-3 .019L5 15c-1.5-1.5-3-3.2-3-5.5',
      DynamicDrawPart(
        delay: Duration(milliseconds: 600),
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOut,
      ),
    ),
  ],
);

/// Trending-up: the trend line draws, the arrow head follows, all riding a
/// small up-right bounce.
const DynamicLucideIconData kTrendingUpIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M22 7 13.5 15.5 8.5 10.5 2 17',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 400)),
        DynamicTranslatePart([Offset.zero, Offset(2, -2), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
    DynamicIconPart(
      'M16 7 22 7 22 13',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        DynamicTranslatePart([Offset.zero, Offset(2, -2), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
  ],
);

/// Square-pen: the box stays put while the pen does a tiny scribble wiggle.
const DynamicLucideIconData kSquarePenIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart('M12 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7'),
    DynamicIconPart(
      'M18.375 2.625a1 1 0 0 1 3 3l-9.013 9.014a2 2 0 0 1-.853.505l-2.873.84a.5.5 0 0 1-.62-.62l.84-2.873a2 2 0 0 1 .506-.852z',
      DynamicCompositePart([
        DynamicRotatePart([-0.5, 0.5, -0.5]),
        DynamicTranslatePart([
          Offset.zero,
          Offset(-1, 1.5),
          Offset(1.5, -1),
          Offset.zero,
        ]),
      ]),
    ),
  ],
);

/// Close (X) — the two strokes draw on, one after the other.
const DynamicLucideIconData kXIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M18 6 6 18',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
    DynamicIconPart(
      'm6 6 12 12',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 200)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);
