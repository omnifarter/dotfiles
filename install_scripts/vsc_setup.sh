#/bin/bash

echo '[INFO] Checking if vsc is installed..'

if [ -d "/Applications/Visual Studio Code.app" ]; then
    echo '[INFO] vsc is installed.'
else
    echo '[ERROR] vsc is not installed! have you ran the brew setup script yet?'
    exit 1
fi

echo '[INFO] Checking if code PATH is set..'

if is_installed code; then
    echo '[INFO] code PATH is set.'
else;
    echo '[ERROR] code PATH is not set! have you ran the zsh setup script yet?'
    exit 1

echo '[INFO] please set profile manually!'

echo '[INFO] vsc setup complete'
