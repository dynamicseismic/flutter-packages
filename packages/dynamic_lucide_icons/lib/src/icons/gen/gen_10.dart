import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 10. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _fadeIn = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100));

/// Folder with a minus that draws itself in.
const DynamicLucideIconData kFolderMinusIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 400),
  parts: [
    DynamicIconPart(
      'M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z',
    ),
    DynamicIconPart(
      'M9 13h6',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
  ],
);

/// Open folder that wobbles (whole-icon rotate `[0,-8,6,-4,0]°`).
const DynamicLucideIconData kFolderOpenIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'm6 14 1.5-2.9A2 2 0 0 1 9.24 10H20a2 2 0 0 1 1.94 2.5l-1.54 6a2 2 0 0 1-1.95 1.5H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H18a2 2 0 0 1 2 2v2',
      DynamicRotatePart([0, -8, 6, -4, 0], pivot: kViewBoxCenter),
    ),
  ],
);

/// Folder with an arrow that nudges left (out).
const DynamicLucideIconData kFolderOutputIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M2 7.5V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H20a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-1.5',
    ),
    DynamicIconPart.group(
      ['M2 13h10', 'm5 10-3 3 3 3'],
      DynamicTranslatePart([Offset.zero, Offset(-2, 0), Offset.zero]),
    ),
  ],
);

/// Folder with a plus that draws on (horizontal, then vertical).
const DynamicLucideIconData kFolderPlusIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z',
    ),
    DynamicIconPart(
      'M9 13h6',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
    DynamicIconPart(
      'M12 10v6',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 100)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Folder-root: the root marker pulses in opacity (loops while active).
const DynamicLucideIconData kFolderRootIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  repeats: true,
  parts: [
    DynamicIconPart(
      'M4 20h16a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.93a2 2 0 0 1-1.66-.9l-.82-1.2A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13c0 1.1.9 2 2 2Z',
    ),
    DynamicIconPart.group(
      ['M10 13a2 2 0 1 0 4 0a2 2 0 1 0 -4 0', 'M12 15v5'],
      DynamicOpacityPart([0.6, 1, 0.3, 0.6]),
    ),
  ],
);

/// Folder-sync: the sync arrows spin a full counter-clockwise turn.
const DynamicLucideIconData kFolderSyncIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1200),
  parts: [
    DynamicIconPart(
      'M9 20H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H20a2 2 0 0 1 2 2v.5',
    ),
    DynamicIconPart.group(
      [
        'M12 10v4h4',
        'm12 14 1.535-1.605a5 5 0 0 1 8 1.5',
        'M22 22v-4h-4',
        'm22 18-1.535 1.605a5 5 0 0 1-8-1.5',
      ],
      DynamicRotatePart([0, -360]),
    ),
  ],
);

/// Folder-tree: panels and branches draw on, cascading.
const DynamicLucideIconData kFolderTreeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1300),
  parts: [
    DynamicIconPart(
      'M20 10a1 1 0 0 0 1-1V6a1 1 0 0 0-1-1h-2.5a1 1 0 0 1-.8-.4l-.9-1.2A1 1 0 0 0 15 3h-2a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1Z',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 350)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M3 5a2 2 0 0 0 2 2h3',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 350)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M20 21a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1h-2.9a1 1 0 0 1-.88-.55l-.42-.85a1 1 0 0 0-.92-.6H13a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1Z',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 800),
            duration: Duration(milliseconds: 350)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 800),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M3 3v13a2 2 0 0 0 2 2h3',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 1150),
            duration: Duration(milliseconds: 350)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 1150),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Folder with an arrow that nudges up.
const DynamicLucideIconData kFolderUpIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z',
    ),
    DynamicIconPart.group(
      ['M12 10v6', 'm9 13 3-3 3 3'],
      DynamicTranslatePart([Offset.zero, Offset(0, -2), Offset.zero]),
    ),
  ],
);

/// Folder with an X that draws on, stroke by stroke.
const DynamicLucideIconData kFolderXIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z',
    ),
    DynamicIconPart(
      'm9.5 10.5 5 5',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
    DynamicIconPart(
      'm14.5 10.5-5 5',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 200)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Stacked folders: the front folder slides down-left while the back one
/// drifts up-right and fades.
const DynamicLucideIconData kFoldersIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M2 8v11a2 2 0 0 0 2 2h14',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(2, -2)],
            curve: DynamicSpringCurve(stiffness: 250, damping: 25)),
        DynamicScalePart([1, 0.9], curve: DynamicSpringCurve(stiffness: 250, damping: 25)),
        DynamicOpacityPart([1, 0], curve: DynamicSpringCurve(stiffness: 250, damping: 25)),
      ]),
    ),
    DynamicIconPart(
      'M20 17a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-3.9a2 2 0 0 1-1.69-.9l-.81-1.2a2 2 0 0 0-1.67-.9H8a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2Z',
      DynamicTranslatePart([Offset.zero, Offset(-2, 2)],
          curve: DynamicSpringCurve(stiffness: 250, damping: 25)),
    ),
  ],
);

/// Frame: the four sides spring outward.
const DynamicLucideIconData kFrameIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M22 6 L2 6',
      DynamicTranslatePart([Offset.zero, Offset(0, -4)],
          curve: DynamicSpringCurve(stiffness: 160, damping: 17)),
    ),
    DynamicIconPart(
      'M22 18 L2 18',
      DynamicTranslatePart([Offset.zero, Offset(0, 4)],
          curve: DynamicSpringCurve(stiffness: 160, damping: 17)),
    ),
    DynamicIconPart(
      'M6 2 L6 22',
      DynamicTranslatePart([Offset.zero, Offset(-4, 0)],
          curve: DynamicSpringCurve(stiffness: 160, damping: 17)),
    ),
    DynamicIconPart(
      'M18 2 L18 22',
      DynamicTranslatePart([Offset.zero, Offset(4, 0)],
          curve: DynamicSpringCurve(stiffness: 160, damping: 17)),
    ),
  ],
);

/// Frown face that scales and tilts; the eyes twinkle.
const DynamicLucideIconData kFrownIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart.group(
      [
        'M2 12a10 10 0 1 0 20 0a10 10 0 1 0 -20 0',
        'M16 16s-1.5-2-4-2-4 2-4 2',
      ],
      DynamicCompositePart([
        DynamicScalePart([1, 1.15, 1.05, 1.08], pivot: kViewBoxCenter),
        DynamicRotatePart([0, -2, 2, 0], pivot: kViewBoxCenter),
      ]),
    ),
    DynamicIconPart(
      'M9 9 L9.01 9',
      DynamicCompositePart([
        DynamicScalePart([1, 1.3, 0.9, 1.1]),
        DynamicTranslatePart(
            [Offset.zero, Offset(0, -0.5), Offset(0, 0.3), Offset.zero]),
      ]),
    ),
    DynamicIconPart(
      'M15 9 L15.01 9',
      DynamicCompositePart([
        DynamicScalePart([1, 0.9, 1.3, 1.1]),
        DynamicTranslatePart(
            [Offset.zero, Offset(0, -0.5), Offset(0, 0.3), Offset.zero]),
      ]),
    ),
  ],
);

/// Gallery (horizontal end): back cards slide in and fade, front card static.
const DynamicLucideIconData kGalleryHorizontalEndIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart(
      'M6 5v14',
      DynamicCompositePart([
        DynamicTranslatePart([Offset(4, 0), Offset.zero]),
        DynamicOpacityPart([0, 1]),
      ]),
    ),
    DynamicIconPart(
      'M2 7v10',
      DynamicCompositePart([
        DynamicTranslatePart([Offset(2, 0), Offset.zero],
            delay: Duration(milliseconds: 250)),
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 250)),
      ]),
    ),
    DynamicIconPart(
      'M12 3h8a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-8a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2z',
    ),
  ],
);

/// Gallery thumbnails: the thumbnails light up one by one.
const DynamicLucideIconData kGalleryThumbnailsIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart(
      'M5 3h14a2 2 0 0 1 2 2v10a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-10a2 2 0 0 1 2 -2z',
    ),
    DynamicIconPart('M4 21h1',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 150),
            duration: Duration(milliseconds: 200))),
    DynamicIconPart('M9 21h1',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 200))),
    DynamicIconPart('M14 21h1',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 450),
            duration: Duration(milliseconds: 200))),
    DynamicIconPart('M19 21h1',
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 600),
            duration: Duration(milliseconds: 200))),
  ],
);

/// Gallery (vertical end): back cards slide in and fade, front card static.
const DynamicLucideIconData kGalleryVerticalEndIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart(
      'M7 2h10',
      DynamicCompositePart([
        DynamicTranslatePart([Offset(0, 2), Offset.zero],
            delay: Duration(milliseconds: 250)),
        DynamicOpacityPart([0, 1], delay: Duration(milliseconds: 250)),
      ]),
    ),
    DynamicIconPart(
      'M5 6h14',
      DynamicCompositePart([
        DynamicTranslatePart([Offset(0, 4), Offset.zero]),
        DynamicOpacityPart([0, 1]),
      ]),
    ),
    DynamicIconPart(
      'M5 10h14a2 2 0 0 1 2 2v8a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-8a2 2 0 0 1 2 -2z',
    ),
  ],
);

/// Gauge whose needle swings up and to the right (spring).
const DynamicLucideIconData kGaugeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M3.34 19a10 10 0 1 1 17.32 0'),
    DynamicIconPart(
      'm12 14 4-4',
      DynamicCompositePart([
        DynamicRotatePart([0, 72], curve: DynamicSpringCurve(stiffness: 160, damping: 17)),
        DynamicTranslatePart([Offset.zero, Offset(0.5, 3)],
            curve: DynamicSpringCurve(stiffness: 160, damping: 17)),
      ]),
    ),
  ],
);

/// Gavel that swings as if striking (whole-icon rotate `[0,-20,25,0]°`,
/// pivoting on its handle base).
const DynamicLucideIconData kGavelIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart.group(
      [
        'm14 13-8.381 8.38a1 1 0 0 1-3.001-3l8.384-8.381',
        'm16 16 6-6',
        'm21.5 10.5-8-8',
        'm8 8 6-6',
        'm8.5 7.5 8 8',
      ],
      DynamicRotatePart([0, -20, 25, 0], pivot: Offset(2, 22)),
    ),
  ],
);

/// Georgian lari: the curve and base draw first, then the two uprights.
const DynamicLucideIconData kGeorgianLariIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M11.5 21a7.5 7.5 0 1 1 7.35-9',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 600)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M4 21h16',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 600)),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M9 12V3',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M13 12V3',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Git-branch: the nodes and connecting branch draw on in sequence.
const DynamicLucideIconData kGitBranchIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart(
      'M15 6a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M6 3 L6 15',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M18 9a9 9 0 0 1-9 9',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M3 18a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      DynamicCompositePart([
        DynamicDrawPart(
            delay: Duration(milliseconds: 700),
            duration: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 700),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Git-commit (horizontal): the line and node draw on, centre outward.
const DynamicLucideIconData kGitCommitHorizontalIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart(
      'M3 12 L9 12',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
    DynamicIconPart(
      'M9 12a3 3 0 1 0 6 0a3 3 0 1 0 -6 0',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 150)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    DynamicIconPart(
      'M15 12 L21 12',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 300)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

const List<DynamicLucideIconEntry> gen10Icons = [
  DynamicLucideIconEntry('folder-minus', kFolderMinusIcon, ['folder', 'minus', 'remove']),
  DynamicLucideIconEntry('folder-open', kFolderOpenIcon, ['folder', 'open', 'directory']),
  DynamicLucideIconEntry('folder-output', kFolderOutputIcon, ['folder', 'output', 'export']),
  DynamicLucideIconEntry('folder-plus', kFolderPlusIcon, ['folder', 'plus', 'add', 'new']),
  DynamicLucideIconEntry('folder-root', kFolderRootIcon, ['folder', 'root', 'home']),
  DynamicLucideIconEntry('folder-sync', kFolderSyncIcon, ['folder', 'sync', 'refresh']),
  DynamicLucideIconEntry('folder-tree', kFolderTreeIcon, ['folder', 'tree', 'hierarchy']),
  DynamicLucideIconEntry('folder-up', kFolderUpIcon, ['folder', 'up', 'upload']),
  DynamicLucideIconEntry('folder-x', kFolderXIcon, ['folder', 'x', 'close', 'delete']),
  DynamicLucideIconEntry('folders', kFoldersIcon, ['folders', 'copy', 'directories']),
  DynamicLucideIconEntry('frame', kFrameIcon, ['frame', 'border', 'crop']),
  DynamicLucideIconEntry('frown', kFrownIcon, ['frown', 'sad', 'emoji', 'face']),
  DynamicLucideIconEntry('gallery-horizontal-end', kGalleryHorizontalEndIcon,
      ['gallery', 'horizontal', 'carousel', 'images']),
  DynamicLucideIconEntry('gallery-thumbnails', kGalleryThumbnailsIcon,
      ['gallery', 'thumbnails', 'images', 'grid']),
  DynamicLucideIconEntry('gallery-vertical-end', kGalleryVerticalEndIcon,
      ['gallery', 'vertical', 'carousel', 'images']),
  DynamicLucideIconEntry('gauge', kGaugeIcon, ['gauge', 'speed', 'meter', 'dashboard']),
  DynamicLucideIconEntry('gavel', kGavelIcon, ['gavel', 'judge', 'law', 'auction']),
  DynamicLucideIconEntry('georgian-lari', kGeorgianLariIcon,
      ['lari', 'currency', 'georgia', 'money']),
  DynamicLucideIconEntry('git-branch', kGitBranchIcon, ['git', 'branch', 'version', 'vcs']),
  DynamicLucideIconEntry('git-commit-horizontal', kGitCommitHorizontalIcon,
      ['git', 'commit', 'version', 'vcs']),
];
