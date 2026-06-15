import 'package:flutter/widgets.dart';

import '../core/core.dart';

/// Path-draw family — strokes that draw themselves on. Path data: Lucide (ISC).
/// Animation params: pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _fadeIn = OpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Heartbeat line that draws itself.
const LucideIconData kActivityIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M22 12h-2.48a2 2 0 0 0-1.93 1.46l-2.35 8.36a.25.25 0 0 1-.48 0L9.24 2.18a.25.25 0 0 0-.48 0l-2.35 8.36A2 2 0 0 1 4.49 12H2',
      CompositePart([DrawPart(), _fadeIn]),
    ),
  ],
);

/// Lightning bolt that draws itself.
const LucideIconData kZapIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M4 14a1 1 0 0 1-.78-1.63l9.9-10.2a.5.5 0 0 1 .86.46l-1.92 6.02A1 1 0 0 0 13 10h7a1 1 0 0 1 .78 1.63l-9.9 10.2a.5.5 0 0 1-.86-.46l1.92-6.02A1 1 0 0 0 11 14z',
      CompositePart([DrawPart(), _fadeIn]),
    ),
  ],
);

/// Single check that draws on with a slight pop.
const LucideIconData kCheckIcon = LucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M4 12 9 17L20 6',
      CompositePart([DrawPart(), ScalePart([0.5, 1]), _fadeIn]),
    ),
  ],
);

/// Double check — second tick draws after the first.
const LucideIconData kCheckCheckIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M2 12 7 17L18 6',
      CompositePart([DrawPart(), ScalePart([0.5, 1]), _fadeIn]),
    ),
    IconPart(
      'M13 16L14.5 17.5L22 10',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 100)),
        ScalePart([0.5, 1], delay: Duration(milliseconds: 100)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 100), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Heart with a pulse line: the line draws, then the heart draws.
const LucideIconData kHeartPulseIcon = LucideIconData(
  duration: Duration(milliseconds: 1100),
  parts: [
    IconPart(
      'M3.22 13H9.5l.5-1 2 4.5 2-7 1.5 3.5h5.27',
      DrawPart(duration: Duration(milliseconds: 600)),
    ),
    IconPart(
      'M2 9.5a5.5 5.5 0 0 1 9.591-3.676.56.56 0 0 0 .818 0A5.49 5.49 0 0 1 22 9.5c0 2.29-1.5 4-3 5.5l-5.492 5.313a2 2 0 0 1-3 .019L5 15c-1.5-1.5-3-3.2-3-5.5',
      DrawPart(
        delay: Duration(milliseconds: 600),
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOut,
      ),
    ),
  ],
);

/// Trending-up: the trend line draws, the arrow head follows, all riding a
/// small up-right bounce.
const LucideIconData kTrendingUpIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart(
      'M22 7 13.5 15.5 8.5 10.5 2 17',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 400)),
        TranslatePart([Offset.zero, Offset(2, -2), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
    IconPart(
      'M16 7 22 7 22 13',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 300)),
        TranslatePart([Offset.zero, Offset(2, -2), Offset.zero],
            duration: Duration(milliseconds: 500)),
      ]),
    ),
  ],
);

/// Square-pen: the box stays put while the pen does a tiny scribble wiggle.
const LucideIconData kSquarePenIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart('M12 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7'),
    IconPart(
      'M18.375 2.625a1 1 0 0 1 3 3l-9.013 9.014a2 2 0 0 1-.853.505l-2.873.84a.5.5 0 0 1-.62-.62l.84-2.873a2 2 0 0 1 .506-.852z',
      CompositePart([
        RotatePart([-0.5, 0.5, -0.5]),
        TranslatePart([
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
const LucideIconData kXIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M18 6 6 18',
      CompositePart([DrawPart(), _fadeIn]),
    ),
    IconPart(
      'm6 6 12 12',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 200)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);
