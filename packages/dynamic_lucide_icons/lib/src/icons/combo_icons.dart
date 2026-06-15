import 'package:flutter/widgets.dart';

import '../core/core.dart';

/// Multi-effect transforms. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

/// Lock that jiggles (rotate + scale wobble), as if rattling.
const DynamicLucideIconData kLockIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart.group(
      [
        'M5 11 h14 a2 2 0 0 1 2 2 v7 a2 2 0 0 1 -2 2 h-14 a2 2 0 0 1 -2 -2 v-7 a2 2 0 0 1 2 -2 z',
        'M7 11V7a5 5 0 0 1 10 0v4',
      ],
      DynamicCompositePart([
        DynamicRotatePart([-3, 1, -2, 0],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
        DynamicScalePart([0.95, 1.05, 0.98, 1],
            pivot: kViewBoxCenter, curve: Curves.fastOutSlowIn),
      ]),
    ),
  ],
);

const _menuSpring = DynamicSpringCurve(stiffness: 260, damping: 20);

/// Hamburger menu that morphs into an X.
const DynamicLucideIconData kMenuIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M4 6 20 6',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(0, 6)], curve: _menuSpring),
        DynamicRotatePart([0, 45], curve: _menuSpring),
      ]),
    ),
    DynamicIconPart('M4 12 20 12', DynamicOpacityPart([1, 0], curve: _menuSpring)),
    DynamicIconPart(
      'M4 18 20 18',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(0, -6)], curve: _menuSpring),
        DynamicRotatePart([0, -45], curve: _menuSpring),
      ]),
    ),
  ],
);
