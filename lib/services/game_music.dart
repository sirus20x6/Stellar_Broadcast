import 'package:flame_audio/flame_audio.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:quickapps_logging/quickapps_logging.dart';

import 'sfx_service.dart';

/// Manages background music and ambient audio for Stellar Broadcast.
///
/// All audio uses FlameAudio which sets AudioContextConfigFocus.mixWithOthers
/// by default, so all players can coexist.
///
/// Two layers:
/// - **Music**: loopLongAudio for bgmusic / planet themes (swapped by stopping
///   old + starting new).
/// - **Engine hum**: loop for the short warp engine ambient.
class GameMusic {
  static final GameMusic _instance = GameMusic._();
  factory GameMusic() => _instance;
  GameMusic._();

  String? _currentTrack;

  // Filenames (relative to assets/audio/).
  static const _bgMusic = 'bgmusic.ogg';
  static const _alienEden = 'AlienEdenPlanet.ogg';
  static const _alienTech = 'AlienAbandonedTechcropolosPlanet.ogg';
  static const _ghostShip = 'AlienCryptorGhostShip.ogg';

  // ── Music layer ───────────────────────────────────────────────────────

  /// Start the default background music.
  Future<void> playBgMusic() async => _playTrack(_bgMusic);

  /// Play planet-specific music based on planet characteristics.
  Future<void> playPlanetMusic({
    double habitability = 0.5,
    double anomaly = 0.5,
    List<String> surfaceFeatures = const [],
  }) async {
    String track;
    if (surfaceFeatures.contains('ancient_ruins') || anomaly > 0.7) {
      track = _alienTech;
    } else if (habitability > 0.6) {
      track = _alienEden;
    } else if (habitability < 0.3) {
      track = _ghostShip;
    } else {
      track = _ghostShip;
    }
    await _playTrack(track);
  }

  /// Return to bgmusic from planet music.
  Future<void> returnToBgMusic() async => _playTrack(_bgMusic);

  Future<void> _playTrack(String filename) async {
    if (_currentTrack == filename) return;
    final music = MusicPlayer();
    if (!music.enabled) return;
    try {
      await FlameAudio.bgm.play(filename, volume: music.volume);
      _currentTrack = filename;
    } catch (e) {
      QaLogger.audio.warning('Failed to play music track "$filename": $e');
    }
  }

  // ── Engine hum (delegates to GameSfx) ──────────────────────────────

  /// Start the engine hum loop on top of whatever music is playing.
  Future<void> startEngineHum() async {
    // Import would be circular, so we access it via the singleton.
    final sfx = _sfxInstance ??= GameSfx();
    await sfx.startEngineHum();
  }

  /// Stop the engine hum.
  Future<void> stopEngineHum() async {
    final sfx = _sfxInstance ??= GameSfx();
    await sfx.stopEngineHum();
  }

  /// Pause the engine hum (for app backgrounding).
  void pauseEngineHum() {
    final sfx = _sfxInstance ??= GameSfx();
    sfx.pauseEngineHum();
  }

  /// Resume the engine hum (for app foregrounding).
  void resumeEngineHum() {
    final sfx = _sfxInstance ??= GameSfx();
    sfx.resumeEngineHum();
  }

  GameSfx? _sfxInstance;

  // ── Global controls ───────────────────────────────────────────────────

  /// Stop everything (e.g. for game over dramatic silence).
  Future<void> stop({double fadeOutSeconds = 1.0}) async {
    try {
      await FlameAudio.bgm.stop();
      _currentTrack = null;
    } catch (e) {
      QaLogger.audio.warning('Failed to stop music: $e');
    }
    await stopEngineHum();
  }
}
