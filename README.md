# dotfiles

![](https://raw.githubusercontent.com/ColinPeyrat/dotfiles/media/screenshot.png)

- target plateforms: Windows 10

## Overview

Things I use :

- [Chocolatey](https://chocolatey.org/): to install and manage package (just like `brew` or `apt` but for windows)
- [Visual Studio Code](https://github.com/microsoft/vscode): my code editor
- [AutoHotKey](https://www.autohotkey.com/): to create custom keybind and macro
- Ocean Dark from [Base16](http://chriskempson.com/projects/base16/): my theme for both [Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=AndrsDC.base16-themes) and [Windows Terminal](https://github.com/jonasnordlund/base16-windows-terminal)
- [WSL](https://docs.microsoft.com/fr-fr/windows/wsl/install-win10): a GNU/Linux environment directly on Window.
- [Windows Terminal](https://github.com/microsoft/terminal): my terminal with oh-my-zsh as my shell
- [nvm](https://github.com/nvm-sh/nvm): to manage node versions

## Installation

### Windows

1. Open a PowerShell terminal as administrator `Right click on start > Windows PowerShell (admin)`
2. Run this :

```bash
powershell -NoProfile -ExecutionPolicy unrestricted -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; &([scriptblock]::Create((Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/ColinPeyrat/dotfiles/master/setup-windows.ps1')))"
```

### WSL

1. First, [install WSL](https://docs.microsoft.com/fr-fr/windows/wsl/install-win10).
2. Open a new Bash window
3. Run this :

```bash
git clone --recurse-submodules https://github.com/ColinPeyrat/dotfiles.git ~/.dotfiles
cd ~/.dotfiles && ./setup-linux.sh
```

## Post-installation steps

1. Replace data inside `~/.gitconfig.local` with personal data

## Setting up Windows Terminal

1. Open settings `ctrl+,`
2. Replace the whole file with [windows-terminal/settings.json](https://raw.githubusercontent.com/ColinPeyrat/dotfiles/master/windows-terminal/settings.json)

## Setting up AutoHotKeys scripts

1. Open a new bash window and run this :

```bash
cd ~/.dotfiles/autohotkey/ && explorer.exe $(wslpath -w $(pwd))
```

2. Start all AutoHotKeys script you need.
3. To make thoses scripts start everytime you boot, follow [this link](https://www.autohotkey.com/docs/FAQ.htm#Startup)

## Setting up Unity

To have a proper Intellisense completion with Visual Studio Code and Unity you need to have installed Visual Studio Community :

1. Unity Hub > Installs
2. Add modules > check `Microsoft Visual Studio Community 2019`
3. Click `Next` and follow installation steps.

Then, we need to set VSCode as Unity editor :

1. Open Edit > Preferences
2. Go to External Tools
3. Set `Visual Studio Code` as `External Script Editor`

Open a Unity project folder with VSCode and check if Intellisense is working.

If it's not working we need to setup dotnet framework for Omnisharp :

1. Open the Omnisharp Log (click on the fire logo in the bottom bar)
2. Look for a line which says that you have to install a specific dotnet framework version (eg. `4.7.2`)
3. Click on the link and find this specific version in the list
4. Download and install
5. Restart VSCode and everything should works fine !
