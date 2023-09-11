regen-snapshots:
	dart run scip_dart ./snapshots/input/basic-project
	scip snapshot --to ./snapshots/output/basic-project

	dart run scip_dart ./snapshots/input/dart3-features --verbose
	scip snapshot --to ./snapshots/output/dart3-features

	dart run scip_dart --index-relationships ./snapshots/input/relationships-project
	scip snapshot --to ./snapshots/output/relationships-project

run:
	dart run scip_dart ./snapshots/input/staging-project --verbose

snap:
	scip snapshot --project-root ./snapshots/input/staging-project --to ./snapshots/output/staging-project

lint:
	scip lint ./index.scip

stats:
	scip stats

# Requires running `dart pub global acitvate protoc_plugin`
gen-proto:
	protoc --dart_out=. ./lib/src/gen/scip.proto

print:
	scip print ./index.scip

print-ast:
	dart ./tool/ast_printer.dart ./snapshots/input/staging-project