#!/bin/bash

# Install all needed dependencies

function command_exist() { 
  type -t "$1" > /dev/null 2>&1; 
}

function install_oh_my_zsh() {
  if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/loket/oh-my-zsh/feature/batch-mode/tools/install.sh)" -s --batch
  fi
}

install_oh_my_zsh

# TODO: Verify and install brew with `brew bundle`


# Disable the “Last Login” on new terminal session
touch ~/.hushlogin
