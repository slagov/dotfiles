.PHONY: all install chsh stow reload

all: install chsh stow open-emulator

install:
	@chmod +x ./scripts/install_dependencies.sh
	@./scripts/install_dependencies.sh

chsh:
	@chmod +x ./scripts/set_zsh.sh
	@./scripts/set_zsh.sh

stow:
	@stow .

open-emulator:
	@wezterm
