#!/bin/bash

echo '[INFO] Checking if neovim is installed..'

if is_installed nvim; then
    echo '[INFO] neovim is installed.'
else
    echo '[ERROR] neovim is not installed! Have you ran the brew setup script yet?'
    exit 1
fi

echo '[INFO] Setting neovim symlink..'
stow nvim

echo '[INFO] neovim setup complete.'
