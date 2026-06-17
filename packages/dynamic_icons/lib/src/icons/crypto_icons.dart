import 'package:flutter/animation.dart';

import '../core/core.dart';
import 'icon_entry.dart';

/// The animated crypto / chain icon definitions (filled brand marks).
///
/// Glyph geometry is taken from each project's official brand mark (see
/// LICENSE); the motion is layered on with this package's engine. Each
/// icon maps onto one animation archetype:
///
///  * Ethereum — facets assemble (staggered pop + fade)
///  * Solana   — bars slide in, staggered
///  * Bittensor — strokes wipe on
///  * BNB      — diamond spins (looping)
///  * Polygon  — playful bounce-tilt

const Color _white = Color(0xFFFFFFFF);

// ---------------------------------------------------------------------------
// Bittensor (τ) — two filled strokes that wipe on in sequence.
// ---------------------------------------------------------------------------

const String _bittensorBar =
    'M123.327 99C105.493 99 91 113.774 91 131.636H235.673C253.507 131.636 268 116.862 268 99H123.327Z';
const String _bittensorHook =
    'M198.31 244.782V166.898C198.31 147.439 182.275 131.585 162.848 131.585V256.055C162.848 280.815 183.817 289 196.768 289C207.51 289 213.574 287.147 220.872 281.999C200.417 279.837 198.31 267.483 198.31 244.782Z';

IconPart _bittensorBarPart(Color c) => IconPart.fill(
  _bittensorBar,
  color: c,
  animation: const ClipWipePart(
    duration: Duration(milliseconds: 300),
    curve: Curves.easeOut,
  ),
);

IconPart _bittensorHookPart(Color c) => IconPart.fill(
  _bittensorHook,
  color: c,
  animation: const ClipWipePart(
    direction: WipeDirection.topToBottom,
    delay: Duration(milliseconds: 160),
    duration: Duration(milliseconds: 400),
    curve: Curves.easeOut,
  ),
);

/// Bittensor — light chip (`#F0F3FA`) with a near-black mark.
final DynamicIconData kBittensorIcon = DynamicIconData(
  backgroundColor: const Color(0xFFF0F3FA),
  style: IconStyle.fill,
  viewBox: 360,
  duration: const Duration(milliseconds: 640),
  parts: [
    _bittensorBarPart(const Color(0xFF14161A)),
    _bittensorHookPart(const Color(0xFF14161A)),
  ],
);

/// Bittensor EVM — dark chip (`#14161A`) with a white mark (same motion).
final DynamicIconData kBittensorEvmIcon = DynamicIconData(
  backgroundColor: const Color(0xFF14161A),
  style: IconStyle.fill,
  viewBox: 360,
  duration: const Duration(milliseconds: 640),
  parts: [_bittensorBarPart(_white), _bittensorHookPart(_white)],
);

// ---------------------------------------------------------------------------
// BNB — the diamond cluster spins continuously while active.
// ---------------------------------------------------------------------------

/// BNB — gold chip with a white diamond cluster that spins.
const DynamicIconData kBnbIcon = DynamicIconData(
  backgroundColor: Color(0xFFF0B90B),
  style: IconStyle.fill,
  viewBox: 360,
  duration: Duration(milliseconds: 1300),
  repeats: true,
  parts: [
    IconPart.fillGroup(
      [
        'M105.306 179.535L105.423 223.394L142.007 245.323V271L84.0131 236.352V166.71L105.306 179.535ZM105.306 135.677V161.235L84 148.396V122.839L105.306 110L126.716 122.839L105.306 135.677ZM157.284 122.839L178.59 110L200 122.839L178.59 135.677L157.284 122.839Z',
        'M120 213.781V188.232L141.643 201.007V226.436L120 213.781ZM157.163 253.796L178.806 266.571L200.555 253.796V279.226L178.806 292L157.163 279.226V253.796ZM231.595 122.774L253.238 110L274.987 122.774V148.204L253.238 160.978V135.549L231.595 122.774ZM253.238 222.826L253.357 179.187L275 166.413V235.706L216.088 270.181V244.632L253.238 222.826Z',
        'M238 214.081L217 227V201.04L238 188V214.081Z',
        'M237.881 145.225L238 170.775L200.68 192.596V236.344L179.007 249L157.334 236.344V192.596L120.013 170.775V145.225L141.779 132.45L178.874 154.376L216.194 132.45L237.973 145.225H237.881ZM120 101.596L178.887 67L237.881 101.596L216.208 114.371L178.887 92.4446L141.673 114.371L120 101.596Z',
      ],
      color: _white,
      animation: RotatePart([0, 360], curve: Curves.linear),
    ),
  ],
);

// ---------------------------------------------------------------------------
// Ethereum — six facets pop in from the diamond's centre, staggered.
// ---------------------------------------------------------------------------

const Offset _ethCenter = Offset(184.66, 180);
const SpringCurve _ethSpring = SpringCurve(stiffness: 240, damping: 17);

IconPart _ethFacet(String d, double tier, Duration delay) => IconPart.fill(
  d,
  color: _white,
  opacity: tier,
  animation: CompositePart([
    ScalePart(
      const [0.1, 1],
      pivot: _ethCenter,
      delay: delay,
      duration: const Duration(milliseconds: 360),
      curve: _ethSpring,
    ),
    OpacityPart(
      const [0, 1],
      delay: delay,
      duration: const Duration(milliseconds: 200),
    ),
  ]),
);

/// Ethereum — periwinkle chip with the faceted diamond assembling.
final DynamicIconData kEthereumIcon = DynamicIconData(
  backgroundColor: const Color(0xFF627EEA),
  style: IconStyle.fill,
  viewBox: 360,
  duration: const Duration(milliseconds: 720),
  parts: [
    // Top half.
    _ethFacet(
      'M184.669 67.5L114.375 182.062L184.669 150.656V67.5Z',
      1,
      Duration.zero,
    ),
    _ethFacet(
      'M184.669 67.5V150.656L254.953 182.062L184.669 67.5Z',
      0.602,
      const Duration(milliseconds: 40),
    ),
    // Middle band.
    _ethFacet(
      'M114.375 182.063L184.669 222.873V150.676L114.375 182.063Z',
      0.602,
      const Duration(milliseconds: 110),
    ),
    _ethFacet(
      'M184.669 222.873L254.953 182.063L184.669 150.676V222.873Z',
      0.2,
      const Duration(milliseconds: 150),
    ),
    // Bottom half.
    _ethFacet(
      'M184.669 292.454V235.941L114.375 195.15L184.669 292.454Z',
      1,
      const Duration(milliseconds: 220),
    ),
    _ethFacet(
      'M184.669 235.95V292.454L255 195.15L184.669 235.95Z',
      0.602,
      const Duration(milliseconds: 260),
    ),
  ],
);

// ---------------------------------------------------------------------------
// Polygon — a single mark that gives a playful bounce-and-tilt.
// ---------------------------------------------------------------------------

/// Polygon — violet chip with a bouncing, tilting mark.
const DynamicIconData kPolygonIcon = DynamicIconData(
  backgroundColor: Color(0xFF6C00F6),
  style: IconStyle.fill,
  viewBox: 360,
  duration: Duration(milliseconds: 700),
  parts: [
    IconPart.fill(
      'M218.804 99.5819L168.572 128.432V218.473L140.856 234.539L112.97 218.46V186.313L140.856 170.39L158.786 180.788V154.779L140.699 144.511L90.4795 173.687V231.399L140.869 260.418L191.088 231.399V141.371L218.974 125.291L246.846 141.371V173.374L218.974 189.597L200.887 179.107V204.986L218.804 215.319L269.519 186.47V128.432L218.804 99.5819Z',
      color: _white,
      animation: CompositePart([
        ScalePart([1, 0.86, 1]),
        RotatePart([0, -16, 0]),
      ]),
    ),
  ],
);

// ---------------------------------------------------------------------------
// Solana — three gradient bars slide in from the left, top bar first.
// ---------------------------------------------------------------------------

const String _solanaGlyph =
    'M284.903 233.648L249.741 270.467C248.977 271.267 248.052 271.904 247.024 272.34C245.996 272.776 244.888 273.001 243.768 273H77.0821C76.2867 273 75.5087 272.773 74.8436 272.347C74.1785 271.921 73.6553 271.315 73.3383 270.603C73.0213 269.891 72.9243 269.104 73.0591 268.338C73.194 267.573 73.5549 266.863 74.0975 266.295L109.286 229.476C110.049 228.678 110.97 228.042 111.995 227.606C113.019 227.17 114.124 226.945 115.242 226.943H281.918C282.713 226.943 283.491 227.17 284.157 227.595C284.821 228.021 285.344 228.628 285.663 229.34C285.979 230.052 286.076 230.839 285.941 231.604C285.806 232.37 285.445 233.08 284.903 233.648ZM249.741 159.504C248.977 158.705 248.052 158.067 247.024 157.631C245.996 157.196 244.888 156.971 243.768 156.972H77.0821C76.2867 156.972 75.5087 157.198 74.8436 157.624C74.1785 158.05 73.6553 158.656 73.3383 159.368C73.0213 160.081 72.9243 160.868 73.0591 161.633C73.194 162.398 73.5549 163.108 74.0975 163.676L109.286 200.496C110.049 201.293 110.97 201.929 111.995 202.365C113.019 202.801 114.124 203.027 115.242 203.028H281.918C282.713 203.028 283.491 202.802 284.157 202.376C284.821 201.95 285.344 201.344 285.663 200.632C285.979 199.919 286.076 199.132 285.941 198.367C285.806 197.602 285.445 196.892 284.903 196.324L249.741 159.504ZM77.0821 133.057H243.768C244.888 133.058 245.996 132.833 247.024 132.397C248.052 131.961 248.977 131.324 249.741 130.524L284.903 93.7049C285.445 93.1371 285.806 92.4269 285.941 91.6616C286.076 90.8963 285.979 90.1092 285.663 89.397C285.344 88.6848 284.821 88.0786 284.157 87.6527C283.491 87.2269 282.713 87 281.918 87H115.242C114.124 87.0019 113.019 87.2276 111.995 87.6634C110.97 88.0991 110.049 88.7355 109.286 89.5332L74.1066 126.352C73.5645 126.919 73.2038 127.629 73.0686 128.393C72.9334 129.158 73.0297 129.944 73.3456 130.656C73.6615 131.368 74.1833 131.974 74.847 132.401C75.5107 132.827 76.2875 133.055 77.0821 133.057Z';

const DynamicLinearGradient _solanaGradient = DynamicLinearGradient(
  from: Offset(90.9797, 277.433),
  to: Offset(261.114, 81.0016),
  colors: [
    Color(0xFF9945FF),
    Color(0xFF8752F3),
    Color(0xFF5497D5),
    Color(0xFF43B4CA),
    Color(0xFF28E0B9),
    Color(0xFF19FB9B),
  ],
  stops: [0.08, 0.3, 0.5, 0.6, 0.72, 0.97],
);

/// Solana — black chip with three gradient bars that slide in.
final DynamicIconData kSolanaIcon = _buildSolanaIcon();

DynamicIconData _buildSolanaIcon() {
  // The mark is one path of three closed bars; split on `Z` to animate each.
  // Order after split: [0] bottom bar, [1] middle bar, [2] top bar.
  final segs = _solanaGlyph
      .split('Z')
      .where((s) => s.trim().isNotEmpty)
      .map((s) => '$s Z')
      .toList(growable: false);
  const delays = [
    Duration(milliseconds: 160), // bottom — last
    Duration(milliseconds: 80), // middle
    Duration.zero, // top — first
  ];
  final parts = <IconPart>[
    for (var i = 0; i < segs.length; i++)
      IconPart.fill(
        segs[i],
        gradient: _solanaGradient,
        animation: CompositePart([
          TranslatePart(
            const [Offset(-40, 0), Offset.zero],
            delay: i < delays.length ? delays[i] : Duration.zero,
            duration: const Duration(milliseconds: 380),
            curve: Curves.easeOutCubic,
          ),
          OpacityPart(
            const [0, 1],
            delay: i < delays.length ? delays[i] : Duration.zero,
            duration: const Duration(milliseconds: 240),
          ),
        ]),
      ),
  ];
  return DynamicIconData(
    backgroundColor: const Color(0xFF000000),
    style: IconStyle.fill,
    viewBox: 360,
    duration: const Duration(milliseconds: 620),
    parts: parts,
  );
}

/// The animated crypto chain icons, for galleries and search.
final List<IconEntry> cryptoIcons = [
  IconEntry.symbol('ethereum', 'ETH', kEthereumIcon, [
    'eth',
    'ether',
    'evm',
    'chain',
  ]),
  IconEntry.symbol('solana', 'SOL', kSolanaIcon, ['sol', 'chain', 'gradient']),
  IconEntry.symbol('bnb', 'BNB', kBnbIcon, ['binance', 'bsc', 'chain']),
  IconEntry.symbol('polygon', 'POL', kPolygonIcon, [
    'matic',
    'pol',
    'chain',
    'l2',
  ]),
  IconEntry.symbol('bittensor', 'TAO', kBittensorIcon, [
    'tao',
    'subnet',
    'chain',
  ]),
  IconEntry.symbol('bittensor-evm', 'TAO', kBittensorEvmIcon, [
    'tao',
    'evm',
    'subnet',
    'chain',
  ]),
];

/// Namespaced crypto / chain brand marks — `Crypto.ethereum`,
/// `Crypto.bnb`, … Mirrors Flutter's `Icons` convention.
abstract final class Crypto {
  static final ethereum = kEthereumIcon;
  static final solana = kSolanaIcon;
  static const bnb = kBnbIcon;
  static const polygon = kPolygonIcon;
  static final bittensor = kBittensorIcon;
  // ignore: non_constant_identifier_names
  static final bittensor_evm = kBittensorEvmIcon;
}
