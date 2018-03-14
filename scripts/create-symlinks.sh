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
  elif [[ -L $1 ]]; then
    rm $1
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
ln -sf ~/.dotfiles/.vim ~/.config/
ln -sf ~/.dotfiles/.vimrc ~
ln -sf ~/.dotfiles/.tern-config ~


mv ~/.config/.vim ~/.config/nvim

echo "Symlinks created"

