regen-snapshots:
	dart run scip_dart ./snapshots/input/basic-project
	scip snapshot --to ./snapshots/output/basic-project

	dart run scip_dart ./snapshots/input/diagnostics
	scip snapshot --to ./snapshots/output/diagnostics

	dart run scip_dart ./snapshots/input/dart3-features
	scip snapshot --to ./snapshots/output/dart3-features

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