# fzf
# /usr/local/opt/fzf/install --no-fish --no-bash --key-bindings --completion --no-update-rc
if [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh
  export FZF_CTRL_R_OPTS="--preview 'echo {} |sed -e \"s/^ *\([0-9]*\) *//\" -e \"s/.\\{\$COLUMNS\\}/&\\n/g\"' --preview-window down:3:hidden --bind ?:toggle-preview"
fi

# grc
if command -v brew >/dev/null; then
  grc_file=$(brew --prefix)/etc/grc.zsh
fi

if [ -f "${grc_file}" ]; then
  source "${grc_file}"
fi
