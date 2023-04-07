import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pubspec_parse/pubspec_parse.dart';

/// Small utility that stores a cache of package paths to their versions.
///
/// These values are cached to reduce the performance needed to read files
/// and parse the results. Since paths are fully qualified, calls to [versionFor]
/// are deterministic, and constant. Hence the static/global nature of the cache
class PackageVersionCache {
  static Map<String, String> _cache = {};

  static String versionFor(String path) {
    if (!p.isAbsolute(path)) throw Exception('Received non-absolute path');

    if (!_cache.containsKey(path)) {
      final file = File(p.canonicalize(p.join(path, 'pubspec.yaml')));
      if (!file.existsSync())
        throw Exception('Unable to locate pubspec.yaml for $path');

      final pubspec = Pubspec.parse(file.readAsStringSync());

      // version can be null if 'publish_to: none' is set. In this case
      // we don't know the version, so use scip's '.' (empty value) char
      _cache[path] = pubspec.version?.toString() ?? '.';
    }

    return _cache[path]!;
  }
}
