run:
	dart bin/main.dart ./test/example-package

snap:
	scip snapshot --to ./test/example-snapshot

lint:
	scip lint ./index.scip

print:
	scip print ./index.scip