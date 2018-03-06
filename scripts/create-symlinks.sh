#!/bin/bash

# This symlinks all the dotfile


function create_folder() {
  if [[ ! -e $1 ]]; then
    mkdir -p $1
  fi
}

function backup_dotfiles() {
  if [[ -d $1 ]]; then
    echo "$1 is a folder"
    mv $1 ~/.backups/
  fi
}

# Create needed folder

create_folder ~/.backups

# Backup old dotfiles 

backup_dotfiles ~/.vim


# Creating symlinks

ln -sf ~/.dotfiles/zsh/custom ~/.oh-my-zsh
ln -sf ~/.dotfiles/.zshrc ~
ln -sf ~/.dotfiles/.vim ~
ln -sf ~/.dotfiles/.vimrc ~
ln -sf ~/.dotfiles/.tern-config ~

echo "Symlinks created"

