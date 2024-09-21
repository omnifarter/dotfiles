#/bin/bash

echo '[INFO] Checking if zsh is installed..'

if is_installed zsh; then
    echo '[INFO] zsh is installed.'
else
    echo '[ERROR] zsh is not installed! Have you ran the brew setup script yet?'
    exit 1
fi

echo '[INFO] stowing zsh'

stow zsh

echo '[INFO] adding custom conf'

SOURCE_LINE="source ~/.zsh/custom.conf/custom.zsh"

# Check if the line is already in .zshrc
if grep -Fxq "$SOURCE_LINE" ~/.zshrc; then
    echo "custom.zsh is already sourced in .zshrc."
else
    # If the line is not present, append it to .zshrc
    echo "$SOURCE_LINE" >> ~/.zshrc
    echo "Sourced custom.zsh in .zshrc."
fi

source .zshrc

echo '[INFO] zsh setup complete'