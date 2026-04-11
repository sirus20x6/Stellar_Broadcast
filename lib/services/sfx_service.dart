import 'package:flame_audio/flame_audio.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:quickapps_logging/quickapps_logging.dart';

/// Centralized SFX manager for Stellar Broadcast using flame_audio.
///
/// All SFX plays through FlameAudio.play() which handles concurrent
/// playback without stealing audio focus from background music.
class GameSfx {
  static final GameSfx _instance = GameSfx._();
  factory GameSfx() => _instance;
  GameSfx._();

  // ── Logical SFX keys → filenames ──────────────────────────────────────

  static const buttonClick = 'ButtonClick.ogg';
  static const introLogo = 'IntroLogo.ogg';
  static const scanningPlanet = 'ScanningPlanet.ogg';
  static const scanLineReveal = 'LineofScanDataRevealed.ogg';
  static const scanFailure = 'TemporarySystemDownForMaitenance.ogg';
  static const warpEngine = 'AtWarpEngineHum.ogg';
  static const minorDamage = 'MinorScannerDamage.ogg';
  static const systemFullLoss = 'SystemFullLoss.ogg';
  static const systemRepair = 'SystemRepair.ogg';
  static const systemDown = 'TemporarySystemDownForMaitenance.ogg';
  static const interestingFind = 'InterestingFind.ogg';
  static const spaceWhales = 'SpaceWhales.ogg';
  static const alienEden = 'AlienEdenPlanet.ogg';
  static const alienTech = 'AlienAbandonedTechcropolosPlanet.ogg';
  static const ghostShip = 'AlienCryptorGhostShip.ogg';
  static const mothershipFlyBy = 'Alient Mothership FlyBy.ogg';
  static const landingSequence = 'LandingSequence.ogg';
  static const criticalAlarm = 'Critical Alarm.ogg';
  static const criticalAlarm2 = 'Critical Alarm2.ogg';
  static const criticalAlarm3 = 'Critical Alarm3.ogg';
  static const success1 = 'Success1.ogg';
  static const success2 = 'Success2.ogg';

  /// Preload audio files into cache for fast playback.
  Future<void> initialize() async {
    try {
      await FlameAudio.audioCache.loadAll([
        buttonClick,
        introLogo,
        scanningPlanet,
        scanLineReveal,
        warpEngine,
        minorDamage,
        systemRepair,
        interestingFind,
        landingSequence,
        criticalAlarm,
        success1,
        success2,
      ]);
    } catch (e) {
      QaLogger.audio.warning('Failed to initialize audio cache: $e');
    }
  }

  /// Play a one-shot sound effect.
  Future<void> play(String filename, {double volume = 1.0}) async {
    final sfx = SfxPlayer();
    if (!sfx.enabled) return;
    try {
      await FlameAudio.play(filename, volume: volume * sfx.volume);
    } catch (e) {
      QaLogger.audio.warning('Failed to play SFX "$filename": $e');
    }
  }

  /// Active long-audio players (paused/resumed with app lifecycle).
  final List<AudioPlayer> _longPlayers = [];

  /// Play a longer sound effect (>5s) using mediaPlayer mode.
  Future<void> playLong(String filename, {double volume = 1.0}) async {
    final sfx = SfxPlayer();
    if (!sfx.enabled) return;
    try {
      final player = await FlameAudio.playLongAudio(filename, volume: volume * sfx.volume);
      _longPlayers.add(player);
      // Remove from list when playback completes.
      player.onPlayerComplete.listen((_) {
        _longPlayers.remove(player);
        player.dispose();
      });
    } catch (e) {
      QaLogger.audio.warning('Failed to play long SFX "$filename": $e');
    }
  }

  /// Pause all active long-audio players (app backgrounded).
  void pauseLongAudio() {
    for (final p in _longPlayers) {
      try { p.pause(); } catch (_) {}
    }
  }

  /// Resume all active long-audio players (app foregrounded).
  void resumeLongAudio() {
    for (final p in _longPlayers) {
      try { p.resume(); } catch (_) {}
    }
  }

  AudioPlayer? _introPlayer;

  Future<void> playIntroLogo({double volume = 0.7}) async {
    await stopIntroLogo();
    final sfx = SfxPlayer();
    if (!sfx.enabled) return;
    try {
      _introPlayer = await FlameAudio.playLongAudio(introLogo, volume: volume * sfx.volume);
    } catch (e) {
      QaLogger.audio.warning('Failed to play intro logo audio: $e');
    }
  }

  Future<void> stopIntroLogo() async {
    try {
      await _introPlayer?.stop();
      await _introPlayer?.dispose();
      _introPlayer = null;
    } catch (e) {
      QaLogger.audio.warning('Failed to stop intro logo audio: $e');
    }
  }

  /// Play with slight pitch variation (for repeated sounds like clicks).
  Future<void> playVaried(String filename, {double volume = 1.0}) async {
    await play(filename, volume: volume);
  }

  // ── Engine hum (looping SFX) ──────────────────────────────────────────

  AudioPlayer? _enginePlayer;
  bool _enginePlaying = false;

  /// Start the engine hum loop. Uses loopLongAudio (30s file).
  Future<void> startEngineHum() async {
    if (_enginePlaying) return;
    final sfx = SfxPlayer();
    if (!sfx.enabled) return;
    try {
      _enginePlayer = await FlameAudio.loopLongAudio(warpEngine, volume: 0.8 * sfx.volume);
      _enginePlaying = true;
    } catch (e) {
      QaLogger.audio.warning('Failed to start engine hum: $e');
    }
  }

  /// Stop the engine hum.
  Future<void> stopEngineHum() async {
    if (!_enginePlaying) return;
    try {
      await _enginePlayer?.stop();
      await _enginePlayer?.dispose();
      _enginePlayer = null;
      _enginePlaying = false;
    } catch (e) {
      QaLogger.audio.warning('Failed to stop engine hum: $e');
    }
  }

  /// Pause the engine hum (app backgrounded).
  void pauseEngineHum() {
    if (_enginePlaying) {
      try {
        _enginePlayer?.pause();
      } catch (e) {
        QaLogger.audio.warning('Failed to pause engine hum: $e');
      }
    }
  }

  /// Resume the engine hum (app foregrounded).
  void resumeEngineHum() {
    if (_enginePlaying) {
      try {
        _enginePlayer?.resume();
      } catch (e) {
        QaLogger.audio.warning('Failed to resume engine hum: $e');
      }
    }
  }
}
