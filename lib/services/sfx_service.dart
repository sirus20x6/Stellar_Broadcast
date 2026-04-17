import 'dart:async';
import 'dart:math';

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
  static const warpEngine = 'AtWarpEngineHum.ogg';
  static const minorDamage = 'MinorScannerDamage.ogg';
  static const systemRepair = 'SystemRepair.ogg';
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
  /// Completion subscriptions for each active player — cancelled on cleanup
  /// so disposed players don't leak their onPlayerComplete listener.
  final Map<AudioPlayer, StreamSubscription<void>> _longSubs = {};

  /// Play a longer sound effect (>5s) using mediaPlayer mode.
  ///
  /// Replacement semantics: any currently-playing long audio is stopped first,
  /// and the normal looping bg music is ducked (paused) so the encounter track
  /// owns the music slot. `stopAllLongAudio()` brings bg music back.
  ///
  /// Without this, navigating rapidly between encounter screens (each of
  /// which calls playLong in initState) leaves multiple ~30-60s tracks playing
  /// simultaneously on top of bg music and stacking into a cacophony.
  Future<void> playLong(String filename, {double volume = 1.0}) async {
    final sfx = SfxPlayer();
    if (!sfx.enabled) return;
    await _disposeAllLongPlayers();
    await _pauseBgm();
    try {
      final player = await FlameAudio.playLongAudio(filename, volume: volume * sfx.volume);
      _longPlayers.add(player);
      // Remove from list when playback completes. Store the subscription
      // so we can cancel it if the player is disposed early.
      late final StreamSubscription<void> sub;
      sub = player.onPlayerComplete.listen((_) {
        _longPlayers.remove(player);
        _longSubs.remove(player);
        sub.cancel();
        player.dispose();
        // Last long player finished naturally — bring bg music back so
        // the screen isn't silent after the encounter track fades out.
        if (_longPlayers.isEmpty) {
          _resumeBgm();
        }
      });
      _longSubs[player] = sub;
    } catch (e) {
      QaLogger.audio.warning('Failed to play long SFX "$filename": $e');
    }
  }

  /// Stop and dispose every active long-audio player. By default also
  /// resumes the normal looping bg music so plain HUD screens (voyage,
  /// title, ending) aren't silent after the encounter track is cancelled.
  ///
  /// Pass `resumeBgMusic: false` from screens that are taking over the
  /// music slot themselves (e.g. game over wants dramatic silence and
  /// controls bg music separately via `GameMusic().stop()`).
  Future<void> stopAllLongAudio({bool resumeBgMusic = true}) async {
    await _disposeAllLongPlayers();
    if (resumeBgMusic) {
      await _resumeBgm();
    }
  }

  /// Stop and dispose the tracked long players without touching bg music.
  /// Internal helper for playLong (which handles bgm separately) and
  /// stopAllLongAudio (which resumes bgm afterwards).
  Future<void> _disposeAllLongPlayers() async {
    // Copy the list because player.stop/dispose mutates it via the complete
    // listener, and we don't want to iterate a list that's being modified.
    final players = List<AudioPlayer>.from(_longPlayers);
    _longPlayers.clear();
    for (final p in players) {
      try {
        final sub = _longSubs.remove(p);
        await sub?.cancel();
        await p.stop();
        await p.dispose();
      } catch (e) {
        QaLogger.audio.fine('_disposeAllLongPlayers: $e');
      }
    }
  }

  /// Pause the FlameAudio BGM stream. No-op if nothing is playing on it.
  /// Accessing FlameAudio.bgm directly rather than going through GameMusic
  /// avoids a circular import (GameMusic already imports this file).
  Future<void> _pauseBgm() async {
    try {
      await FlameAudio.bgm.pause();
    } catch (e) {
      QaLogger.audio.fine('_pauseBgm: $e');
    }
  }

  Future<void> _resumeBgm() async {
    try {
      await FlameAudio.bgm.resume();
    } catch (e) {
      QaLogger.audio.fine('_resumeBgm: $e');
    }
  }

  /// Pause all active long-audio players (app backgrounded).
  void pauseLongAudio() {
    for (final p in _longPlayers) {
      try {
        p.pause();
      } catch (e) {
        QaLogger.audio.fine('pauseLongAudio: $e');
      }
    }
  }

  /// Resume all active long-audio players (app foregrounded).
  void resumeLongAudio() {
    for (final p in _longPlayers) {
      try {
        p.resume();
      } catch (e) {
        QaLogger.audio.fine('resumeLongAudio: $e');
      }
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

  final _random = Random();

  /// Play with slight pitch variation (for repeated sounds like clicks).
  Future<void> playVaried(String filename, {double volume = 1.0}) async {
    final sfx = SfxPlayer();
    if (!sfx.enabled) return;
    try {
      final player = AudioPlayer();
      // Set random pitch/speed between 0.9 and 1.1.
      final pitch = 0.9 + _random.nextDouble() * 0.2;
      await player.setPlaybackRate(pitch);
      await player.setSourceAsset(filename);
      await player.setVolume(volume * sfx.volume);
      await player.resume();
      // Dispose when finished. Using .first auto-cancels the subscription.
      player.onPlayerComplete.first.then((_) => player.dispose());
    } catch (e) {
      QaLogger.audio.warning('Failed to play varied SFX "$filename": $e');
    }
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
  ///
  /// AudioPlayer.pause() returns a Future, so a synchronous try/catch won't
  /// see the PlatformException the plugin throws when the native player has
  /// already been disposed (a race we hit when lifecycle pause fires while
  /// the engine is being torn down). Use catchError to swallow it.
  void pauseEngineHum() {
    if (_enginePlaying) {
      _enginePlayer?.pause().catchError((Object e, StackTrace st) {
        QaLogger.audio.warning('Failed to pause engine hum', e, st);
      });
    }
  }

  /// Resume the engine hum (app foregrounded). Same async-throw caveat.
  void resumeEngineHum() {
    if (_enginePlaying) {
      _enginePlayer?.resume().catchError((Object e, StackTrace st) {
        QaLogger.audio.warning('Failed to resume engine hum', e, st);
      });
    }
  }
}
