import 'package:flutter/widgets.dart';

import '../../core/core.dart';
import '../icon_entry.dart';

/// Generated icon batch 15. Path data: Lucide (ISC). Animation params:
/// pqoqubbw/icons (MIT). See ATTRIBUTION.md.

const _fadeIn = DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 100));
const _phoneArcSpring = DynamicSpringCurve(stiffness: 300, damping: 20);

/// Mic with a slash that draws itself across.
const DynamicLucideIconData kMicOffIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 600),
  parts: [
    DynamicIconPart('M12 19v3'),
    DynamicIconPart('M15 9.34V5a3 3 0 0 0-5.68-1.33'),
    DynamicIconPart('M16.95 16.95A7 7 0 0 1 5 12v-2'),
    DynamicIconPart('M18.89 13.23A7 7 0 0 0 19 12v-2'),
    DynamicIconPart('M9 9v3a3 3 0 0 0 5.12 2.12'),
    DynamicIconPart(
      'm2 2 20 20',
      DynamicCompositePart([
        DynamicDrawPart(delay: Duration(milliseconds: 150)),
        DynamicOpacityPart([0, 1],
            delay: Duration(milliseconds: 150),
            duration: Duration(milliseconds: 100)),
      ]),
    ),
  ],
);

const _minimizeSpring = DynamicSpringCurve(stiffness: 250, damping: 25);

/// Minimize: the four corner brackets spring outward.
const DynamicLucideIconData kMinimizeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M8 3v3a2 2 0 0 1-2 2H3',
      DynamicTranslatePart([Offset.zero, Offset(2, 2)], curve: _minimizeSpring),
    ),
    DynamicIconPart(
      'M21 8h-3a2 2 0 0 1-2-2V3',
      DynamicTranslatePart([Offset.zero, Offset(-2, 2)], curve: _minimizeSpring),
    ),
    DynamicIconPart(
      'M3 16h3a2 2 0 0 1 2 2v3',
      DynamicTranslatePart([Offset.zero, Offset(2, -2)], curve: _minimizeSpring),
    ),
    DynamicIconPart(
      'M16 21v-3a2 2 0 0 1 2-2h3',
      DynamicTranslatePart([Offset.zero, Offset(-2, -2)], curve: _minimizeSpring),
    ),
  ],
);

/// Monitor with a check that draws itself in.
const DynamicLucideIconData kMonitorCheckIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
        'M4 3h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2z'),
    DynamicIconPart('M12 17v4'),
    DynamicIconPart('M8 21h8'),
    DynamicIconPart(
      'm9 10 2 2 4-4',
      DynamicCompositePart([DynamicDrawPart(), _fadeIn]),
    ),
  ],
);

/// NFC signal arcs that flicker out then ripple back in from the inside.
const DynamicLucideIconData kNfcIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart(
      'M6 8.32a7.43 7.43 0 0 1 0 7.36',
      DynamicOpacityPart([1, 0, 1], curve: _phoneArcSpring),
    ),
    DynamicIconPart(
      'M9.46 6.21a11.76 11.76 0 0 1 0 11.58',
      DynamicOpacityPart([1, 0, 1],
          delay: Duration(milliseconds: 100), curve: _phoneArcSpring),
    ),
    DynamicIconPart(
      'M12.91 4.1a15.91 15.91 0 0 1 .01 15.8',
      DynamicOpacityPart([1, 0, 1],
          delay: Duration(milliseconds: 200), curve: _phoneArcSpring),
    ),
    DynamicIconPart(
      'M16.37 2a20.16 20.16 0 0 1 0 20',
      DynamicOpacityPart([1, 0, 1],
          delay: Duration(milliseconds: 300), curve: _phoneArcSpring),
    ),
  ],
);

/// Panel-left-close: the chevron nudges left and back.
const DynamicLucideIconData kPanelLeftCloseIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2z'),
    DynamicIconPart('M9 3v18'),
    DynamicIconPart(
      'm16 15-3-3 3-3',
      DynamicTranslatePart([Offset.zero, Offset(-1.5, 0), Offset.zero]),
    ),
  ],
);

/// Panel-left-open: the chevron nudges right and back.
const DynamicLucideIconData kPanelLeftOpenIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2z'),
    DynamicIconPart('M9 3v18'),
    DynamicIconPart(
      'm14 9 3 3-3 3',
      DynamicTranslatePart([Offset.zero, Offset(1.5, 0), Offset.zero]),
    ),
  ],
);

/// Panel-right-open: the chevron nudges left and back.
const DynamicLucideIconData kPanelRightOpenIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
        'M5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2z'),
    DynamicIconPart('M15 3v18'),
    DynamicIconPart(
      'm10 15-3-3 3-3',
      DynamicTranslatePart([Offset.zero, Offset(-1.5, 0), Offset.zero]),
    ),
  ],
);

/// Party popper that bursts: cone nudges, dots pop in, streamers draw on.
const DynamicLucideIconData kPartyPopperIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 700),
  parts: [
    DynamicIconPart.group(
      [
        'M5.8 11.3 2 22l10.7-3.79',
        'M11 13c1.93 1.93 2.83 4.17 2 5-.83.83-3.07-.07-5-2-1.93-1.93-2.83-4.17-2-5 .83-.83 3.07.07 5 2Z',
      ],
      DynamicTranslatePart([Offset(-1.5, 1.5), Offset.zero]),
    ),
    DynamicIconPart(
      'M4 3h.01',
      DynamicCompositePart([
        DynamicScalePart([0.5, 0.8, 1, 1.1, 1]),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 200)),
      ]),
    ),
    DynamicIconPart(
      'M22 8h.01',
      DynamicCompositePart([
        DynamicScalePart([0.5, 0.8, 1, 1.1, 1]),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 200)),
      ]),
    ),
    DynamicIconPart(
      'M15 2h.01',
      DynamicCompositePart([
        DynamicScalePart([0.5, 0.8, 1, 1.1, 1]),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 200)),
      ]),
    ),
    DynamicIconPart(
      'M22 20h.01',
      DynamicCompositePart([
        DynamicScalePart([0.5, 0.8, 1, 1.1, 1]),
        DynamicOpacityPart([0, 1], duration: Duration(milliseconds: 200)),
      ]),
    ),
    DynamicIconPart(
      'm14 10 1.21-1.06c0.16-0.84 0.9-1.44 1.76-1.44h0.38c0.88 0 1.55-0.77 1.45-1.63a2.9 2.9 0 0 1 1.96-3.12L22 2',
      DynamicCompositePart([
        DynamicDrawPart(),
        DynamicScalePart([0.3, 0.8, 1, 1.1, 1]),
        _fadeIn,
      ]),
    ),
    DynamicIconPart(
      'M17 15h0.77c0.71 0 1.32-0.52 1.43-1.22c0.16-0.91 1.12-1.45 1.98-1.11L22 13',
      DynamicCompositePart([
        DynamicDrawPart(),
        DynamicScalePart([0.3, 0.8, 1, 1.1, 1]),
        _fadeIn,
      ]),
    ),
    DynamicIconPart(
      'M9 7V6.23c0-0.71 0.52-1.33 1.22-1.43c0.91-0.16 1.45-1.12 1.11-1.98L11 2',
      DynamicCompositePart([
        DynamicDrawPart(),
        DynamicScalePart([0.3, 0.8, 1, 1.1, 1]),
        _fadeIn,
      ]),
    ),
  ],
);

/// Pause: the two bars bob down, one after the other.
const DynamicLucideIconData kPauseIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M7 4h2a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V5a1 1 0 0 1 1-1z',
      DynamicTranslatePart([Offset.zero, Offset(0, 2), Offset.zero, Offset.zero]),
    ),
    DynamicIconPart(
      'M15 4h2a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1V5a1 1 0 0 1 1-1z',
      DynamicTranslatePart([Offset.zero, Offset.zero, Offset(0, 2), Offset.zero]),
    ),
  ],
);

/// Pen-tool that wiggles while the guide line draws itself.
const DynamicLucideIconData kPenToolIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  parts: [
    DynamicIconPart.group(
      [
        'M15.707 21.293a1 1 0 0 1-1.414 0l-1.586-1.586a1 1 0 0 1 0-1.414l5.586-5.586a1 1 0 0 1 1.414 0l1.586 1.586a1 1 0 0 1 0 1.414z',
        'm18 13-1.375-6.874a1 1 0 0 0-.746-.776L3.235 2.028a1 1 0 0 0-1.207 1.207L5.35 15.879a1 1 0 0 0 .776.746L13 18',
        'M9 11a2 2 0 1 0 4 0a2 2 0 1 0 -4 0',
      ],
      DynamicCompositePart([
        DynamicRotatePart([0, 0, 8, -3, 8, 0], pivot: kViewBoxCenter),
        DynamicTranslatePart([
          Offset.zero,
          Offset(0, 2),
          Offset.zero,
          Offset(0, -1),
          Offset.zero,
        ]),
      ]),
    ),
    DynamicIconPart(
      'm2.3 2.3 7.286 7.286',
      DynamicCompositePart([DynamicDrawPart(duration: Duration(milliseconds: 800)), _fadeIn]),
    ),
  ],
);

/// Philippine peso that draws on: the P first, then the two bars.
const DynamicLucideIconData kPhilippinePesoIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M7 21V4a1 1 0 0 1 1-1h4a1 1 0 0 1 0 12H7',
      DynamicCompositePart([
        DynamicDrawPart(duration: Duration(milliseconds: 600)),
        _fadeIn,
      ]),
    ),
    DynamicIconPart(
      'M20 7H4',
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
      'M20 11H4',
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

/// Phone that rings: whole-icon shake (rotate) with a little swell (scale).
const DynamicLucideIconData kPhoneIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart.group(
      [
        'M13.832 16.568a1 1 0 0 0 1.213-.303l.355-.465A2 2 0 0 1 17 15h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2A18 18 0 0 1 2 4a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-.8 1.6l-.468.351a1 1 0 0 0-.292 1.233 14 14 0 0 0 6.392 6.384',
      ],
      DynamicCompositePart([
        DynamicRotatePart([10, 20, -10, 10, 0], pivot: kViewBoxCenter),
        DynamicScalePart([1, 1.1, 1], pivot: kViewBoxCenter),
      ]),
    ),
  ],
);

/// Phone-call: handset rings while the signal arcs flicker back in.
const DynamicLucideIconData kPhoneCallIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M13 2a9 9 0 0 1 9 9',
      DynamicOpacityPart([1, 0, 1],
          delay: Duration(milliseconds: 200), curve: _phoneArcSpring),
    ),
    DynamicIconPart(
      'M13 6a5 5 0 0 1 5 5',
      DynamicOpacityPart([1, 0, 1],
          delay: Duration(milliseconds: 100), curve: _phoneArcSpring),
    ),
    DynamicIconPart(
      'M13.832 16.568a1 1 0 0 0 1.213-.303l.355-.465A2 2 0 0 1 17 15h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2A18 18 0 0 1 2 4a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-.8 1.6l-.468.351a1 1 0 0 0-.292 1.233 14 14 0 0 0 6.392 6.384',
      DynamicCompositePart([
        DynamicRotatePart([10, 20, -10, 10, 0], pivot: kViewBoxCenter),
        DynamicScalePart([1, 1.1, 1.2, 1.1, 1], pivot: kViewBoxCenter),
      ]),
    ),
  ],
);

/// Phone-forwarded: handset swells while the arrow shoots right.
const DynamicLucideIconData kPhoneForwardedIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart(
      'M14 6h8',
      DynamicCompositePart([
        DynamicTranslatePart([Offset.zero, Offset(3, 0), Offset.zero],
            duration: Duration(milliseconds: 500)),
        DynamicScalePart([1, 0.85, 1],
            axis: DynamicScaleAxis.horizontal,
            pivot: Offset(22, 6),
            duration: Duration(milliseconds: 500)),
      ]),
    ),
    DynamicIconPart(
      'm18 2 4 4-4 4',
      DynamicTranslatePart([Offset.zero, Offset(3, 0), Offset.zero],
          duration: Duration(milliseconds: 500)),
    ),
    DynamicIconPart(
      'M13.832 16.568a1 1 0 0 0 1.213-.303l.355-.465A2 2 0 0 1 17 15h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2A18 18 0 0 1 2 4a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-.8 1.6l-.468.351a1 1 0 0 0-.292 1.233 14 14 0 0 0 6.392 6.384',
      DynamicScalePart([1, 1.1, 1], pivot: kViewBoxCenter),
    ),
  ],
);

/// Phone-incoming: handset swells while the arrow nudges down-left.
const DynamicLucideIconData kPhoneIncomingIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart.group(
      ['M16 2v6h6', 'm22 2-6 6'],
      DynamicCompositePart([
        DynamicScalePart([1, 1.2, 1]),
        DynamicTranslatePart([Offset.zero, Offset(-1, 1), Offset.zero]),
      ]),
    ),
    DynamicIconPart(
      'M13.832 16.568a1 1 0 0 0 1.213-.303l.355-.465A2 2 0 0 1 17 15h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2A18 18 0 0 1 2 4a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-.8 1.6l-.468.351a1 1 0 0 0-.292 1.233 14 14 0 0 0 6.392 6.384',
      DynamicScalePart([1, 1.1, 1], pivot: kViewBoxCenter),
    ),
  ],
);

/// Phone-missed: handset swells while the X gives a little pop.
const DynamicLucideIconData kPhoneMissedIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 900),
  parts: [
    DynamicIconPart.group(
      ['m16 2 6 6', 'm22 2-6 6'],
      DynamicScalePart([1, 1.2, 1]),
    ),
    DynamicIconPart(
      'M13.832 16.568a1 1 0 0 0 1.213-.303l.355-.465A2 2 0 0 1 17 15h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2A18 18 0 0 1 2 4a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-.8 1.6l-.468.351a1 1 0 0 0-.292 1.233 14 14 0 0 0 6.392 6.384',
      DynamicScalePart([1, 1.05, 1], pivot: kViewBoxCenter),
    ),
  ],
);

/// Phone-off: handset static while the slash draws itself across.
const DynamicLucideIconData kPhoneOffIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
        'M10.1 13.9a14 14 0 0 0 3.732 2.668 1 1 0 0 0 1.213-.303l.355-.465A2 2 0 0 1 17 15h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2 18 18 0 0 1-12.728-5.272'),
    DynamicIconPart(
        'M4.76 13.582A18 18 0 0 1 2 4a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-.8 1.6l-.468.351a1 1 0 0 0-.292 1.233 14 14 0 0 0 .244.473'),
    DynamicIconPart(
      'M22 2 2 22',
      DynamicDrawPart(duration: Duration(milliseconds: 400), curve: Curves.linear),
    ),
  ],
);

/// Pickaxe that swings to strike (rotate from the handle tip).
const DynamicLucideIconData kPickaxeIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 800),
  parts: [
    DynamicIconPart.group(
      [
        'm14 13-8.381 8.38a1 1 0 0 1-3.001-3L11 9.999',
        'M15.973 4.027A13 13 0 0 0 5.902 2.373c-1.398.342-1.092 2.158.277 2.601a19.9 19.9 0 0 1 5.822 3.024',
        'M16.001 11.999a19.9 19.9 0 0 1 3.024 5.824c.444 1.369 2.26 1.676 2.603.278A13 13 0 0 0 20 8.069',
        'M18.352 3.352a1.205 1.205 0 0 0-1.704 0l-5.296 5.296a1.205 1.205 0 0 0 0 1.704l2.296 2.296a1.205 1.205 0 0 0 1.704 0l5.296-5.296a1.205 1.205 0 0 0 0-1.704z',
      ],
      DynamicRotatePart([0, -20, 25, 0], pivot: Offset(2, 22)),
    ),
  ],
);

/// Play triangle that rocks: nudges back, tilts, then settles forward.
const DynamicLucideIconData kPlayIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 500),
  parts: [
    DynamicIconPart(
      'M6 3 L20 12 L6 21 L6 3 Z',
      DynamicCompositePart([
        DynamicTranslatePart([
          Offset.zero,
          Offset(-1, 0),
          Offset(2, 0),
          Offset.zero,
        ]),
        DynamicRotatePart([0, -10, 0, 0], pivot: kViewBoxCenter),
      ]),
    ),
  ],
);

/// Plug-zap: the bolt pulses (opacity loops while active).
const DynamicLucideIconData kPlugZapIcon = DynamicLucideIconData(
  duration: Duration(milliseconds: 1000),
  repeats: true,
  parts: [
    DynamicIconPart(
        'M6.3 20.3a2.4 2.4 0 0 0 3.4 0L12 18l-6-6-2.3 2.3a2.4 2.4 0 0 0 0 3.4Z'),
    DynamicIconPart('m2 22 3-3'),
    DynamicIconPart('M7.5 13.5 10 11'),
    DynamicIconPart('M10.5 16.5 13 14'),
    DynamicIconPart(
      'm18 3-4 4h6l-4 4',
      DynamicOpacityPart([1, 0.4, 1]),
    ),
  ],
);

const List<DynamicLucideIconEntry> gen15Icons = [
  DynamicLucideIconEntry('mic-off', kMicOffIcon, ['microphone', 'mute', 'audio']),
  DynamicLucideIconEntry('minimize', kMinimizeIcon, ['shrink', 'collapse', 'window']),
  DynamicLucideIconEntry(
      'monitor-check', kMonitorCheckIcon, ['screen', 'display', 'done']),
  DynamicLucideIconEntry('nfc', kNfcIcon, ['contactless', 'wireless', 'tap']),
  DynamicLucideIconEntry('panel-left-close', kPanelLeftCloseIcon,
      ['sidebar', 'collapse', 'layout']),
  DynamicLucideIconEntry(
      'panel-left-open', kPanelLeftOpenIcon, ['sidebar', 'expand', 'layout']),
  DynamicLucideIconEntry(
      'panel-right-open', kPanelRightOpenIcon, ['sidebar', 'expand', 'layout']),
  DynamicLucideIconEntry(
      'party-popper', kPartyPopperIcon, ['celebrate', 'confetti', 'party']),
  DynamicLucideIconEntry('pause', kPauseIcon, ['media', 'player', 'stop']),
  DynamicLucideIconEntry('pen-tool', kPenToolIcon, ['draw', 'vector', 'edit']),
  DynamicLucideIconEntry(
      'philippine-peso', kPhilippinePesoIcon, ['currency', 'money', 'php']),
  DynamicLucideIconEntry('phone', kPhoneIcon, ['call', 'telephone', 'contact']),
  DynamicLucideIconEntry('phone-call', kPhoneCallIcon, ['call', 'ring', 'telephone']),
  DynamicLucideIconEntry('phone-forwarded', kPhoneForwardedIcon,
      ['call', 'forward', 'redirect']),
  DynamicLucideIconEntry('phone-incoming', kPhoneIncomingIcon,
      ['call', 'incoming', 'receive']),
  DynamicLucideIconEntry(
      'phone-missed', kPhoneMissedIcon, ['call', 'missed', 'telephone']),
  DynamicLucideIconEntry('phone-off', kPhoneOffIcon, ['call', 'hangup', 'mute']),
  DynamicLucideIconEntry('pickaxe', kPickaxeIcon, ['mine', 'dig', 'tool']),
  DynamicLucideIconEntry('play', kPlayIcon, ['media', 'player', 'start']),
  DynamicLucideIconEntry(
      'plug-zap', kPlugZapIcon, ['charge', 'power', 'electricity']),
];
