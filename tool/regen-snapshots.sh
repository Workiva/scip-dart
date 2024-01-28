#!/bin/bash

PROJECTS=(
    basic-project
    dart3-features
    diagnostics
)

for project in "${PROJECTS[@]}"; do
    dart run scip_dart "./snapshots/input/$project"
    scip snapshot --to "./snapshots/output/$project/"
done