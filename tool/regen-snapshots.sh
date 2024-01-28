#!/bin/bash

# DART_VERSION=$(dart --version | grep -o '[0-9]*\.[0-9]*\.[0-9]*' | awk 'NR==1')

DART_VERSIONS=("2.19.6" "3.1.0")

PROJECTS=(
    basic-project
    dart3-features
    diagnostics
)

for dart_version in "${DART_VERSIONS[@]}"; do
    asdf global dart "$dart_version"
    for project in "${PROJECTS[@]}"; do
        dart pub upgrade
        dart run scip_dart "./snapshots/input/$project"
        scip snapshot --to "./snapshots/output/$project/$dart_version"
    done
done