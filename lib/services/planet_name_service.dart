import 'dart:convert';
import 'dart:io' show Platform;
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:onnxruntime_v2/onnxruntime_v2.dart';
import 'package:quickapps_logging/quickapps_logging.dart';

/// Loads a char-level LSTM ONNX model at startup and generates planet names
/// conditioned on 7-stat vectors.
///
/// The model expects stats in this order:
/// `[atmosphere, gravity, resources, lifesigns, temperature, water, radiation]`
/// where Flutter's `biodiversity` maps to the model's `lifesigns`.
class PlanetNameService {
  OrtSession? _session;
  Map<int, String> _idxToChar = {};
  int _hiddenSize = 192;
  int _maxLen = 20;
  int _sosIdx = 1;
  int _eosIdx = 2;
  int _padIdx = 0;

  /// Process-wide flag: inference-path failure is logged at most once, so
  /// per-planet spam doesn't drown out ops signal while preserving the
  /// deliberate fallback to procedural names.
  static bool _inferenceFailureLogged = false;

  bool get isReady => _session != null;

  /// Load model and vocab from assets. Safe to call multiple times.
  Future<void> init() async {
    if (_session != null) return;
    // ONNX Runtime not available on macOS; caller falls back to procedural names.
    if (Platform.isMacOS) return;

    OrtSessionOptions? sessionOptions;
    try {
      // Load vocab (wrapped separately for clearer error messages).
      final vocabStr =
          await rootBundle.loadString('assets/models/vocab.json');
      final Map<String, dynamic> vocabMap;
      try {
        vocabMap = jsonDecode(vocabStr) as Map<String, dynamic>;
      } catch (e) {
        throw FormatException(
            'PlanetNameService: failed to parse vocab.json: $e');
      }

      try {
        final rawIdx = vocabMap['idx_to_char'] as Map<String, dynamic>;
        _idxToChar = rawIdx.map((k, v) => MapEntry(int.parse(k), v as String));

        _hiddenSize = vocabMap['hidden_size'] as int? ?? 192;
        _maxLen = vocabMap['max_len'] as int? ?? 20;
        _sosIdx = vocabMap['sos_idx'] as int? ?? 1;
        _eosIdx = vocabMap['eos_idx'] as int? ?? 2;
        _padIdx = vocabMap['pad_idx'] as int? ?? 0;
      } catch (e) {
        throw FormatException(
            'PlanetNameService: vocab.json has unexpected shape: $e');
      }

      // Load ONNX model.
      final modelBytes =
          await rootBundle.load('assets/models/planet_namer_fp16.onnx');
      sessionOptions = OrtSessionOptions();
      _session = OrtSession.fromBuffer(
        modelBytes.buffer.asUint8List(),
        sessionOptions,
      );
    } catch (e, s) {
      debugPrint('PlanetNameService.init failed: $e\n$s');
      // Clean up any partially-initialized session so dispose() isn't relied on.
      try {
        _session?.release();
      } catch (e, st) {
        QaLogger.app.warning('ONNX release failed', e, st);
      }
      _session = null;
      rethrow;
    } finally {
      // Always release sessionOptions — whether init succeeded or failed
      // mid-way, it's no longer needed after this point.
      try {
        sessionOptions?.release();
      } catch (e, st) {
        QaLogger.app.warning('ONNX release failed', e, st);
      }
    }
  }

  /// Generate a planet name from 7 stats using ONNX inference.
  ///
  /// Falls back to empty string if model is not loaded (caller should
  /// use procedural fallback in that case).
  ///
  /// Async to yield to the event loop every 3 inference steps, preventing
  /// UI jank from the 200-400ms synchronous ONNX run.
  Future<String> generateName({
    required double atmosphere,
    required double gravity,
    required double resources,
    required double biodiversity,
    required double temperature,
    required double water,
    required double radiation,
    double samplingTemperature = 0.8,
    Random? random,
  }) async {
    if (_session == null) return '';

    // Stat order matches vocab.json: [atmo, grav, res, lifesigns, temp, water, rad]
    final stats =
        Float32List.fromList([atmosphere, gravity, resources, biodiversity, temperature, water, radiation]);
    final zeroStats = Float32List(7);

    var charIn = Int64List.fromList([_sosIdx]);
    var hIn = Float32List(_hiddenSize);
    var cIn = Float32List(_hiddenSize);

    final nameChars = <String>[];
    final rng = random ?? Random();
    final runOptions = OrtRunOptions();

    try {
      for (var step = 0; step < _maxLen; step++) {
        // Yield to event loop every 3 steps to prevent UI freeze.
        if (step % 3 == 0) await Future.delayed(Duration.zero);
        final statsInitTensor = OrtValueTensor.createTensorWithDataList(
          step == 0 ? stats : zeroStats,
          [1, 7],
        );
        final statsTensor = OrtValueTensor.createTensorWithDataList(
          stats,
          [1, 7],
        );
        final charInTensor = OrtValueTensor.createTensorWithDataList(
          charIn,
          [1, 1],
        );
        final hInTensor = OrtValueTensor.createTensorWithDataList(
          hIn,
          [1, 1, _hiddenSize],
        );
        final cInTensor = OrtValueTensor.createTensorWithDataList(
          cIn,
          [1, 1, _hiddenSize],
        );

        final outputs = _session!.run(runOptions, {
          'stats_init': statsInitTensor,
          'stats': statsTensor,
          'char_in': charInTensor,
          'h_in': hInTensor,
          'c_in': cInTensor,
        });

        // Extract outputs: logits (vocab_size), h_out (1,1,H), c_out (1,1,H)
        final logitsRaw = outputs[0]?.value;
        final hOutRaw = outputs[1]?.value;
        final cOutRaw = outputs[2]?.value;

        final logits = _flattenToDoubles(logitsRaw);
        hIn = _flattenToFloat32(hOutRaw);
        cIn = _flattenToFloat32(cOutRaw);

        // Release tensors for this step.
        statsInitTensor.release();
        statsTensor.release();
        charInTensor.release();
        hInTensor.release();
        cInTensor.release();
        for (final o in outputs) {
          o?.release();
        }

        // Sample next character.
        final charIdx = _sampleFromLogits(logits, samplingTemperature, rng);

        if (charIdx == _eosIdx || charIdx == _padIdx) break;

        final ch = _idxToChar[charIdx];
        if (ch != null) nameChars.add(ch);

        charIn = Int64List.fromList([charIdx]);
      }
    } catch (e, st) {
      // Deliberate fallback: caller uses procedural name when '' is returned.
      // Log once per process so ops see that inference is broken without
      // flooding logs on every planet generated.
      if (!_inferenceFailureLogged) {
        _inferenceFailureLogged = true;
        QaLogger.app.warning(
            'PlanetNameService.generateName inference failed (logged once per process; falling back to procedural names)',
            e,
            st);
      }
      return '';
    } finally {
      try {
        runOptions.release();
      } catch (e, st) {
        QaLogger.app.warning('ONNX release failed', e, st);
      }
    }

    return nameChars.join();
  }

  /// Temperature-scaled softmax sampling.
  int _sampleFromLogits(
      List<double> logits, double temperature, Random random) {
    if (temperature < 1e-6) {
      // Greedy.
      var bestIdx = 0;
      for (var i = 1; i < logits.length; i++) {
        if (logits[i] > logits[bestIdx]) bestIdx = i;
      }
      return bestIdx;
    }

    final scaled = List<double>.generate(
        logits.length, (i) => logits[i] / temperature);
    var maxVal = scaled[0];
    for (var i = 1; i < scaled.length; i++) {
      if (scaled[i] > maxVal) maxVal = scaled[i];
    }
    final exps =
        List<double>.generate(scaled.length, (i) => exp(scaled[i] - maxVal));
    var sum = 0.0;
    for (final e in exps) {
      sum += e;
    }

    var r = random.nextDouble();
    for (var i = 0; i < exps.length; i++) {
      r -= exps[i] / sum;
      if (r <= 0) return i;
    }
    return exps.length - 1;
  }

  /// Recursively flatten nested lists from ORT output to `List<double>`.
  List<double> _flattenToDoubles(dynamic value) {
    if (value is List) {
      return value.expand<double>((e) => _flattenToDoubles(e)).toList();
    }
    if (value is num) return [value.toDouble()];
    if (value is Float32List) return value.map((e) => e.toDouble()).toList();
    if (value is Float64List) return value.map((e) => e.toDouble()).toList();
    return [];
  }

  /// Recursively flatten nested lists from ORT output to Float32List.
  Float32List _flattenToFloat32(dynamic value) {
    final doubles = _flattenToDoubles(value);
    return Float32List.fromList(
        doubles.map((d) => d.toDouble()).toList().cast<double>());
  }

  void dispose() {
    try {
      _session?.release();
    } catch (e, st) {
      QaLogger.app.warning('ONNX release failed', e, st);
    }
    _session = null;
  }
}
