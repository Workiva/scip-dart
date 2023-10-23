# Changelog

## 1.2.0

- Added support for [occurrence diagnostics](https://github.com/sourcegraph/scip/blob/8d3634b4d6aa564129dac3ee462592ebc4203236/scip.proto#L579), all indexed packages will now include hints, warnings, and errors from the dart analysis server

## 1.1.5

- Fixed issues where cascade references would incorrectly index variables and assignments
- Fixed issues where functions passed as parameters would incorrectly index their nested parameters

## 1.1.4

- Put the generation of relationships field behind a `--index-relationships` flag which needs to be opted in. This was to continue to work on coverage of relationships support without effecting consumers.
- Fixed issue where the `projectRoot` uri was being calculated incorrectly

## 1.1.3

- Generated scip bindings updated to provide relationship fields. This allows for "Go to Implementations" and other class/method inheritance navigation.

## 1.1.2

- Added `--version` flag to retrieve the version of scip-dart
- Populated `ToolInfo.version` in resulting scip files

## 1.1.1

- Fixed bug where running indexing on a dart package with a nested subpackage would throw an exception

## 1.1.0

- Fixed bug where the synthetic functions `loadLibrary` and `call` were indexed as references
- Deprecated the --path flag in favor of running on all dart files in the package

## 1.0.6

- Initial open sourcing of repo