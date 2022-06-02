#!/usr/bin/env bash

if [[ "${SHELL}" != *"zsh"* ]]; then
    if ! command -v zsh >/dev/null; then
        echo "zsh not found! You may have to install it first."
        echo "sudo apt install zsh -y"
        exit 1
    fi
    
    if [[ $(grep "^$USER" /etc/passwd | awk -F: '{ print $7}') != *"zsh"* ]]; then
        echo "Changing shell to 'zsh'"
        chsh -s "$(command -v zsh)"
    fi

fi

if [ -z "${ZSH}" ]; then
    echo "Installing 'ohmyzsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc --unattended
fi
