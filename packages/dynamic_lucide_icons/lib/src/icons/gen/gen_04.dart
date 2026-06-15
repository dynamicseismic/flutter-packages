// Generated icon batch 04. Overwritten by the batch agent.
//
// Path data: Lucide (ISC). Animation params: pqoqubbw/icons (MIT).
// See ATTRIBUTION.md.
import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

const _fadeIn = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100));

// Shared bookmark squash-and-stretch wobble.
const _bookmarkSquash = DynamicCompositePart([
  DynamicScalePart([1, 1.3, 0.9, 1.05, 1],
      axis: DynamicScaleAxis.vertical, pivot: kViewBoxCenter, curve: Curves.easeOut),
  DynamicScalePart([1, 0.9, 1.1, 0.95, 1],
      axis: DynamicScaleAxis.horizontal, pivot: kViewBoxCenter, curve: Curves.easeOut),
]);

/// Open book that gives a little scale + side-to-side rotate nudge.
const DynamicLucideIconData kBookTextIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart.group(
      [
        'M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H19a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H6.5a1 1 0 0 1 0-5H20',
        'M8 11h8',
        'M8 7h6',
      ],
      DynamicCompositePart([
        DynamicScalePart([1, 1.04, 1], pivot: kViewBoxCenter),
        DynamicRotatePart([0, -8, 8, -8, 0], pivot: kViewBoxCenter),
        DynamicTranslatePart([Offset.zero, Offset(0, -2), Offset.zero]),
      ]),
    ),
  ],
);

/// Bookmark squashes while the check mark draws on.
const DynamicLucideIconData kBookmarkCheckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('m19 21-7-4-7 4V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2Z', _bookmarkSquash),
    DynamicIconPart(
      'm9 10 2 2 4-4',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 300)), _fadeIn]),
    ),
  ],
);

/// Bookmark squashes while the minus stroke draws on.
const DynamicLucideIconData kBookmarkMinusIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('m19 21-7-4-7 4V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v16z', _bookmarkSquash),
    DynamicIconPart(
      'M15 10L9 10',
      DynamicDrawPart(duration: Duration(milliseconds: 300)),
    ),
  ],
);

/// Bookmark squashes while the plus strokes draw on, one after the other.
const DynamicLucideIconData kBookmarkPlusIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart('m19 21-7-4-7 4V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v16z', _bookmarkSquash),
    DynamicIconPart(
      'M12 7L12 13',
      DynamicDrawPart(duration: Duration(milliseconds: 300)),
    ),
    DynamicIconPart(
      'M15 10L9 10',
      DynamicDrawPart(
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 300)),
    ),
  ],
);

/// Bookmark squashes while the X strokes draw on, one after the other.
const DynamicLucideIconData kBookmarkXIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart('m19 21-7-4-7 4V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2Z', _bookmarkSquash),
    DynamicIconPart(
      'm14.5 7.5-5 5',
      DynamicDrawPart(duration: Duration(milliseconds: 300)),
    ),
    DynamicIconPart(
      'm9.5 7.5 5 5',
      DynamicDrawPart(
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 300)),
    ),
  ],
);

/// Robot whose eyes blink (the two vertical strokes squash shut and reopen).
const DynamicLucideIconData kBotIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart('M12 8V4H8'),
    DynamicIconPart(
        'M6 8 h12 a2 2 0 0 1 2 2 v8 a2 2 0 0 1 -2 2 h-12 a2 2 0 0 1 -2 -2 v-8 a2 2 0 0 1 2 -2 z'),
    DynamicIconPart('M2 14h2'),
    DynamicIconPart('M20 14h2'),
    DynamicIconPart(
      'M15 13L15 15',
      DynamicScalePart([1, 0.1, 1],
          axis: DynamicScaleAxis.vertical,
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 350)),
    ),
    DynamicIconPart(
      'M9 13L9 15',
      DynamicScalePart([1, 0.1, 1],
          axis: DynamicScaleAxis.vertical,
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 350)),
    ),
  ],
);

/// Chat-bot speech bubble that wobbles while its eyes blink.
const DynamicLucideIconData kBotMessageSquareIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart.group(
      [
        'M12 6V2H8',
        'M2 12h2',
        'M20 12h2',
        'M20 16a2 2 0 0 1-2 2H8.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 4 20.286V8a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2z',
      ],
      DynamicCompositePart([
        DynamicRotatePart([0, -3, 3, 0, 0], pivot: kViewBoxCenter),
        DynamicTranslatePart([Offset.zero, Offset(0, 1.5), Offset(0, -1.5), Offset.zero]),
        DynamicScalePart([1, 1.03, 1], pivot: kViewBoxCenter),
      ]),
    ),
    DynamicIconPart(
      'M9 11v2',
      DynamicScalePart([1, 0.1, 1],
          axis: DynamicScaleAxis.vertical,
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 400)),
    ),
    DynamicIconPart(
      'M15 11v2',
      DynamicScalePart([1, 0.1, 1],
          axis: DynamicScaleAxis.vertical,
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 400)),
    ),
  ],
);

/// Box whose three faces draw themselves on.
const DynamicLucideIconData kBoxIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M21 8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16Z',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 400)), _fadeIn]),
    ),
    DynamicIconPart(
      'm3.3 7 8.7 5 8.7-5',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 400)), _fadeIn]),
    ),
    DynamicIconPart(
      'M12 22V12',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 400)), _fadeIn]),
    ),
  ],
);

/// Stack of three boxes that nudge apart (explode).
const DynamicLucideIconData kBoxesIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M2.97 12.92A2 2 0 0 0 2 14.63v3.24a2 2 0 0 0 .97 1.71l3 1.8a2 2 0 0 0 2.06 0L12 19v-5.5l-5-3-4.03 2.42Z m4.03 3.58 -4.74 -2.85 m4.74 2.85 5-3 m-5 3v5.17',
      DynamicTranslatePart([Offset.zero, Offset(-1.5, 1.5)]),
    ),
    DynamicIconPart(
      'M12 13.5V19l3.97 2.38a2 2 0 0 0 2.06 0l3-1.8a2 2 0 0 0 .97-1.71v-3.24a2 2 0 0 0-.97-1.71L17 10.5l-5 3Z m5 3-5-3 m5 3 4.74-2.85 M17 16.5v5.17',
      DynamicTranslatePart([Offset.zero, Offset(1.5, 1.5)]),
    ),
    DynamicIconPart(
      'M7.97 4.42A2 2 0 0 0 7 6.13v4.37l5 3 5-3V6.13a2 2 0 0 0-.97-1.71l-3-1.8a2 2 0 0 0-2.06 0l-3 1.8Z M12 8 7.26 5.15 m4.74 2.85 4.74-2.85 M12 13.5V8',
      DynamicTranslatePart([Offset.zero, Offset(0, -1.5)]),
    ),
  ],
);

/// Brain that pulses (scale) continuously while active.
const DynamicLucideIconData kBrainIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1400),
  repeats: true,
  parts: [
    DynamicIconPart.group(
      [
        'M12 18V5',
        'M15 13a4.17 4.17 0 0 1-3-4 4.17 4.17 0 0 1-3 4',
        'M12 5A3 3 0 1 1 17.598 6.5',
        'M12 5A3 3 0 1 0 6.402 6.5',
        'M17.997 5.125a4 4 0 0 1 2.526 5.77',
        'M18 18a4 4 0 0 0 2-7.464',
        'M19.967 17.483A4 4 0 1 1 12 18a4 4 0 1 1-7.967-.517',
        'M6 18a4 4 0 0 1-2-7.464',
        'M6.003 5.125a4 4 0 0 0-2.526 5.77',
      ],
      DynamicScalePart([1, 1.08, 1], pivot: kViewBoxCenter),
    ),
  ],
);

/// Business briefcase that sways on its handle.
const DynamicLucideIconData kBriefcaseBusinessIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart.group(
      [
        'M12 12h.01',
        'M16 6V4a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v2',
        'M22 13a18.15 18.15 0 0 1-20 0',
        'M4 6 h16 a2 2 0 0 1 2 2 v10 a2 2 0 0 1 -2 2 h-16 a2 2 0 0 1 -2 -2 v-10 a2 2 0 0 1 2 -2 z',
      ],
      DynamicRotatePart([0, 4, -3, 2, 0], pivot: Offset(12, 4)),
    ),
  ],
);

/// Calendar whose check mark draws itself on.
const DynamicLucideIconData kCalendarCheckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart('M8 2v4'),
    DynamicIconPart('M16 2v4'),
    DynamicIconPart(
        'M5 4 h14 a2 2 0 0 1 2 2 v14 a2 2 0 0 1 -2 2 h-14 a2 2 0 0 1 -2 -2 v-14 a2 2 0 0 1 2 -2 z'),
    DynamicIconPart('M3 10h18'),
    DynamicIconPart(
      'm9 16 2 2 4-4',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 400)), _fadeIn]),
    ),
  ],
);

/// Calendar (variant 2) whose check mark draws itself on.
const DynamicLucideIconData kCalendarCheck2Icon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart('M8 2v4'),
    DynamicIconPart('M16 2v4'),
    DynamicIconPart('M21 14V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h8'),
    DynamicIconPart('M3 10h18'),
    DynamicIconPart(
      'm16 20 2 2 4-4',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 400)), _fadeIn]),
    ),
  ],
);

/// Calendar with a cog that springs a half-turn.
const DynamicLucideIconData kCalendarCogIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart('M21 10.5V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h6'),
    DynamicIconPart('M16 2v4'),
    DynamicIconPart('M3 10h18'),
    DynamicIconPart('M8 2v4'),
    DynamicIconPart.group(
      [
        'm15.2 16.9-.9-.4',
        'm15.2 19.1-.9.4',
        'm16.9 15.2-.4-.9',
        'm16.9 20.8-.4.9',
        'm19.5 14.3-.4.9',
        'm19.5 21.7-.4-.9',
        'm21.7 16.5-.9.4',
        'm21.7 19.5-.9-.4',
        'M15 18a3 3 0 1 0 6 0 3 3 0 1 0 -6 0',
      ],
      DynamicRotatePart([0, 180],
          pivot: Offset(18, 18), curve: DynamicSpringCurve(stiffness: 50, damping: 10)),
    ),
  ],
);

/// Calendar whose day dots flicker in sequence.
const DynamicLucideIconData kCalendarDaysIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart('M8 2v4'),
    DynamicIconPart('M16 2v4'),
    DynamicIconPart(
        'M3 6 h18 a2 2 0 0 1 2 2 v12 a2 2 0 0 1 -2 2 h-18 a2 2 0 0 1 -2 -2 v-12 a2 2 0 0 1 2 -2 z'),
    DynamicIconPart('M3 10h18'),
    DynamicIconPart('M8 14h.01',
        DynamicOpacityPart([1, 0.3, 1], duration: Duration(milliseconds: 400))),
    DynamicIconPart('M12 14h.01',
        DynamicOpacityPart([1, 0.3, 1],
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 400))),
    DynamicIconPart('M16 14h.01',
        DynamicOpacityPart([1, 0.3, 1],
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 400))),
    DynamicIconPart('M8 18h.01',
        DynamicOpacityPart([1, 0.3, 1],
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 400))),
    DynamicIconPart('M12 18h.01',
        DynamicOpacityPart([1, 0.3, 1],
            delay: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 400))),
    DynamicIconPart('M16 18h.01',
        DynamicOpacityPart([1, 0.3, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400))),
  ],
);

/// Shopping cart that pops and bobs up.
const DynamicLucideIconData kCartIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart.group(
      [
        'M6.29977 5H21L19 12H7.37671M20 16H8L6 3H3',
        'M9 20C9 20.5523 8.55228 21 8 21C7.44772 21 7 20.5523 7 20C7 19.4477 7.44772 19 8 19C8.55228 19 9 19.4477 9 20Z',
        'M20 20C20 20.5523 19.5523 21 19 21C18.4477 21 18 20.5523 18 20C18 19.4477 18.4477 19 19 19C19.5523 19 20 19.4477 20 20Z',
      ],
      DynamicCompositePart([
        DynamicScalePart([1, 1.1], pivot: kViewBoxCenter),
        DynamicTranslatePart([Offset.zero, Offset(0, -5), Offset.zero]),
      ]),
    ),
  ],
);

/// Security camera that pans side to side while its lens blinks.
const DynamicLucideIconData kCctvIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1800),
  parts: [
    DynamicIconPart.group(
      [
        'M16.75 12h3.632a1 1 0 0 1 .894 1.447l-2.034 4.069a1 1 0 0 1-1.708.134l-2.124-2.97',
        'M17.106 9.053a1 1 0 0 1 .447 1.341l-3.106 6.211a1 1 0 0 1-1.342.447L3.61 12.3a2.92 2.92 0 0 1-1.3-3.91L3.69 5.6a2.92 2.92 0 0 1 3.92-1.3z',
      ],
      DynamicRotatePart([0, -20, -20, 15, 15, 0], pivot: kViewBoxCenter),
    ),
    DynamicIconPart(
      'M7 9h.01',
      DynamicOpacityPart([1, 0, 1, 0, 1, 0, 1]),
    ),
    DynamicIconPart('M2 19h3.76a2 2 0 0 0 1.8-1.1L9 15'),
    DynamicIconPart('M2 21v-4'),
  ],
);

/// Bar chart (decreasing) whose bars redraw in sequence.
const DynamicLucideIconData kChartBarDecreasingIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M3 3v16a2 2 0 0 0 2 2h16'),
    DynamicIconPart(
      'M7 6h12',
      DynamicDrawPart(duration: Duration(milliseconds: 300)),
    ),
    DynamicIconPart(
      'M7 11h8',
      DynamicDrawPart(
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 300)),
    ),
    DynamicIconPart(
      'M7 16h3',
      DynamicDrawPart(
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 300)),
    ),
  ],
);

/// Bar chart (increasing) whose bars redraw in sequence.
const DynamicLucideIconData kChartBarIncreasingIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M3 3v16a2 2 0 0 0 2 2h16'),
    DynamicIconPart(
      'M7 6h3',
      DynamicDrawPart(duration: Duration(milliseconds: 300)),
    ),
    DynamicIconPart(
      'M7 11h8',
      DynamicDrawPart(
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 300)),
    ),
    DynamicIconPart(
      'M7 16h12',
      DynamicDrawPart(
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 300)),
    ),
  ],
);

/// Column chart (decreasing) whose columns redraw in sequence.
const DynamicLucideIconData kChartColumnDecreasingIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M3 3v16a2 2 0 0 0 2 2h16'),
    DynamicIconPart(
      'M8 17V5',
      DynamicDrawPart(fromEnd: true, duration: Duration(milliseconds: 300)),
    ),
    DynamicIconPart(
      'M13 17V9',
      DynamicDrawPart(
          fromEnd: true,
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 300)),
    ),
    DynamicIconPart(
      'M18 17v-3',
      DynamicDrawPart(
          fromEnd: true,
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 300)),
    ),
  ],
);

const List<DynamicLucideIconEntry> gen04Icons = [
  DynamicLucideIconEntry('book-text', kBookTextIcon, ['book', 'text', 'read', 'document']),
  DynamicLucideIconEntry('bookmark-check', kBookmarkCheckIcon,
      ['bookmark', 'check', 'saved', 'confirm']),
  DynamicLucideIconEntry('bookmark-minus', kBookmarkMinusIcon,
      ['bookmark', 'minus', 'remove', 'subtract']),
  DynamicLucideIconEntry('bookmark-plus', kBookmarkPlusIcon,
      ['bookmark', 'plus', 'add', 'save']),
  DynamicLucideIconEntry('bookmark-x', kBookmarkXIcon,
      ['bookmark', 'x', 'remove', 'delete']),
  DynamicLucideIconEntry('bot', kBotIcon, ['bot', 'robot', 'ai', 'chatbot']),
  DynamicLucideIconEntry('bot-message-square', kBotMessageSquareIcon,
      ['bot', 'message', 'chat', 'ai', 'assistant']),
  DynamicLucideIconEntry('box', kBoxIcon, ['box', 'package', 'cube', 'parcel']),
  DynamicLucideIconEntry('boxes', kBoxesIcon, ['boxes', 'packages', 'stack', 'storage']),
  DynamicLucideIconEntry('brain', kBrainIcon, ['brain', 'mind', 'think', 'ai']),
  DynamicLucideIconEntry('briefcase-business', kBriefcaseBusinessIcon,
      ['briefcase', 'business', 'work', 'job']),
  DynamicLucideIconEntry('calendar-check', kCalendarCheckIcon,
      ['calendar', 'check', 'date', 'event', 'done']),
  DynamicLucideIconEntry('calendar-check-2', kCalendarCheck2Icon,
      ['calendar', 'check', 'date', 'event', 'done']),
  DynamicLucideIconEntry('calendar-cog', kCalendarCogIcon,
      ['calendar', 'cog', 'settings', 'schedule']),
  DynamicLucideIconEntry('calendar-days', kCalendarDaysIcon,
      ['calendar', 'days', 'date', 'month', 'schedule']),
  DynamicLucideIconEntry('cart', kCartIcon, ['cart', 'shopping', 'buy', 'ecommerce']),
  DynamicLucideIconEntry('cctv', kCctvIcon, ['cctv', 'camera', 'security', 'surveillance']),
  DynamicLucideIconEntry('chart-bar-decreasing', kChartBarDecreasingIcon,
      ['chart', 'bar', 'decreasing', 'graph', 'stats']),
  DynamicLucideIconEntry('chart-bar-increasing', kChartBarIncreasingIcon,
      ['chart', 'bar', 'increasing', 'graph', 'stats']),
  DynamicLucideIconEntry('chart-column-decreasing', kChartColumnDecreasingIcon,
      ['chart', 'column', 'decreasing', 'graph', 'stats']),
];
