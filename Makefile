.PHONY: all r2s

all: install chsh r2s

install:
	@chmod +x ./scripts/install_dependencies.sh
	@./scripts/install_dependencies.sh

chsh:
	@chmod +x ./scripts/set_zsh.sh
	@./scripts/set_zsh.sh

r2s:
	@stow .
