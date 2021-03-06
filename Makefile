SRC = pong.c
BIN = pong

PREFIX ?= /usr/local/bin

$(BIN): $(SRC)
	cc -o $@ $^ -lglfw -lGL -lpng -lm -lz

.PHONY: clean install uninstall

clean:
	rm -f $(BIN)

install: $(BIN)
	install -m 0755 -t $(PREFIX) $^

uninstall:
	rm -f $(PREFIX)/$(BIN)
