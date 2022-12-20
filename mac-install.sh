#!/usr/bin/env bash


GITHUB_URL="https://github.com/omnifarter/dotfiles.git"

declare -a brew_packages=(
"stow"
"neovim"
"lazygit"
"tmux"
"ripgrep"
"font-hack-nerd-font"
"zig"
)

unzip-from-link() {
 local download_link=$1; shift || return 1
 local temporary_dir

 temporary_dir=$(mktemp -d) \
 && curl -LO "${download_link:-}" \
 && unzip -d "$temporary_dir" \*.zip \
 && rm -rf \*.zip \
 && mv "$temporary_dir"/* ${1:-"$HOME/Downloads"} \
 && rm -rf $temporary_dir
}

zsh_install() {
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

iterm_install() {
  unzip-from-link "https://iterm2.com/downloads/stable/iTerm2-3_4_18.zip" "$HOME/Applications"
}

brew_install() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo '# Set PATH, MANPATH, etc., for Homebrew.' >> "$HOME/.zprofile"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
  eval "$(/opt/homebrew/bin/brew shellenv)"

  brew tap homebrew/cask
  brew tap homebrew/cask-fonts
  brew update

  for package in "${brew_packages[@]}"
    do
      brew install "$package"
    done
}

create_sym_link() {
  cd "$HOME/dotfiles"
  stow tmux
  stow nvim
  stow zsh
}

zsh_install
iterm_install
brew_install
create_sym_link
