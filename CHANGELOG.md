# Changelog

## 1.1.1

- Fixed bug where running indexing on a dart package with a nested subpackage would throw an exception

## 1.1.0

- Fixed bug where the synthetic functions `loadLibrary` and `call` were indexed as references
- Deprecated the --path flag in favor of running on all dart files in the package

## 1.0.6

- Initial open sourcing of repo