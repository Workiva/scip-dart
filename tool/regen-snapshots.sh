#!/bin/bash

# dart --version

# DART_VERSION=$(dart --version | grep -o '[0-9]*\.[0-9]*\.[0-9]*' | awk 'NR==1')


PROJECTS=(
    basic-project
    dart3-features
    diagnostics
)

for project in "${PROJECTS[@]}"; do
    dart run scip_dart "./snapshots/input/$project"
    scip snapshot --to "./snapshots/output/$project/"
done