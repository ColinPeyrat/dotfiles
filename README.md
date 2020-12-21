# dotfiles

- target plateforms: Windows 10

## Overview

Things I use :

- [Chocolatey](https://chocolatey.org/): to install and manage package (just like `brew` or `apt` but for windows)
- [Visual Studio Code](https://github.com/microsoft/vscode): my code editor
- [AutoHotKey](https://www.autohotkey.com/): to create custom keybind and macro
- Ocean Dark from [Base16](http://chriskempson.com/projects/base16/): my theme for both [Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=AndrsDC.base16-themes) and [Windows Terminal](https://github.com/jonasnordlund/base16-windows-terminal)
- [WSL1](https://docs.microsoft.com/fr-fr/windows/wsl/install-win10): a GNU/Linux environment directly on Window (since WSL2 needs Hyper-V enabled, which breaks most other VMs).
- [Windows Terminal](https://github.com/microsoft/terminal): my terminal with oh-my-zsh as my shell
- [nvm](https://github.com/nvm-sh/nvm): to manage node versions

## Installation

### Windows

1. Open a PowerShell terminal as administrator `Right click on start > Windows PowerShell (admin)`
2. Run this :

```bash
powershell -NoProfile -ExecutionPolicy unrestricted -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; &([scriptblock]::Create((Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/ColinPeyrat/dotfiles/master/scripts/windows/setup.ps1')))"
```

### WSL

1. First, [install WSL](https://docs.microsoft.com/fr-fr/windows/wsl/install-win10).
2. Open a new Bash window
3. Run this :

```bash
git clone --recurse-submodules https://github.com/ColinPeyrat/dotfiles.git ~/.dotfiles
cd ~/.dotfiles && ./scripts/linux/setup.sh
```

## Post-installation steps

1. Replace data inside `~/.gitconfig.local` with personal data

## Setting up Windows Terminal

1. Open settings `ctrl+,`
2. Replace the whole file with windows-terminal/settings.json

## Setting up AutoHotKeys scripts

1. Open a new bash window and run this :

```bash
cd ~/.dotfiles/autohotkey/ && explorer.exe $(wslpath -w $(pwd))
```

2. Start all AutoHotKeys script you need.
3. To make thoses scripts start everytime you boot, follow [this link](https://www.autohotkey.com/docs/FAQ.htm#Startup)
