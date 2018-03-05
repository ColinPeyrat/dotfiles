#!/bin/bash

# This symlinks all the dotfile


function create_folder() {
  if [[ ! -e $1 ]]; then
    mkdir -p $1
  fi
}

# Remove old dot flies

# rm -rf ~/.vim/UltiSnips
# rm -rf ~/.vim/bundle/Vundle.vim
rm -rf ~/.vimrc
rm -rf ~/.tern-config

# Create needed folder

# TODO: If folder .vim exist move it  
# create_folder ~/.vim
# create_folder ~/.vim/bundle/

# Creating symlinks

ln -sf ~/.dotfiles/zsh/custom ~/.oh-my-zsh
ln -sf ~/.dotfiles/.zshrc ~
ln -sf ~/.dotfiles/.vim ~
# ln -s ~/.dotfiles/vim/UltiSnips ~/.vim/UltiSnips
# ln -s ~/.dotfiles/vim/bundle/Vundle.vim ~/.vim/bundle/Vundle.vim
ln -sf ~/.dotfiles/.vimrc ~
ln -sf ~/.dotfiles/.tern-config ~

echo "Symlinks created"

