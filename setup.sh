#!/bin/bash

sh ./scripts/install.sh
sh ./scripts/create-symlinks.sh

zsh -c 'source ~/.zshrc'

echo "All done"
echo "Enjoy !"
