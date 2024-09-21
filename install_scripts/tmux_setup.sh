#/bin/bash

echo '[INFO] Checking if tmux is installed..'

if is_installed tmux; then
    echo '[INFO] tmux is installed.'
else
    echo '[ERROR] tmux is not installed! Have you ran the brew setup script yet?'
    exit 1
fi

echo '[INFO] Installing tpm..'

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo '[INFO] setting tmux symlink'
stow tmux

echo '[INFO] tmux setup complete.'