# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository for macOS development workflow configuration. It contains configuration files and setup scripts for zsh, tmux, Visual Studio Code, and iTerm2.

## Installation and Setup Commands

### Main Installation
- **Full setup**: `./mac-install.sh` - Runs all setup scripts in sequence
- **Homebrew setup**: `./install_scripts/brew_setup.sh` - Installs Homebrew and required packages
- **Zsh configuration**: `./install_scripts/zsh_setup.sh` - Installs Oh My Zsh, plugins, and custom configuration
- **tmux setup**: `./install_scripts/tmux_setup.sh` - Installs tmux plugins and symlinks configuration
- **Visual Studio Code**: `./install_scripts/vsc_setup.sh` - Verifies VSCode installation and PATH setup
- **iTerm2 setup**: `./install_scripts/iterm_setup.sh` - Downloads and installs iTerm2

### Package Dependencies
The following packages are installed via Homebrew:
- `dpkg`
- `zsh` 
- `tmux`
- `font-hack-nerd-font`
- `visual-studio-code`
- `stow`

## Repository Structure

### Core Configuration Files
- `zsh/custom.conf/custom.zsh` - Custom zsh configuration with Oh My Zsh setup, theme, plugins, and PATH settings
- `tmux/statusline.tmux` - Custom tmux status line configuration with theming
- `gabriel.code-profile` - VS Code profile with vim keybindings and settings
- `iTerm2/Omnif.json` - iTerm2 configuration profile
- `.vimrc` - Vim configuration (referenced in VS Code settings)

### Installation Scripts
- `install_scripts/common.sh` - Shared utility functions for installation scripts
- `install_scripts/brew_setup.sh` - Homebrew and package installation
- `install_scripts/zsh_setup.sh` - Oh My Zsh installation, plugin management, and configuration setup
- `install_scripts/tmux_setup.sh` - tmux setup with TPM (tmux plugin manager)
- `install_scripts/vsc_setup.sh` - Visual Studio Code setup verification
- `install_scripts/iterm_setup.sh` - iTerm2 installation

## Key Configuration Details

### Oh My Zsh Configuration
- Installs Oh My Zsh framework for enhanced zsh experience
- Default plugins: `git`, `zsh-autosuggestions`, `zsh-syntax-highlighting`
- Uses `robbyrussell` theme by default
- Plugin management via associative array in `zsh_setup.sh` - add new plugins by updating the `zsh_plugins` array
- Custom configuration sourced from `~/dotfiles/zsh/custom.conf/custom.zsh`

### tmux Configuration
- Uses `stow` for symlink management
- Custom status line with user, session, time, and date information
- Uses TPM (tmux plugin manager) for plugin management
- Custom theme with blue accent color (#0a7aca)

### Visual Studio Code
- Vim mode enabled with custom keybindings
- Leader key set to space
- Custom navigation and editing shortcuts aligned with vim workflow
- Dark theme configuration

### Development Workflow Key Bindings
Referenced from README.md for context:
- `<C-p>` - find file
- `<S-f>` - find occurrence in PWD
- `<leader>e` - toggle file explorer
- `<leader>gd` - go to definition
- `<leader>gg` - open lazy Git
- tmux prefix: `<C-t>`

## Notes for Development
- Uses `stow` for dotfile management - configuration files should be organized in subdirectories that mirror their target locations
- The repository expects to be cloned to `~/dotfiles` based on the zsh configuration sourcing
- Installation scripts have dependency checks and will exit if prerequisites are not met
- VS Code profile needs to be set manually after running setup scripts