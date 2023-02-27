run:
	dart bin/main.dart ./snapshots/input/basic-project --verbose

snap:
	scip snapshot --to ./snapshots/output/basic-project

lint:
	scip lint ./index.scip

print:
	scip print ./index.scip