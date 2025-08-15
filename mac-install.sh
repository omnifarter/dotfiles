#!/usr/bin/env bash
GITHUB_URL="https://github.com/omnifarter/dotfiles.git"

./install_scripts/brew_setup.sh
source ./install_scripts/common.sh
./install_scripts/zsh_setup.sh
./install_scripts/iterm_setup.sh
./install_scripts/tmux_setup.sh
