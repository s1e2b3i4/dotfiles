# fzf
# /usr/local/opt/fzf/install --no-fish --no-bash --key-bindings --completion --no-update-rc
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# grc
grc_file=$(brew --prefix)/etc/grc.zsh
if [ -f "${grc_file}" ]; then
  source "${grc_file}"
fi
