run:
	dart bin/main.dart ./snapshots/input/basic-project --verbose

snap:
	scip snapshot --to ./snapshots/output/basic-project

lint:
	scip lint ./index.scip

gen-proto:
	protoc --dart_out=. ./lib/src/gen/scip.proto

print:
	scip print ./index.scip