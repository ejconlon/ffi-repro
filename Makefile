.PHONY: clean
clean:
	cabal clean

.PHONY: update
update:
	cabal update

.PHONY: build
build: update
	cabal build -v

.PHONY: exec
exec: build
	cabal exec ffi-repro

.PHONY: set_8_8
set_8_8:
	ghcup set ghc 8.8.4

.PHONY: set_8_10
set_8_10:
	ghcup set ghc 8.10.2
