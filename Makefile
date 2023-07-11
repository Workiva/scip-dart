regen-snapshots:
	dart run scip_dart ./snapshots/input/basic-project --verbose
	scip snapshot --to ./snapshots/output/basic-project

	dart run scip_dart ./snapshots/input/dart3-features --verbose
	scip snapshot --to ./snapshots/output/dart3-features

run:
	dart run scip_dart ./snapshots/input/staging-project --verbose

snap:
	scip snapshot --to ./snapshots/output/staging-project

lint:
	scip lint ./index.scip

gen-proto:
	protoc --dart_out=. ./lib/src/gen/scip.proto

print:
	scip print ./index.scip