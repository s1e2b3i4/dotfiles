# ZSH
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Fancy output
alias ll="exa -l -g -a --icons"

# Aliases to protect against overwriting
alias cp='cp -i'
alias mv='mv -i'

# Update dotfiles
dfu() {
    (
        cd ~/.dotfiles && git pull --ff-only && ./install -q
    )
}

# Use pip without requiring virtualenv
syspip3() {
    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

# Mirror a website
alias mirrorsite='wget -m -k -K -E -e robots=off'
