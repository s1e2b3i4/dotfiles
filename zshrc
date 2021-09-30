# Export Oh My Zsh
export ZSH=$HOME/.oh-my-zsh

# Settings
source ~/.zsh/settings.zsh

# External settings
source ~/.zsh/external.zsh

# Plugins
source ~/.zsh/plugins.zsh

source $ZSH/oh-my-zsh.sh

# Aliases
source ~/.zsh/aliases.zsh

# Source Oh My Zsh
source ~/.zsh/tools.zsh

# Allow local customizations in the ~/.zshrc_local file
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi
