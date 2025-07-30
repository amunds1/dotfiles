# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository for macOS development environment setup. The repository follows a modular architecture where each tool/configuration has its own directory with setup scripts.

## Architecture

### Main Setup Flow
- Root `./setup` script orchestrates the entire installation
- Each subdirectory contains a `setup` script that handles linking/installation for that tool
- Configuration files are symlinked from the repository to their proper locations

### Directory Structure
- `fonts/` - Nerd Font installation
- `git/` - Git configuration and .gitconfig
- `iterm2/` - iTerm2 color themes (Ayu variants)
- `starship/` - Starship prompt configuration
- `vscode/` - VS Code settings, keybindings, and extensions
- `zsh/` - Zsh configuration with .zshrc and .zshrc.d modular setup
- `docker/` - Docker-related setup
- `Brewfile` - Homebrew packages and casks
- `Makefile` - Common development tasks

## Common Commands

### Full Setup
```bash
./setup
```

### Individual Components
```bash
# Setup specific components
cd zsh && ./setup
cd git && ./setup
cd vscode && ./setup
cd starship && ./setup
```

### Makefile Commands
```bash
# Run full setup
make setup

# Update Brewfile with current installed packages
make brewfile

# Export current VS Code extensions
make vscode_extensions

# Setup dotfiles (includes brewfile and vscode_extensions)
make dotfiles
```

### Manual Operations
```bash
# Install packages from Brewfile
brew bundle

# List current VS Code extensions
code --list-extensions
```

## Key Configuration Files

- `Brewfile` - Homebrew dependencies including development tools (git, docker, node, etc.)
- `zsh/.zshrc` - Main Zsh configuration
- `zsh/.zshrc.d/` - Modular Zsh configuration directory
- `vscode/settings.json` - VS Code settings
- `vscode/keybindings.json` - VS Code key bindings
- `vscode/extensions` - List of VS Code extensions
- `starship/starship.toml` - Starship prompt configuration
- `git/.gitconfig` - Git configuration

## Setup Script Pattern

Each component follows the same pattern:
1. Create necessary directories
2. Symlink configuration files from repository to target locations
3. Install/configure the tool if needed

All setup scripts use `ln -sfn` for safe symlink creation that overwrites existing files.