#!/bin/bash

# this script install all needed dependencies

source ./scripts/linux/utils.sh


install_oh_my_zsh() {
  if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi
}

install_pure_theme() {
  if [ ! -d "$HOME/.zsh/" ] && [ ! -d "$HOME/.zsh/pure" ]; then
    mkdir -p "$HOME/.zsh"
    git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
  fi
}

## packages
sudo apt update
sudo apt install -y git
# sudo apt install -y nodejs npm build-essential
sudo apt install -y build-essential

## zsh
sudo apt install -y zsh
install_oh_my_zsh

## install node via nvm to avoid permission issues
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# loads nvm inside install script
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install --lts
nvm use --lts

## install zsh theme
install_pure_theme
