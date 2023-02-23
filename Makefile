regen-snapshots:
	dart bin/main.dart ./test/example-package
	scip snapshot --to ./test/example-snapshot