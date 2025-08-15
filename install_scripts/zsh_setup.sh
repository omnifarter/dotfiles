#!/bin/bash

echo '[INFO] Checking if zsh is installed..'

if is_installed zsh; then
    echo '[INFO] zsh is installed.'
else
    echo '[ERROR] zsh is not installed! Have you ran the brew setup script yet?'
    exit 1
fi

echo '[INFO] Installing Oh My Zsh...'

# Check if Oh My Zsh is already installed
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo '[INFO] Oh My Zsh is already installed.'
else
    # Install Oh My Zsh (unattended installation)
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    echo '[INFO] Oh My Zsh installed successfully.'
fi

echo '[INFO] Installing Oh My Zsh plugins...'

# Array of plugins to install - format: "plugin_name|repo_url"
declare -a zsh_plugins=(
    "zsh-autosuggestions|https://github.com/zsh-users/zsh-autosuggestions"
    "zsh-syntax-highlighting|https://github.com/zsh-users/zsh-syntax-highlighting.git"
)

# Install each plugin
for plugin_info in "${zsh_plugins[@]}"; do
    plugin_name=$(echo "$plugin_info" | cut -d'|' -f1)
    plugin_url=$(echo "$plugin_info" | cut -d'|' -f2)
    plugin_dir="$HOME/.oh-my-zsh/custom/plugins/$plugin_name"
    
    if [ ! -d "$plugin_dir" ]; then
        git clone "$plugin_url" "$plugin_dir"
        echo "[INFO] $plugin_name plugin installed."
    else
        echo "[INFO] $plugin_name plugin already installed."
    fi
done

echo '[INFO] adding custom conf'

SOURCE_LINE="source ~/dotfiles/zsh/custom.conf/custom.zsh"

# Check if the line is already in .zshrc
if grep -Fxq "$SOURCE_LINE" ~/.zshrc; then
    echo "custom.zsh is already sourced in .zshrc."
else
    # If the line is not present, append it to .zshrc
    echo "$SOURCE_LINE" >> ~/.zshrc
    echo "Sourced custom.zsh in .zshrc."
fi

echo '[INFO] zsh setup complete'
