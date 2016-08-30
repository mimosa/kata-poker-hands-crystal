CRYSTAL_BIN ?= $(shell which crystal)
PREFIX ?= /usr/local

build:
	$(CRYSTAL_BIN) build --release -o bin/poker src/poker.cr $(CRFLAGS)
clean:
	rm -f ./bin/poker
test: build
	$(CRYSTAL_BIN) spec
install: build
	mkdir -p $(PREFIX)/bin
	cp ./bin/poker $(PREFIX)/bin