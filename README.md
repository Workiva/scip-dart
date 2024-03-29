# scip-dart

Implementation of a [scip](https://github.com/sourcegraph/scip) indexer for [dart](https://github.com/dart-lang)

Designed to be a replacement for [lsif_indexer](https://github.com/Workiva/lsif_indexer), with better coverage and reliability

## Installation

```sh
dart pub global activate scip_dart
```

## Usage

The following command will output a `index.scip` file
```sh
cd ./path/to/project/root
dart pub get
dart pub global run scip_dart ./
```

This file can be analyzed / displayed using the [scip cli](https://github.com/sourcegraph/scip)

```sh
scip print ./index.scip
scip snapshot
```

Analysis can be uploaded to sourcegraph using the [src cli](https://docs.sourcegraph.com/cli)

```sh
src code-intl upload -file=index.scip -github-token="<your gh token>"
```