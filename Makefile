.PHONY: all sync-local

all: sync-local

r2s:
	@stow .

install:
	@chmod +x ./scripts/install_dependencies.sh
	@./scripts/install_dependencies.sh
