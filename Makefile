.PHONY: run
run:
	cabal run

.PHONY: build
build:
	cabal build

.PHONY: test
test:
	cabal test haskell-caesar-test --test-show-details=direct

.PHONY: test-integration
test-integration:
	cabal test haskell-caesar-test-integration --test-show-details=direct

.PHONY: install
install:
	cabal install --overwrite-policy=always

.PHONY: repl
repl:
	cabal repl
