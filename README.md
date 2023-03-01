# scip-dart

Experimental spike on a [scip](https://github.com/sourcegraph/scip) indexer for [dart](https://github.com/dart-lang)

Designed to be a replacement for [lsif_indexer](https://github.com/Workiva/lsif_indexer), with better coverage and reliability

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

## Design Philosophy

Scip is a fairly simple file format. Much of it boils down to finding every declaration in a source file, and creating a unique, but consistent string for it. This is called a `symbol`. Then the idea is to search the source code for every reference, and generate that same `symbol` we created before, for the references declaration. After this is done, we should have a large mapping of every reference, and declaration which allows external tools to preform code navigation on the entities within the codebase.

While this is simple in concept, in practice, parsing ast, and generating these symbols is edge case hell. Instead of expecting full coverage on everything, in its spike state, `scip-dart` will fail silently on unknown cases (this silent failing can be turned off with the `--verbose/-v` flag). The reason for this is that an incomplete scip index is still helpful, but a completely failed indexing is not.

Failures in running `scip-dart` will be treated with higher priority than full coverage of symbols.