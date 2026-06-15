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
const List<LucideIconEntry> _curatedIcons = [
  // Rotate / swing
  LucideIconEntry('bell', kBellIcon, ['notification', 'alarm', 'ring']),
  LucideIconEntry('cog', kCogIcon, ['settings', 'gear', 'config']),
  LucideIconEntry('refresh-cw', kRefreshCwIcon, ['reload', 'sync', 'refresh']),
  LucideIconEntry('rotate-cw', kRotateCwIcon, ['rotate', 'redo', 'turn']),
  LucideIconEntry('plus', kPlusIcon, ['add', 'new', 'create']),
  LucideIconEntry('loader-circle', kLoaderCircleIcon, ['spinner', 'loading', 'progress']),
  LucideIconEntry('compass', kCompassIcon, ['navigation', 'direction', 'explore']),
  LucideIconEntry('moon', kMoonIcon, ['night', 'dark', 'theme']),
  // Translate / spring
  LucideIconEntry('download', kDownloadIcon, ['save', 'import', 'arrow']),
  LucideIconEntry('upload', kUploadIcon, ['export', 'share', 'arrow']),
  LucideIconEntry('arrow-down', kArrowDownIcon, ['down', 'arrow']),
  LucideIconEntry('arrow-right', kArrowRightIcon, ['right', 'arrow', 'next']),
  LucideIconEntry('send', kSendIcon, ['message', 'submit', 'plane']),
  LucideIconEntry('chevron-down', kChevronDownIcon, ['expand', 'down', 'caret']),
  LucideIconEntry('logout', kLogoutIcon, ['log out', 'sign out', 'exit']),
  LucideIconEntry('corner-down-left', kCornerDownLeftIcon, ['enter', 'return', 'arrow']),
  // Scale / pulse
  LucideIconEntry('heart', kHeartIcon, ['like', 'love', 'favorite']),
  LucideIconEntry('sparkles', kSparklesIcon, ['ai', 'magic', 'stars']),
  LucideIconEntry('search', kSearchIcon, ['find', 'magnifier', 'lookup']),
  LucideIconEntry('bookmark', kBookmarkIcon, ['save', 'tag', 'favorite']),
  LucideIconEntry('eye', kEyeIcon, ['view', 'visible', 'show', 'blink']),
  LucideIconEntry('battery-charging', kBatteryChargingIcon, ['power', 'energy', 'charge']),
  // Draw
  LucideIconEntry('activity', kActivityIcon, ['pulse', 'heartbeat', 'health']),
  LucideIconEntry('zap', kZapIcon, ['flash', 'bolt', 'lightning', 'energy']),
  LucideIconEntry('check', kCheckIcon, ['done', 'tick', 'ok', 'confirm']),
  LucideIconEntry('check-check', kCheckCheckIcon, ['done', 'read', 'double']),
  LucideIconEntry('heart-pulse', kHeartPulseIcon, ['health', 'heartbeat', 'medical']),
  LucideIconEntry('trending-up', kTrendingUpIcon, ['growth', 'chart', 'increase']),
  LucideIconEntry('square-pen', kSquarePenIcon, ['edit', 'write', 'compose']),
  LucideIconEntry('x', kXIcon, ['close', 'cancel', 'delete', 'remove']),
  // Staggered
  LucideIconEntry('wifi', kWifiIcon, ['signal', 'network', 'wireless']),
  LucideIconEntry('volume', kVolumeIcon, ['sound', 'audio', 'speaker']),
  LucideIconEntry('audio-lines', kAudioLinesIcon, ['equalizer', 'sound', 'waveform']),
  LucideIconEntry('radio', kRadioIcon, ['broadcast', 'signal', 'antenna']),
  LucideIconEntry('bluetooth-searching', kBluetoothSearchingIcon, ['bluetooth', 'pairing', 'connect']),
  LucideIconEntry('cast', kCastIcon, ['screen', 'airplay', 'stream']),
  LucideIconEntry('sun', kSunIcon, ['light', 'day', 'theme', 'brightness']),
  // Combos
  LucideIconEntry('lock', kLockIcon, ['secure', 'password', 'private']),
  LucideIconEntry('menu', kMenuIcon, ['hamburger', 'nav', 'list']),
];

/// Every animated icon shipped by this package, for galleries and search.
/// The curated starter set first, then the full generated catalog.
const List<LucideIconEntry> lucideAnimatedIcons = [
  ..._curatedIcons,
  ...generatedIcons,
];
