#!/bin/bash

# This symlinks all the dotfile


function create_folder() {
  if [[ ! -e $1 ]]; then
    mkdir -p $1
  fi
}

# Remove old dot flies

rm -rf ~/.oh-my-zsh/custom/plugins
rm -rf ~/.zshrc
rm -rf ~/.vim/UltiSnips
rm -rf ~/.vimrc
rm -rf ~/.tern-config

# Create neded folder

create_folder ~/.oh-my-zsh/custom
create_folder ~/.vim

# Creating symlinks

ln -s ~/.dotfiles/zsh/plugins ~/.oh-my-zsh/custom/plugins
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/vim/UltiSnips ~/.vim/UltiSnips
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/tern-config ~/.tern-config

echo "Symlinks created"

