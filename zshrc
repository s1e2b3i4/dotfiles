# Settings
source ~/.zsh/settings.zsh

# Oh My Zsh
source ~/.zsh/ohmyzsh.sh

# External settings
source ~/.zsh/external.sh

# Plugins
source ~/.zsh/plugins.sh

# OhMyZsh
source $ZSH/oh-my-zsh.sh

# Aliases
source ~/.zsh/aliases.sh

# Allow local customizations in the ~/.zshrc_local file
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi
