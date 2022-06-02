#!/usr/bin/env bash

if [[ "${SHELL}" != *"zsh"* ]]; then
    if [[ "command -v zsh" == "" ]]; then
        echo "zsh not found! You may have to install it first."
    fi

    echo "Changing shell to 'zsh'"
    chsh -s "$(command -v zsh)"
fi

if [ -z "${ZSH}" ]; then
    echo "Installing 'ohmyzsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
