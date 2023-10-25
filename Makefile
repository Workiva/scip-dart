gen-snaps:
	gen-snap_basic-project
	gen-snap_relationships-project
	gen-snap_diagnostics

gen-snap_basic-project:
	dart run scip_dart ./snapshots/input/basic-project
	scip snapshot --to ./snapshots/output/basic-project

gen-snap_relationships-project:
	dart run scip_dart --index-relationships ./snapshots/input/relationships-project
	scip snapshot --to ./snapshots/output/relationships-project

gen-snap_diagnostics:
	dart run scip_dart ./snapshots/input/diagnostics
	scip print --json ./snapshots/input/diagnostics/index.scip | jq '.documents[].occurrences[] | select(.diagnostics)' | jq -s . > ./snapshots/output/diagnostics/output.json


run:
	dart run scip_dart ./snapshots/input/staging-project --verbose

snap:
	scip snapshot --project-root ./snapshots/input/staging-project --to ./snapshots/output/staging-project

lint:
	scip lint ./index.scip

stats:
	scip stats

gen-proto:
	protoc --dart_out=. ./lib/src/gen/scip.proto

print:
	scip print ./index.scip