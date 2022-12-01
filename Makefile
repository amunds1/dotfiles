.PHONY: brewfile vscode_extensions dotfiles setup

setup:
	./setup

dotfiles: brewfile vscode_extensions

vscode_extensions:
	code --list-extensions > vscode/extensions

brewfile:
	brew bundle dump --force