# dotfiles

## Overview

Things I use :
- [Chocolatey](https://chocolatey.org/)
- [WSL1](https://docs.microsoft.com/fr-fr/windows/wsl/install-win10) (since WSL2 need to enable Hyper-V which broke most of others VM).
- [Windows Terminal](https://github.com/microsoft/terminal)
- [Visual Studio Code](https://github.com/microsoft/vscode)

## Setup

### Windows

Open a PowerShell terminal as administrator (Right click on start > Windows PowerShell (admin)) and run this :

```bash
powershell -NoProfile -ExecutionPolicy unrestricted -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; &([scriptblock]::Create((Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/ColinPeyrat/dotfiles/master/windows/install.ps1')))"
```

### WSL

First, [install WSL](https://docs.microsoft.com/fr-fr/windows/wsl/install-win10).

## Windows terminal

I use [Base 16 Nord](https://github.com/wuqs-net/base16-windows-terminal/blob/master/colors/base16-nord.json) theme from [Base16](https://github.com/chriskempson/base16)
