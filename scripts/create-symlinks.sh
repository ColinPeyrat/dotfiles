#!/bin/bash

# This symlinks all the dotfile


function create_folder() {
  if [[ ! -e $1 ]]; then
    mkdir -p $1
  fi
}

# Remove old dot flies

rm -rf ~/.oh-my-zsh/custom/
rm -rf ~/.zshrc
rm -rf ~/.vim/UltiSnips
rm -rf ~/.vim/bundle/Vundle.vim
rm -rf ~/.vimrc
rm -rf ~/.tern-config

# Create needed folder

create_folder ~/.vim
create_folder ~/.vim/bundle/

# Creating symlinks

ln -s ~/.dotfiles/zsh/custom ~/.oh-my-zsh
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/vim/UltiSnips ~/.vim/UltiSnips
ln -s ~/.dotfiles/vim/bundle/Vundle.vim ~/.vim/bundle/Vundle.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/tern-config ~/.tern-config

echo "Symlinks created"

