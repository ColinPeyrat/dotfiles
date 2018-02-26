# dotfiles

## install
Run this:

```bash
git clone https://github.com/ColinPeyrat/dotfiles.git ~/.dotfiles
```
and then create symlinks

## iterm

### theme
i use [nord for iterm2](https://github.com/arcticicestudio/nord-iterm2)

## zsh

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
```

then open vim and run this:

```bash
:source %
:PluginInstall
```

finally, because i use [YouCompleteMe]https://github.com/Valloric/YouCompleteMe you need to run this:
```bash
cd ~/.vim/bundle/YouCompleteMe
./install.py --all
```
