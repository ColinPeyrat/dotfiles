#!/bin/bash

# Remove old dot flies

sudo rm -rf ~/.zshrc > /dev/null 2>&1
sudo rm -rf ~/.vim/UltiSnips > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.tern-config > /dev/null 2>&1

# Creating symlinks

mkdir ~/.vim

ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/vim/UltiSnips ~/.vim/UltiSnips
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/tern-config ~/.tern-config

echo "Symlinks created"

