import 'combo_icons.dart';
import 'draw_icons.dart';
import 'gen/gen_icons.dart';
import 'icon_entry.dart';
import 'rotate_icons.dart';
import 'scale_icons.dart';
import 'stagger_icons.dart';
import 'translate_icons.dart';

export 'icon_entry.dart';

/// The hand-tuned starter set (one example of every animation archetype).
const List<IconEntry> _curatedIcons = [
  // Rotate / swing
  IconEntry('bell', kBellIcon, ['notification', 'alarm', 'ring']),
  IconEntry('cog', kCogIcon, ['settings', 'gear', 'config']),
  IconEntry('refresh-cw', kRefreshCwIcon, ['reload', 'sync', 'refresh']),
  IconEntry('rotate-cw', kRotateCwIcon, ['rotate', 'redo', 'turn']),
  IconEntry('plus', kPlusIcon, ['add', 'new', 'create']),
  IconEntry('loader-circle', kLoaderCircleIcon, [
    'spinner',
    'loading',
    'progress',
  ]),
  IconEntry('compass', kCompassIcon, ['navigation', 'direction', 'explore']),
  IconEntry('moon', kMoonIcon, ['night', 'dark', 'theme']),
  // Translate / spring
  IconEntry('download', kDownloadIcon, ['save', 'import', 'arrow']),
  IconEntry('upload', kUploadIcon, ['export', 'share', 'arrow']),
  IconEntry('arrow-down', kArrowDownIcon, ['down', 'arrow']),
  IconEntry('arrow-right', kArrowRightIcon, ['right', 'arrow', 'next']),
  IconEntry('send', kSendIcon, ['message', 'submit', 'plane']),
  IconEntry('chevron-down', kChevronDownIcon, ['expand', 'down', 'caret']),
  IconEntry('logout', kLogoutIcon, ['log out', 'sign out', 'exit']),
  IconEntry('corner-down-left', kCornerDownLeftIcon, [
    'enter',
    'return',
    'arrow',
  ]),
  // Scale / pulse
  IconEntry('heart', kHeartIcon, ['like', 'love', 'favorite']),
  IconEntry('sparkles', kSparklesIcon, ['ai', 'magic', 'stars']),
  IconEntry('search', kSearchIcon, ['find', 'magnifier', 'lookup']),
  IconEntry('bookmark', kBookmarkIcon, ['save', 'tag', 'favorite']),
  IconEntry('eye', kEyeIcon, ['view', 'visible', 'show', 'blink']),
  IconEntry('battery-charging', kBatteryChargingIcon, [
    'power',
    'energy',
    'charge',
  ]),
  // Draw
  IconEntry('activity', kActivityIcon, ['pulse', 'heartbeat', 'health']),
  IconEntry('zap', kZapIcon, ['flash', 'bolt', 'lightning', 'energy']),
  IconEntry('check', kCheckIcon, ['done', 'tick', 'ok', 'confirm']),
  IconEntry('check-check', kCheckCheckIcon, ['done', 'read', 'double']),
  IconEntry('heart-pulse', kHeartPulseIcon, ['health', 'heartbeat', 'medical']),
  IconEntry('trending-up', kTrendingUpIcon, ['growth', 'chart', 'increase']),
  IconEntry('square-pen', kSquarePenIcon, ['edit', 'write', 'compose']),
  IconEntry('x', kXIcon, ['close', 'cancel', 'delete', 'remove']),
  // Staggered
  IconEntry('wifi', kWifiIcon, ['signal', 'network', 'wireless']),
  IconEntry('volume', kVolumeIcon, ['sound', 'audio', 'speaker']),
  IconEntry('audio-lines', kAudioLinesIcon, ['equalizer', 'sound', 'waveform']),
  IconEntry('radio', kRadioIcon, ['broadcast', 'signal', 'antenna']),
  IconEntry('bluetooth-searching', kBluetoothSearchingIcon, [
    'bluetooth',
    'pairing',
    'connect',
  ]),
  IconEntry('cast', kCastIcon, ['screen', 'airplay', 'stream']),
  IconEntry('sun', kSunIcon, ['light', 'day', 'theme', 'brightness']),
  // Combos
  IconEntry('lock', kLockIcon, ['secure', 'password', 'private']),
  IconEntry('menu', kMenuIcon, ['hamburger', 'nav', 'list']),
];

/// Every animated icon shipped by this package, for galleries and search.
/// The curated starter set first, then the full generated catalog.
const List<IconEntry> lucideIcons = [..._curatedIcons, ...generatedIcons];
