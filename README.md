# dotfiles

## Overview

Things I use :
- [Chocolatey](https://chocolatey.org/)
- [WSL1](https://docs.microsoft.com/fr-fr/windows/wsl/install-win10) (since WSL2 need to enable Hyper-V which broke most of others VM).
- [Windows Terminal](https://github.com/microsoft/terminal)
- [Visual Studio Code](https://github.com/microsoft/vscode)

## Setup

### Windows

Open a PowerShell terminal and run this :

```bash
powershell -NoProfile -ExecutionPolicy unrestricted -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; &([scriptblock]::Create((Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/ColinPeyrat/dotfiles/windows/install.ps1')))
```

### WSL

First, [install WSL](https://docs.microsoft.com/fr-fr/windows/wsl/install-win10).
