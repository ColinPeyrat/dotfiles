# Windows 10 Setup Script
# Run this script in PowerShell

# Self elevate administrative permissions in this script
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

function Check-Command($cmdname) {
  return [bool](Get-Command -Name $cmdname -ErrorAction SilentlyContinue)
}

# Install Chocolatey
if (Check-Command -cmdname 'choco') {
  Write-Host "Choco is already installed, skip installation."
} else {
  Write-Host ""
  Write-Host "Installing Chocolatey for Windows..." -ForegroundColor Green
  Write-Host "------------------------------------" -ForegroundColor Green
  Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install choco packages
Write-Host "Installing Apps via chocolatey package manager..." -ForegroundColor Green

choco install vscode -y
choco install firacode -y
choco install microsoft-windows-terminal -y
choco install autohotkey
