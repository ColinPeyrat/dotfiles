#!/bin/bash

./scripts/linux/install.sh
./scripts/linux/create-symlinks.sh

zsh -c 'source ~/.zshrc'

echo "All done"
echo "Enjoy !"
