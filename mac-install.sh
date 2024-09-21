#!/usr/bin/env bash
GITHUB_URL="https://github.com/omnifarter/dotfiles.git"

declare -a brew_packages=(
"dpkg"
"zsh"
"tmux"
"font-hack-nerd-font"
"visual-studio-code"
"stow"
)

./install_scripts/brew_setup.sh
./install_scripts/common.sh
./install_scripts/zsh_setup.sh
./install_scripts/iterm_setup.sh
./install_scripts/tmux_setup.sh