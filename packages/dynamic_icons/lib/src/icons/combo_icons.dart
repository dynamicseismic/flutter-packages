import 'package:flutter/widgets.dart';

import '../core/core.dart';

/// Multi-effect transforms. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See LICENSE.

/// Lock that jiggles (rotate + scale wobble), as if rattling.
const DynamicIconData kLockIcon = DynamicIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart.group(
      [
        'M5 11 h14 a2 2 0 0 1 2 2 v7 a2 2 0 0 1 -2 2 h-14 a2 2 0 0 1 -2 -2 v-7 a2 2 0 0 1 2 -2 z',
        'M7 11V7a5 5 0 0 1 10 0v4',
      ],
      CompositePart([
        RotatePart(
          [-3, 1, -2, 0],
          pivot: kViewBoxCenter,
          curve: Curves.fastOutSlowIn,
        ),
        ScalePart(
          [0.95, 1.05, 0.98, 1],
          pivot: kViewBoxCenter,
          curve: Curves.fastOutSlowIn,
        ),
      ]),
    ),
  ],
);

const _menuSpring = SpringCurve(stiffness: 260, damping: 20);

/// Hamburger menu that morphs into an X.
const DynamicIconData kMenuIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M4 6 20 6',
      CompositePart([
        TranslatePart([Offset.zero, Offset(0, 6)], curve: _menuSpring),
        RotatePart([0, 45], curve: _menuSpring),
      ]),
    ),
    IconPart('M4 12 20 12', OpacityPart([1, 0], curve: _menuSpring)),
    IconPart(
      'M4 18 20 18',
      CompositePart([
        TranslatePart([Offset.zero, Offset(0, -6)], curve: _menuSpring),
        RotatePart([0, -45], curve: _menuSpring),
      ]),
    ),
  ],
);
