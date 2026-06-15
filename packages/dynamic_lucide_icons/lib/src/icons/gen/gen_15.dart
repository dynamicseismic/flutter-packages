import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 15. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _fadeIn = OpacityPart([0, 1], duration: Duration(milliseconds: 100));
const _phoneArcSpring = SpringCurve(stiffness: 300, damping: 20);

/// Mic with a slash that draws itself across.
const LucideIconData kMicOffIcon = LucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    IconPart('M12 19v3'),
    IconPart('M15 9.34V5a3 3 0 0 0-5.68-1.33'),
    IconPart('M16.95 16.95A7 7 0 0 1 5 12v-2'),
    IconPart('M18.89 13.23A7 7 0 0 0 19 12v-2'),
    IconPart('M9 9v3a3 3 0 0 0 5.12 2.12'),
    IconPart(
      'm2 2 20 20',
      CompositePart([
        DrawPart(delay: Duration(milliseconds: 150)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 150),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

const _minimizeSpring = SpringCurve(stiffness: 250, damping: 25);

/// Minimize: the four corner brackets spring outward.
const LucideIconData kMinimizeIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M8 3v3a2 2 0 0 1-2 2H3',
      TranslatePart([Offset.zero, Offset(2, 2)], curve: _minimizeSpring),
    ),
    IconPart(
      'M21 8h-3a2 2 0 0 1-2-2V3',
      TranslatePart([Offset.zero, Offset(-2, 2)], curve: _minimizeSpring),
    ),
    IconPart(
      'M3 16h3a2 2 0 0 1 2 2v3',
      TranslatePart([Offset.zero, Offset(2, -2)], curve: _minimizeSpring),
    ),
    IconPart(
      'M16 21v-3a2 2 0 0 1 2-2h3',
      TranslatePart([Offset.zero, Offset(-2, -2)], curve: _minimizeSpring),
    ),
  ],
);

/// Monitor with a check that draws itself in.
const LucideIconData kMonitorCheckIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
        'M4 3h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2z'),
    IconPart('M12 17v4'),
    IconPart('M8 21h8'),
    IconPart(
      'm9 10 2 2 4-4',
      CompositePart([DrawPart(), _fadeIn]),
    ),
  ],
);

/// NFC signal arcs that flicker out then ripple back in from the inside.
const LucideIconData kNfcIcon = LucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart(
      'M6 8.32a7.43 7.43 0 0 1 0 7.36',
      OpacityPart([1, 0, 1], curve: _phoneArcSpring),
    ),
    IconPart(
      'M9.46 6.21a11.76 11.76 0 0 1 0 11.58',
      OpacityPart([1, 0, 1],
          delay: Duration(milliseconds: 100), curve: _phoneArcSpring),
    ),
    IconPart(
      'M12.91 4.1a15.91 15.91 0 0 1 .01 15.8',
      OpacityPart([1, 0, 1],
          delay: Duration(milliseconds: 200), curve: _phoneArcSpring),
    ),
    IconPart(
      'M16.37 2a20.16 20.16 0 0 1 0 20',
      OpacityPart([1, 0, 1],
          delay: Duration(milliseconds: 300), curve: _phoneArcSpring),
    ),
  ],
);

/// Panel-left-close: the chevron nudges left and back.
const LucideIconData kPanelLeftCloseIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2z'),
    IconPart('M9 3v18'),
    IconPart(
      'm16 15-3-3 3-3',
      TranslatePart([Offset.zero, Offset(-1.5, 0), Offset.zero]),
    ),
  ],
);

/// Panel-left-open: the chevron nudges right and back.
const LucideIconData kPanelLeftOpenIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2z'),
    IconPart('M9 3v18'),
    IconPart(
      'm14 9 3 3-3 3',
      TranslatePart([Offset.zero, Offset(1.5, 0), Offset.zero]),
    ),
  ],
);

/// Panel-right-open: the chevron nudges left and back.
const LucideIconData kPanelRightOpenIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2z'),
    IconPart('M15 3v18'),
    IconPart(
      'm10 15-3-3 3-3',
      TranslatePart([Offset.zero, Offset(-1.5, 0), Offset.zero]),
    ),
  ],
);

/// Party popper that bursts: cone nudges, dots pop in, streamers draw on.
const LucideIconData kPartyPopperIcon = LucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart.group(
      [
        'M5.8 11.3 2 22l10.7-3.79',
        'M11 13c1.93 1.93 2.83 4.17 2 5-.83.83-3.07-.07-5-2-1.93-1.93-2.83-4.17-2-5 .83-.83 3.07.07 5 2Z',
      ],
      TranslatePart([Offset(-1.5, 1.5), Offset.zero]),
    ),
    IconPart(
      'M4 3h.01',
      CompositePart([
        ScalePart([0.5, 0.8, 1, 1.1, 1]),
        OpacityPart([0, 1], duration: Duration(milliseconds: 200)),
      ]),
    ),
    IconPart(
      'M22 8h.01',
      CompositePart([
        ScalePart([0.5, 0.8, 1, 1.1, 1]),
        OpacityPart([0, 1], duration: Duration(milliseconds: 200)),
      ]),
    ),
    IconPart(
      'M15 2h.01',
      CompositePart([
        ScalePart([0.5, 0.8, 1, 1.1, 1]),
        OpacityPart([0, 1], duration: Duration(milliseconds: 200)),
      ]),
    ),
    IconPart(
      'M22 20h.01',
      CompositePart([
        ScalePart([0.5, 0.8, 1, 1.1, 1]),
        OpacityPart([0, 1], duration: Duration(milliseconds: 200)),
      ]),
    ),
    IconPart(
      'm14 10 1.21-1.06c0.16-0.84 0.9-1.44 1.76-1.44h0.38c0.88 0 1.55-0.77 1.45-1.63a2.9 2.9 0 0 1 1.96-3.12L22 2',
      CompositePart([
        DrawPart(),
        ScalePart([0.3, 0.8, 1, 1.1, 1]),
        _fadeIn,
      ]),
    ),
    IconPart(
      'M17 15h0.77c0.71 0 1.32-0.52 1.43-1.22c0.16-0.91 1.12-1.45 1.98-1.11L22 13',
      CompositePart([
        DrawPart(),
        ScalePart([0.3, 0.8, 1, 1.1, 1]),
        _fadeIn,
      ]),
    ),
    IconPart(
      'M9 7V6.23c0-0.71 0.52-1.33 1.22-1.43c0.91-0.16 1.45-1.12 1.11-1.98L11 2',
      CompositePart([
        DrawPart(),
        ScalePart([0.3, 0.8, 1, 1.1, 1]),
        _fadeIn,
      ]),
    ),
  ],
);

/// Pause: the two bars bob down, one after the other.
const LucideIconData kPauseIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M7 4h2a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V5a1 1 0 0 1 1-1z',
      TranslatePart([Offset.zero, Offset(0, 2), Offset.zero, Offset.zero]),
    ),
    IconPart(
      'M15 4h2a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1V5a1 1 0 0 1 1-1z',
      TranslatePart([Offset.zero, Offset.zero, Offset(0, 2), Offset.zero]),
    ),
  ],
);

/// Pen-tool that wiggles while the guide line draws itself.
const LucideIconData kPenToolIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    IconPart.group(
      [
        'M15.707 21.293a1 1 0 0 1-1.414 0l-1.586-1.586a1 1 0 0 1 0-1.414l5.586-5.586a1 1 0 0 1 1.414 0l1.586 1.586a1 1 0 0 1 0 1.414z',
        'm18 13-1.375-6.874a1 1 0 0 0-.746-.776L3.235 2.028a1 1 0 0 0-1.207 1.207L5.35 15.879a1 1 0 0 0 .776.746L13 18',
        'M9 11a2 2 0 1 0 4 0a2 2 0 1 0 -4 0',
      ],
      CompositePart([
        RotatePart([0, 0, 8, -3, 8, 0], pivot: kViewBoxCenter),
        TranslatePart([
          Offset.zero,
          Offset(0, 2),
          Offset.zero,
          Offset(0, -1),
          Offset.zero,
        ]),
      ]),
    ),
    IconPart(
      'm2.3 2.3 7.286 7.286',
      CompositePart([DrawPart(duration: Duration(milliseconds: 800)), _fadeIn]),
    ),
  ],
);

/// Philippine peso that draws on: the P first, then the two bars.
const LucideIconData kPhilippinePesoIcon = LucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M7 21V4a1 1 0 0 1 1-1h4a1 1 0 0 1 0 12H7',
      CompositePart([
        DrawPart(duration: Duration(milliseconds: 600)),
        _fadeIn,
      ]),
    ),
    IconPart(
      'M20 7H4',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
    IconPart(
      'M20 11H4',
      CompositePart([
        DrawPart(
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400)),
        OpacityPart([0, 1],
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

/// Phone that rings: whole-icon shake (rotate) with a little swell (scale).
const LucideIconData kPhoneIcon = LucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart.group(
      [
        'M13.832 16.568a1 1 0 0 0 1.213-.303l.355-.465A2 2 0 0 1 17 15h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2A18 18 0 0 1 2 4a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-.8 1.6l-.468.351a1 1 0 0 0-.292 1.233 14 14 0 0 0 6.392 6.384',
      ],
      CompositePart([
        RotatePart([10, 20, -10, 10, 0], pivot: kViewBoxCenter),
        ScalePart([1, 1.1, 1], pivot: kViewBoxCenter),
      ]),
    ),
  ],
);

/// Phone-call: handset rings while the signal arcs flicker back in.
const LucideIconData kPhoneCallIcon = LucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M13 2a9 9 0 0 1 9 9',
      OpacityPart([1, 0, 1],
          delay: Duration(milliseconds: 200), curve: _phoneArcSpring),
    ),
    IconPart(
      'M13 6a5 5 0 0 1 5 5',
      OpacityPart([1, 0, 1],
          delay: Duration(milliseconds: 100), curve: _phoneArcSpring),
    ),
    IconPart(
      'M13.832 16.568a1 1 0 0 0 1.213-.303l.355-.465A2 2 0 0 1 17 15h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2A18 18 0 0 1 2 4a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-.8 1.6l-.468.351a1 1 0 0 0-.292 1.233 14 14 0 0 0 6.392 6.384',
      CompositePart([
        RotatePart([10, 20, -10, 10, 0], pivot: kViewBoxCenter),
        ScalePart([1, 1.1, 1.2, 1.1, 1], pivot: kViewBoxCenter),
      ]),
    ),
  ],
);

/// Phone-forwarded: handset swells while the arrow shoots right.
const LucideIconData kPhoneForwardedIcon = LucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart(
      'M14 6h8',
      CompositePart([
        TranslatePart([Offset.zero, Offset(3, 0), Offset.zero],
            duration: Duration(milliseconds: 500)),
        ScalePart([1, 0.85, 1],
            axis: ScaleAxis.horizontal,
            pivot: Offset(22, 6),
            duration: Duration(milliseconds: 500)),
      ]),
    ),
    IconPart(
      'm18 2 4 4-4 4',
      TranslatePart([Offset.zero, Offset(3, 0), Offset.zero],
          duration: Duration(milliseconds: 500)),
    ),
    IconPart(
      'M13.832 16.568a1 1 0 0 0 1.213-.303l.355-.465A2 2 0 0 1 17 15h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2A18 18 0 0 1 2 4a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-.8 1.6l-.468.351a1 1 0 0 0-.292 1.233 14 14 0 0 0 6.392 6.384',
      ScalePart([1, 1.1, 1], pivot: kViewBoxCenter),
    ),
  ],
);

/// Phone-incoming: handset swells while the arrow nudges down-left.
const LucideIconData kPhoneIncomingIcon = LucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart.group(
      ['M16 2v6h6', 'm22 2-6 6'],
      CompositePart([
        ScalePart([1, 1.2, 1]),
        TranslatePart([Offset.zero, Offset(-1, 1), Offset.zero]),
      ]),
    ),
    IconPart(
      'M13.832 16.568a1 1 0 0 0 1.213-.303l.355-.465A2 2 0 0 1 17 15h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2A18 18 0 0 1 2 4a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-.8 1.6l-.468.351a1 1 0 0 0-.292 1.233 14 14 0 0 0 6.392 6.384',
      ScalePart([1, 1.1, 1], pivot: kViewBoxCenter),
    ),
  ],
);

/// Phone-missed: handset swells while the X gives a little pop.
const LucideIconData kPhoneMissedIcon = LucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    IconPart.group(
      ['m16 2 6 6', 'm22 2-6 6'],
      ScalePart([1, 1.2, 1]),
    ),
    IconPart(
      'M13.832 16.568a1 1 0 0 0 1.213-.303l.355-.465A2 2 0 0 1 17 15h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2A18 18 0 0 1 2 4a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-.8 1.6l-.468.351a1 1 0 0 0-.292 1.233 14 14 0 0 0 6.392 6.384',
      ScalePart([1, 1.05, 1], pivot: kViewBoxCenter),
    ),
  ],
);

/// Phone-off: handset static while the slash draws itself across.
const LucideIconData kPhoneOffIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
        'M10.1 13.9a14 14 0 0 0 3.732 2.668 1 1 0 0 0 1.213-.303l.355-.465A2 2 0 0 1 17 15h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2 18 18 0 0 1-12.728-5.272'),
    IconPart(
        'M4.76 13.582A18 18 0 0 1 2 4a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-.8 1.6l-.468.351a1 1 0 0 0-.292 1.233 14 14 0 0 0 .244.473'),
    IconPart(
      'M22 2 2 22',
      DrawPart(duration: Duration(milliseconds: 400), curve: Curves.linear),
    ),
  ],
);

/// Pickaxe that swings to strike (rotate from the handle tip).
const LucideIconData kPickaxeIcon = LucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    IconPart.group(
      [
        'm14 13-8.381 8.38a1 1 0 0 1-3.001-3L11 9.999',
        'M15.973 4.027A13 13 0 0 0 5.902 2.373c-1.398.342-1.092 2.158.277 2.601a19.9 19.9 0 0 1 5.822 3.024',
        'M16.001 11.999a19.9 19.9 0 0 1 3.024 5.824c.444 1.369 2.26 1.676 2.603.278A13 13 0 0 0 20 8.069',
        'M18.352 3.352a1.205 1.205 0 0 0-1.704 0l-5.296 5.296a1.205 1.205 0 0 0 0 1.704l2.296 2.296a1.205 1.205 0 0 0 1.704 0l5.296-5.296a1.205 1.205 0 0 0 0-1.704z',
      ],
      RotatePart([0, -20, 25, 0], pivot: Offset(2, 22)),
    ),
  ],
);

/// Play triangle that rocks: nudges back, tilts, then settles forward.
const LucideIconData kPlayIcon = LucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    IconPart(
      'M6 3 L20 12 L6 21 L6 3 Z',
      CompositePart([
        TranslatePart([
          Offset.zero,
          Offset(-1, 0),
          Offset(2, 0),
          Offset.zero,
        ]),
        RotatePart([0, -10, 0, 0], pivot: kViewBoxCenter),
      ]),
    ),
  ],
);

/// Plug-zap: the bolt pulses (opacity loops while active).
const LucideIconData kPlugZapIcon = LucideIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    IconPart(
        'M6.3 20.3a2.4 2.4 0 0 0 3.4 0L12 18l-6-6-2.3 2.3a2.4 2.4 0 0 0 0 3.4Z'),
    IconPart('m2 22 3-3'),
    IconPart('M7.5 13.5 10 11'),
    IconPart('M10.5 16.5 13 14'),
    IconPart(
      'm18 3-4 4h6l-4 4',
      OpacityPart([1, 0.4, 1]),
    ),
  ],
);

const List<LucideIconEntry> gen15Icons = [
  LucideIconEntry('mic-off', kMicOffIcon, ['microphone', 'mute', 'audio']),
  LucideIconEntry('minimize', kMinimizeIcon, ['shrink', 'collapse', 'window']),
  LucideIconEntry(
      'monitor-check', kMonitorCheckIcon, ['screen', 'display', 'done']),
  LucideIconEntry('nfc', kNfcIcon, ['contactless', 'wireless', 'tap']),
  LucideIconEntry('panel-left-close', kPanelLeftCloseIcon,
      ['sidebar', 'collapse', 'layout']),
  LucideIconEntry(
      'panel-left-open', kPanelLeftOpenIcon, ['sidebar', 'expand', 'layout']),
  LucideIconEntry(
      'panel-right-open', kPanelRightOpenIcon, ['sidebar', 'expand', 'layout']),
  LucideIconEntry(
      'party-popper', kPartyPopperIcon, ['celebrate', 'confetti', 'party']),
  LucideIconEntry('pause', kPauseIcon, ['media', 'player', 'stop']),
  LucideIconEntry('pen-tool', kPenToolIcon, ['draw', 'vector', 'edit']),
  LucideIconEntry(
      'philippine-peso', kPhilippinePesoIcon, ['currency', 'money', 'php']),
  LucideIconEntry('phone', kPhoneIcon, ['call', 'telephone', 'contact']),
  LucideIconEntry('phone-call', kPhoneCallIcon, ['call', 'ring', 'telephone']),
  LucideIconEntry('phone-forwarded', kPhoneForwardedIcon,
      ['call', 'forward', 'redirect']),
  LucideIconEntry('phone-incoming', kPhoneIncomingIcon,
      ['call', 'incoming', 'receive']),
  LucideIconEntry(
      'phone-missed', kPhoneMissedIcon, ['call', 'missed', 'telephone']),
  LucideIconEntry('phone-off', kPhoneOffIcon, ['call', 'hangup', 'mute']),
  LucideIconEntry('pickaxe', kPickaxeIcon, ['mine', 'dig', 'tool']),
  LucideIconEntry('play', kPlayIcon, ['media', 'player', 'start']),
  LucideIconEntry(
      'plug-zap', kPlugZapIcon, ['charge', 'power', 'electricity']),
];
