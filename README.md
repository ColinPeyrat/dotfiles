# dotfiles

## install
Run this:

```bash
git clone https://github.com/ColinPeyrat/dotfiles.git ~/.dotfiles
```
and then create symlinks

## iterm

### install
```bash
brew cask install iterm2
```
follow this [link](http://stratus3d.com/blog/2015/02/28/sync-iterm2-profile-with-dotfiles-repository/) to setup iterm from custom URL

### theme
i use [nord for iterm2](https://github.com/arcticicestudio/nord-iterm2)

## zsh

### install
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

then for plugins run:
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

### theme
i use [pure](https://github.com/sindresorhus/pure)
```bash
npm install --global pure-prompt
```

## vim

i use macvim

```bash
brew install vim
brew install macvim --with-override-system-vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
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
