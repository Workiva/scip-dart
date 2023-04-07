import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

/// Small utility that stores a cache of versions to the paths to their
/// root directories.
/// 
/// These values are cached to reduce the performance needed to read files
/// and parse the results. Since paths are fully qualified, calls to [versionFor]
/// are deterministic, and constant. Hence the static/global nature of the cache 
class PackageVersionCache {
  static Map<String, Version> _cache = {};

  static Version versionFor(String path) {
    if (!_cache.containsKey(path)) {   
      final file = File(p.join(path, 'pubspec.yaml'));
      if (!file.existsSync()) throw Exception('Unable to locate pubspec.yaml for $path');

      final pubspec = Pubspec.parse(file.readAsStringSync());
      _cache[path] = pubspec.version!;
    }

    return _cache[path]!;
  }
}