# Changelog

## 1.1.3

- generated scip bindings updated to provide relationship fields. This allows for "Go to Implementations" and other class/method inheritance navigation.

## 1.1.2

- added `--version` flag to retrieve the version of scip-dart
- populated `ToolInfo.version` in resulting scip files

## 1.1.1

- Fixed bug where running indexing on a dart package with a nested subpackage would throw an exception

## 1.1.0

- Fixed bug where the synthetic functions `loadLibrary` and `call` were indexed as references
- Deprecated the --path flag in favor of running on all dart files in the package

## 1.0.6

- Initial open sourcing of repo