import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

/// Lightweight audio manager for background music and one-shot sound effects.
///
/// All methods are wrapped in try-catch so that missing audio assets never
/// crash the app — they simply log a warning.
class AudioService {
  AudioService._();

  static AudioPlayer? _musicPlayer;
  static AudioPlayer? _sfxPlayer;

  // ---------------------------------------------------------------------------
  // Initialization
  // ---------------------------------------------------------------------------

  /// Create the player instances. Call once at app startup.
  static Future<void> init() async {
    try {
      _musicPlayer = AudioPlayer();
      _sfxPlayer = AudioPlayer();
      debugPrint('AudioService: initialized');
    } catch (e) {
      debugPrint('AudioService: Failed to initialize — $e');
    }
  }

  // ---------------------------------------------------------------------------
  // Background music
  // ---------------------------------------------------------------------------

  /// Start looping the ambient space background track.
  static Future<void> playBackgroundMusic() async {
    try {
      await _musicPlayer?.setReleaseMode(ReleaseMode.loop);
      await _musicPlayer?.play(AssetSource('audio/ambient.mp3'));
      debugPrint('AudioService: Background music started');
    } catch (e) {
      debugPrint('AudioService: Failed to play background music — $e');
    }
  }

  /// Stop background music playback.
  static Future<void> stopBackgroundMusic() async {
    try {
      await _musicPlayer?.stop();
    } catch (e) {
      debugPrint('AudioService: Failed to stop background music — $e');
    }
  }

  // ---------------------------------------------------------------------------
  // Sound effects
  // ---------------------------------------------------------------------------

  /// Play a one-shot sound effect by [name] (without extension).
  ///
  /// For example, `playSfx('scan')` plays `audio/scan.mp3`.
  static Future<void> playSfx(String name) async {
    try {
      await _sfxPlayer?.play(AssetSource('audio/$name.mp3'));
    } catch (e) {
      debugPrint('AudioService: Failed to play SFX "$name" — $e');
    }
  }

  // ---------------------------------------------------------------------------
  // Volume
  // ---------------------------------------------------------------------------

  /// Set background music volume (0.0 – 1.0).
  static Future<void> setMusicVolume(double volume) async {
    try {
      await _musicPlayer?.setVolume(volume.clamp(0.0, 1.0));
    } catch (e) {
      debugPrint('AudioService: Failed to set music volume — $e');
    }
  }

  // ---------------------------------------------------------------------------
  // Cleanup
  // ---------------------------------------------------------------------------

  /// Dispose both player instances and free resources.
  static Future<void> dispose() async {
    try {
      await _musicPlayer?.dispose();
      await _sfxPlayer?.dispose();
      _musicPlayer = null;
      _sfxPlayer = null;
      debugPrint('AudioService: disposed');
    } catch (e) {
      debugPrint('AudioService: Failed to dispose — $e');
    }
  }
}
