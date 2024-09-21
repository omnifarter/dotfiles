#/bin/bash

echo "[INFO] checking for iTerm installation.."

if [ -d "/Applications/iTerm.app" ]; then
    echo "[INFO] iTerm is installed."
else
    echo "[INFO] iTerm is not installed. Installing now..."
    unzip_from_link "https://iterm2.com/downloads/stable/iTerm2-3_4_18.zip" "/Applications"

    echo "[INFO] iTerm is installed. Please load the iTerm2 profile manually"
fi

echo "[INFO] iTerm setup complete"
