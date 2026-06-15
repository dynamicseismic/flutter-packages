import 'package:flutter/widgets.dart';

import '../core/core.dart';

/// Translate / spring-bob family. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

/// Download tray with an arrow that springs downward.
const DynamicLucideIconData kDownloadIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4'),
    DynamicIconPart.group(
      ['M7 10 12 15 17 10', 'M12 15 12 3'],
      DynamicTranslatePart(
        [Offset.zero, Offset(0, 2)],
        curve: DynamicSpringCurve(stiffness: 200, damping: 10),
      ),
    ),
  ],
);

/// Upload tray with an arrow that springs upward.
const DynamicLucideIconData kUploadIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4'),
    DynamicIconPart.group(
      ['M17 8 12 3 7 8', 'M12 3 12 15'],
      DynamicTranslatePart(
        [Offset.zero, Offset(0, -2)],
        curve: DynamicSpringCurve(stiffness: 200, damping: 10),
      ),
    ),
  ],
);

/// Down arrow: head bobs while the shaft retracts and extends.
const DynamicLucideIconData kArrowDownIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'm19 12-7 7-7-7',
      DynamicTranslatePart([Offset.zero, Offset(0, -3), Offset.zero]),
    ),
    DynamicIconPart(
      'M12 5v14',
      DynamicScalePart([1, 0.64, 1], axis: DynamicScaleAxis.vertical, pivot: Offset(12, 5)),
    ),
  ],
);

/// Right arrow: head slides while the shaft retracts and extends.
const DynamicLucideIconData kArrowRightIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M5 12h14',
      DynamicScalePart([1, 0.64, 1], axis: DynamicScaleAxis.horizontal, pivot: Offset(5, 12)),
    ),
    DynamicIconPart(
      'm12 5 7 7-7 7',
      DynamicTranslatePart([Offset.zero, Offset(-3, 0), Offset.zero]),
    ),
  ],
);

/// Paper plane that lifts off (translate up-right + shrink).
const DynamicLucideIconData kSendIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart.group(
      [
        'M14.536 21.686a.5.5 0 0 0 .937-.024l6.5-19a.496.496 0 0 0-.635-.635l-19 6.5a.5.5 0 0 0-.024.937l7.93 3.18a2 2 0 0 1 1.112 1.11z',
        'm21.854 2.147-10.94 10.939',
      ],
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(3, -3)]),
        DynamicScalePart([1, 0.8]),
      ]),
    ),
  ],
);

/// Chevron that nudges down and back.
const DynamicLucideIconData kChevronDownIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'm6 9 6 6 6-6',
      DynamicTranslatePart([Offset.zero, Offset(0, 2), Offset.zero]),
    ),
  ],
);

/// Log-out: door frame static; the arrow wiggles and drifts out.
const DynamicLucideIconData kLogoutIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart('M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4'),
    DynamicIconPart.group(
      ['M16 17 21 12 16 7', 'M21 12 9 12'],
      DynamicTranslatePart([Offset.zero, Offset(-3, 0), Offset(2, 0)]),
    ),
  ],
);

/// Corner-down-left arrow that stretches horizontally.
const DynamicLucideIconData kCornerDownLeftIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 450),
  parts: [
    DynamicIconPart.group(
      ['M4 15h12a4 4 0 0 0 4-4V4', 'm9 20-5-5 5-5'],
      DynamicCompositePart([
        DynamicScalePart([1, 1.15, 1],
            axis: DynamicScaleAxis.horizontal, pivot: kViewBoxCenter),
        DynamicTranslatePart([Offset.zero, Offset(-2, 0), Offset.zero]),
      ]),
    ),
  ],
);
