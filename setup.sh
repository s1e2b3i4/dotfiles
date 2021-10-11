#!/usr/bin/env bash

if [[ "${SHELL}" != *"zsh"* ]]; then
    echo "Changing shell to 'zsh'"
    chsh -s "$(which zsh)"
fi

if [ -z "${ZSH}" ]; then
    echo "Installing 'ohmyzsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
