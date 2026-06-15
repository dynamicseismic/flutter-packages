import 'package:flutter/widgets.dart';

import '../core/core.dart';

/// Translate / spring-bob family. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See LICENSE.

/// Download tray with an arrow that springs downward.
const DynamicIconData kDownloadIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4'),
    IconPart.group(
      ['M7 10 12 15 17 10', 'M12 15 12 3'],
      TranslatePart([
        Offset.zero,
        Offset(0, 2),
      ], curve: SpringCurve(stiffness: 200, damping: 10)),
    ),
  ],
);

/// Upload tray with an arrow that springs upward.
const DynamicIconData kUploadIcon = DynamicIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4'),
    IconPart.group(
      ['M17 8 12 3 7 8', 'M12 3 12 15'],
      TranslatePart([
        Offset.zero,
        Offset(0, -2),
      ], curve: SpringCurve(stiffness: 200, damping: 10)),
    ),
  ],
);

/// Down arrow: head bobs while the shaft retracts and extends.
const DynamicIconData kArrowDownIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'm19 12-7 7-7-7',
      TranslatePart([Offset.zero, Offset(0, -3), Offset.zero]),
    ),
    IconPart(
      'M12 5v14',
      ScalePart([1, 0.64, 1], axis: ScaleAxis.vertical, pivot: Offset(12, 5)),
    ),
  ],
);

/// Right arrow: head slides while the shaft retracts and extends.
const DynamicIconData kArrowRightIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart(
      'M5 12h14',
      ScalePart([1, 0.64, 1], axis: ScaleAxis.horizontal, pivot: Offset(5, 12)),
    ),
    IconPart(
      'm12 5 7 7-7 7',
      TranslatePart([Offset.zero, Offset(-3, 0), Offset.zero]),
    ),
  ],
);

/// Paper plane that lifts off (translate up-right + shrink).
const DynamicIconData kSendIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart.group(
      [
        'M14.536 21.686a.5.5 0 0 0 .937-.024l6.5-19a.496.496 0 0 0-.635-.635l-19 6.5a.5.5 0 0 0-.024.937l7.93 3.18a2 2 0 0 1 1.112 1.11z',
        'm21.854 2.147-10.94 10.939',
      ],
      CompositePart([
        TranslatePart([Offset.zero, Offset(3, -3)]),
        ScalePart([1, 0.8]),
      ]),
    ),
  ],
);

/// Chevron that nudges down and back.
const DynamicIconData kChevronDownIcon = DynamicIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'm6 9 6 6 6-6',
      TranslatePart([Offset.zero, Offset(0, 2), Offset.zero]),
    ),
  ],
);

/// Log-out: door frame static; the arrow wiggles and drifts out.
const DynamicIconData kLogoutIcon = DynamicIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    IconPart('M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4'),
    IconPart.group([
      'M16 17 21 12 16 7',
      'M21 12 9 12',
    ], TranslatePart([Offset.zero, Offset(-3, 0), Offset(2, 0)])),
  ],
);

/// Corner-down-left arrow that stretches horizontally.
const DynamicIconData kCornerDownLeftIcon = DynamicIconData(
  duration: Duration(milliseconds: 450),
  parts: [
    IconPart.group(
      ['M4 15h12a4 4 0 0 0 4-4V4', 'm9 20-5-5 5-5'],
      CompositePart([
        ScalePart(
          [1, 1.15, 1],
          axis: ScaleAxis.horizontal,
          pivot: kViewBoxCenter,
        ),
        TranslatePart([Offset.zero, Offset(-2, 0), Offset.zero]),
      ]),
    ),
  ],
);
