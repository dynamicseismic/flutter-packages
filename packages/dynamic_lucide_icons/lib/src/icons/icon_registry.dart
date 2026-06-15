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
const List<DynamicLucideIconEntry> _curatedIcons = [
  // Rotate / swing
  DynamicLucideIconEntry('bell', kBellIcon, ['notification', 'alarm', 'ring']),
  DynamicLucideIconEntry('cog', kCogIcon, ['settings', 'gear', 'config']),
  DynamicLucideIconEntry('refresh-cw', kRefreshCwIcon, ['reload', 'sync', 'refresh']),
  DynamicLucideIconEntry('rotate-cw', kRotateCwIcon, ['rotate', 'redo', 'turn']),
  DynamicLucideIconEntry('plus', kPlusIcon, ['add', 'new', 'create']),
  DynamicLucideIconEntry('loader-circle', kLoaderCircleIcon, ['spinner', 'loading', 'progress']),
  DynamicLucideIconEntry('compass', kCompassIcon, ['navigation', 'direction', 'explore']),
  DynamicLucideIconEntry('moon', kMoonIcon, ['night', 'dark', 'theme']),
  // Translate / spring
  DynamicLucideIconEntry('download', kDownloadIcon, ['save', 'import', 'arrow']),
  DynamicLucideIconEntry('upload', kUploadIcon, ['export', 'share', 'arrow']),
  DynamicLucideIconEntry('arrow-down', kArrowDownIcon, ['down', 'arrow']),
  DynamicLucideIconEntry('arrow-right', kArrowRightIcon, ['right', 'arrow', 'next']),
  DynamicLucideIconEntry('send', kSendIcon, ['message', 'submit', 'plane']),
  DynamicLucideIconEntry('chevron-down', kChevronDownIcon, ['expand', 'down', 'caret']),
  DynamicLucideIconEntry('logout', kLogoutIcon, ['log out', 'sign out', 'exit']),
  DynamicLucideIconEntry('corner-down-left', kCornerDownLeftIcon, ['enter', 'return', 'arrow']),
  // Scale / pulse
  DynamicLucideIconEntry('heart', kHeartIcon, ['like', 'love', 'favorite']),
  DynamicLucideIconEntry('sparkles', kSparklesIcon, ['ai', 'magic', 'stars']),
  DynamicLucideIconEntry('search', kSearchIcon, ['find', 'magnifier', 'lookup']),
  DynamicLucideIconEntry('bookmark', kBookmarkIcon, ['save', 'tag', 'favorite']),
  DynamicLucideIconEntry('eye', kEyeIcon, ['view', 'visible', 'show', 'blink']),
  DynamicLucideIconEntry('battery-charging', kBatteryChargingIcon, ['power', 'energy', 'charge']),
  // Draw
  DynamicLucideIconEntry('activity', kActivityIcon, ['pulse', 'heartbeat', 'health']),
  DynamicLucideIconEntry('zap', kZapIcon, ['flash', 'bolt', 'lightning', 'energy']),
  DynamicLucideIconEntry('check', kCheckIcon, ['done', 'tick', 'ok', 'confirm']),
  DynamicLucideIconEntry('check-check', kCheckCheckIcon, ['done', 'read', 'double']),
  DynamicLucideIconEntry('heart-pulse', kHeartPulseIcon, ['health', 'heartbeat', 'medical']),
  DynamicLucideIconEntry('trending-up', kTrendingUpIcon, ['growth', 'chart', 'increase']),
  DynamicLucideIconEntry('square-pen', kSquarePenIcon, ['edit', 'write', 'compose']),
  DynamicLucideIconEntry('x', kXIcon, ['close', 'cancel', 'delete', 'remove']),
  // Staggered
  DynamicLucideIconEntry('wifi', kWifiIcon, ['signal', 'network', 'wireless']),
  DynamicLucideIconEntry('volume', kVolumeIcon, ['sound', 'audio', 'speaker']),
  DynamicLucideIconEntry('audio-lines', kAudioLinesIcon, ['equalizer', 'sound', 'waveform']),
  DynamicLucideIconEntry('radio', kRadioIcon, ['broadcast', 'signal', 'antenna']),
  DynamicLucideIconEntry('bluetooth-searching', kBluetoothSearchingIcon, ['bluetooth', 'pairing', 'connect']),
  DynamicLucideIconEntry('cast', kCastIcon, ['screen', 'airplay', 'stream']),
  DynamicLucideIconEntry('sun', kSunIcon, ['light', 'day', 'theme', 'brightness']),
  // Combos
  DynamicLucideIconEntry('lock', kLockIcon, ['secure', 'password', 'private']),
  DynamicLucideIconEntry('menu', kMenuIcon, ['hamburger', 'nav', 'list']),
];

/// Every animated icon shipped by this package, for galleries and search.
/// The curated starter set first, then the full generated catalog.
const List<DynamicLucideIconEntry> lucideAnimatedIcons = [
  ..._curatedIcons,
  ...generatedIcons,
];
