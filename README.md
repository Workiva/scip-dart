# scip-dart

Experimental spike on a [scip](https://github.com/sourcegraph/scip) indexer for [dart](https://github.com/dart-lang)

## Usage

The following command will output a `index.scip` file
```sh
dart scip-dart/bin/main.dart ./path/to/project/root
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