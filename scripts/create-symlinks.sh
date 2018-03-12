#!/bin/bash

# This symlinks all the dotfile

function create_folder() {
  if [[ ! -e $1 ]]; then
    mkdir -p $1
  fi
}

function backup_dotfiles() {
  # Verify if it's not a symlink to a directory
  if [[ ! -L "$1" && -d $1 ]]; then
    mv $1 ~/.backups/
  fi
}

# Create needed folder

create_folder ~/.backups

# Backup old dotfiles 

backup_dotfiles ~/.vim
backup_dotfiles ~/.oh-my-zsh/custom
backup_dotfiles ~/.config/nvim

# Creating symlinks

ln -sf ~/.dotfiles/zsh/custom ~/.oh-my-zsh
ln -sf ~/.dotfiles/.zshrc ~
ln -sf ~/.dotfiles/.vim ~
ln -sf ~/.dotfiles/.vim ~/.config/nvim
ln -sf ~/.dotfiles/.vimrc ~
ln -sf ~/.dotfiles/.tern-config ~

echo "Symlinks created"

