if [[ -n $SSH_CLIENT ]]; then
  PS1="[%{$fg[$NCOLOR]%}%B%n@%m%b%{$reset_color%}:%{$fg[red]%}%30<...<%~%<<%{$reset_color%}]%(!.#.$) "
fi
