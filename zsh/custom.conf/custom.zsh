#nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Oh My Zsh configuration
export ZSH="$HOME/.oh-my-zsh"

# Set theme (you can change this to any Oh My Zsh theme)
ZSH_THEME="robbyrussell"

# Plugins (add any Oh My Zsh plugins you want)
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# zoxide
eval "$(zoxide init zsh)"
alias cd="z"

# fzf
source <(fzf --zsh)

# Custom PATH and environment variables
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
