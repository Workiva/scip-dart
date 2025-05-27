# Changelog

## 1.6.1
- Added a default disabled flag for indexing pubspec.yaml files `--index-pubspec`. 

## 1.6.0
- Added `--output` flag to configure output location of the generated index file 

## 1.5.4
- Fixed a bug where constructor references weren't correctly indexed

## 1.5.3
- Dependency bumps

## 1.5.2
- Improved support for getters/setters, utilizing `<get>`/`<set>` keywords within indexed symbols
- Fixed relationship indexing for fields, getters, and setters

## 1.5.1
- Adds support for missing SymbolInformation.kind on extension, mixin symbols

## 1.5.0
- Adds support for SymbolInformation.kind on the following symbols: class, enum, type alias, constructor, method, function, variable, parameter, property, and field.

## 1.4.4
- Minor update to release CI

## 1.4.3
- Updated the min dart version to `>=2.19 <3.0.0`, this is a pre-step to supporting dart 3

## 1.4.2
- Minor dependency updates and a test release for auto-tagging

## 1.4.1
- Added `elementFor` to the exported `SymbolGenerator` that can be used to retrieve the analyzer `Element` that should be used when generating symbols
- Fixed issue where the synthetic `values` field on `Enum` types was getting indexed (we just dont want to index this)
- Fixed issue where named normal formal parameters were only declared as references to their targeting field, now they are both a reference and a definition

## 1.4.0
- Exported `SymbolGenerator` from the `symbol_generator.dart` entrypoint. Making use of this will allow generation of scip symbols outside of scip-darts main use case of indexing all the symbols in a dart repo

## 1.3.0
- Default `index-relationships` to `true`, now all scip files will be generating relationship data by default
- Fixed issue where `this.<param>` declared in a constructor (NormalFormalParameters), was incorrectly referencing the `this` part of the parameter
- Updated the internal protobuf spec to the latest version. This includes populating `signatureDocumentation` as apart of symbol information declarations

## 1.2.1
- Fixed a bug discovered with diagnostic reporting, where most diagnostics were missing

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