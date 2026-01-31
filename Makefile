.PHONY: all install chsh r2s reload

all: install chsh r2s reload

install:
	@chmod +x ./scripts/install_dependencies.sh
	@./scripts/install_dependencies.sh

chsh:
	@chmod +x ./scripts/set_zsh.sh
	@./scripts/set_zsh.sh

r2s:
	@stow .

reload:
	@source ~/.zshrc
