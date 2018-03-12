# dotfiles

## install

Run this:

```bash
git clone --clone https://github.com/ColinPeyrat/dotfiles.git ~/.dotfiles
sh ./setup.sh
```

## iterm

### install

```bash
brew cask install iterm2
```

follow this [link](http://stratus3d.com/blog/2015/02/28/sync-iterm2-profile-with-dotfiles-repository/) to setup iterm from custom URL

### theme

i use [Tomorrow Night](https://github.com/martinlindhe/base16-iterm2) from [Base16](https://github.com/chriskempson/base16)

## zsh

### install

```bash
brew install zsh
```

### theme

i use [pure](https://github.com/sindresorhus/pure)

```bash
npm install --global pure-prompt
```

## vim

i use neovim

```bash
brew install neovim
# install latest python package version
pip install setuptools
pip  install --upgrade neovim
pip2 install --upgrade neovim
pip3 install --upgrade neovim
```

then open vim and run this:

```bash
:source %
:PluginInstall
```

because i use [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) you need to run this:

```bash
cd ~/.vim/bundle/YouCompleteMe
./install.py --tern-completer
```

finally, you will need to setup tern

```bash
cd ~/.vim/bundle/tern_for_vim
npm install
```

you will also want to configure tern for specific project. Follow this [link](https://stackoverflow.com/questions/41371789/figuring-out-javascript-libraries-for-vim-autocompletion-with-ternjs-in-tern-pr/41377689#41377689)
