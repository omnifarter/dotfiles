#/bin/bash

echo '[INFO] Installing brew...'

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> "$HOME/.zprofile"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
eval "$(/opt/homebrew/bin/brew shellenv)"

echo '[INFO] installing cask...'

brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew update

echo '[INFO] installing required packages...'

for package in "${brew_packages[@]}"
do
    brew install "$package"
done

echo '[INFO] brew setup complete'