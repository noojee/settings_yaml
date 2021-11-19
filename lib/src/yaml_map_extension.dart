import 'package:yaml/yaml.dart';

import 'yaml.dart';

extension YamlMapEx on YamlMap {
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    forEach((k, v) {
      if (k is YamlScalar) {
        map[(k).value.toString()] = convertNode(v);
      } else {
        map[k.toString()] = convertNode(v);
      }
    });
    return map;
  }
}
