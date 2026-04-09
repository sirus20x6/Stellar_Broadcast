// ignore_for_file: avoid_print
import 'dart:io';
import 'package:yaml/yaml.dart';

void main(List<String> args) {
  final path = args.isNotEmpty ? args[0] : 'assets/events/events_full.yaml';
  final f = File(path);
  if (!f.existsSync()) {
    stderr.writeln('File not found: $path');
    exit(1);
  }

  final doc = loadYaml(f.readAsStringSync()) as YamlMap;
  final events = doc['events'] as YamlList;
  print('Total events: ${events.length}');

  final seen = <String>{};
  var dupes = 0;
  for (final e in events) {
    final id = (e as YamlMap)['id'] as String;
    if (!seen.add(id)) {
      print('  DUPLICATE: $id');
      dupes++;
    }
  }
  print('Unique IDs: ${seen.length}');
  if (dupes > 0) print('$dupes duplicate(s) found!');
  print('YAML is valid.');
}
