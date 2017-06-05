BIN_DIR = /usr/local/bin

.PHONY: install uninstall

install:
	mkdir -p $(BIN_DIR)
	install -m 755 dialnetkeeper "$(BIN_DIR)"
	install -m 755 ok "$(BIN_DIR)"
	install -m 755 ok-config "$(BIN_DIR)"
	install -m 755 ok-stop "$(BIN_DIR)"

uninstall:
	rm "$(BIN_DIR)"/dialnetkeeper -f
	rm "$(BIN_DIR)"/ok -f
	rm "$(BIN_DIR)"/ok-config -f
	rm "$(BIN_DIR)"/ok-stop -f
