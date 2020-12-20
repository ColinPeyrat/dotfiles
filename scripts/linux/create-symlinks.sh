#!/bin/bash

# this script symlinks all the dotfiles

source ./scripts/linux/utils.sh

symlink() {
  filePath=$(realpath "dots/$1")

  if [ ! -e "$HOME/$1" ]; then
    ln -sf $filePath "$HOME/$1"
  fi
}

duplicate_example() {
  filePath=$(realpath "dots/$1")
  if [ ! -e "$HOME/$1" ]; then
    cp $filePath "$HOME/$1"
  fi
}

# creating symlinks
dots=(
  .gitconfig
  .zshrc
)

for dotfile in ${dots[*]}; do
  symlink "$dotfile"
done

# duplicate local files
examples=(
  .gitconfig.local.example
)

for example in ${examples[*]}; do
  duplicate_example "$example"
done

# specific symlinks
ln -sf ~/.dotfiles/zsh/custom ~/.oh-my-zsh

echo "Symlinks created"
