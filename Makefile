.PHONY: all install chsh stow reload

all: install chsh setwz stow open-emulator

install:
	@chmod +x ./scripts/install_dependencies.sh
	@./scripts/install_dependencies.sh

setwz:
	@chmod +x ./scripts/set_wezterm.sh
	@./scripts/set_wezterm.sh

chsh:
	@chmod +x ./scripts/set_zsh.sh
	@./scripts/set_zsh.sh

stow:
	@stow --adopt .
	@git checkout master
	@git reset --hard
	@git clean -fd

open-emulator:
	@wezterm
