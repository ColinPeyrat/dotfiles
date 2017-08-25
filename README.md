# dotfiles

## install
Run this:

```bash
git clone https://github.com/ColinPeyrat/dotfiles.git ~/.dotfiles
```

## vscode

### enable synchronization 

```shell
rm -rf ~/Library/Application\ Support/Code/User
ln -s ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/.dotfiles/vscode/snippets/ ~/Library/Application\ Support/Code/User/snippets
```

### installed plugins

* [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
* [Can I Use](https://marketplace.visualstudio.com/items?itemName=akamud.vscode-caniuse)
* [Material Theme Kit](https://marketplace.visualstudio.com/items?itemName=ms-vscode.Theme-MaterialKit)
* [Prettier - JavaScript formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
* [Twig](https://marketplace.visualstudio.com/items?itemName=whatwedo.twig)
