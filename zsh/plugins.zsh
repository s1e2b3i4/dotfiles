# Syntax highlighting
source "$(dirname "$(realpath "$0")")/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

if [[ "$(tput colors)" == "256" ]]; then
  ZSH_HIGHLIGHT_STYLES[default]=none
  ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red
  ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=yellow,bold
  ZSH_HIGHLIGHT_STYLES[alias]=fg=green
  ZSH_HIGHLIGHT_STYLES[builtin]=fg=green
  ZSH_HIGHLIGHT_STYLES[function]=fg=green
  ZSH_HIGHLIGHT_STYLES[command]=fg=green
  ZSH_HIGHLIGHT_STYLES[precommand]=fg=green,underline
  ZSH_HIGHLIGHT_STYLES[commandseparator]=none
  ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=037
  ZSH_HIGHLIGHT_STYLES[path]=fg=white,underline
  ZSH_HIGHLIGHT_STYLES[globbing]=fg=blue
  ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
  ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=magenta,bold
  ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=magenta,bold
  ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
  ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
  ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=yellow
  ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=yellow
  ZSH_HIGHLIGHT_STYLES[assign]=fg=037
fi

plugins=(
  git
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
  colored-man-pages
  vagrant
  )
