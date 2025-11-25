regen-snapshots:
	dart run scip_dart ./snapshots/input/basic-project --index-pubspec
	scip snapshot --to ./snapshots/output/basic-project

	dart run scip_dart ./snapshots/input/diagnostics --index-pubspec
	scip snapshot --to ./snapshots/output/diagnostics

	asdf set dart 3.7.2
	dart pub upgrade
	dart run scip_dart ./snapshots/input/dart3-features --index-pubspec
	scip snapshot --to ./snapshots/output/dart3-features
	asdf set dart 2.19.6

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

gen-test:
	dart ./bin/scip_dart.dart ./test

.PHONY: test
test:
	scip test ./test

print-ast:
	dart run ./tool/ast_printer.dart ./snapshots/input/staging-project
