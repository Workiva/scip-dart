#!/bin/bash

SCRIPT_DIR=$(realpath "$(dirname "$0")")

PROJECTS=(
    basic-project
    dart3-features
    diagnostics
)

for project in "${PROJECTS[@]}"; do
    pushd "./snapshots/input/$project" > /dev/null || exit
    dart run "$SCRIPT_DIR/../bin/scip_dart.dart" --index-pubspec
    scip snapshot --to "../output/$project/"
    popd > /dev/null || exit
done