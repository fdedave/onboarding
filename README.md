# Windows Onboarding

This installs three basic tools for a Windows development machine:

- **Visual Studio Code**: the editor.
- **WSL**: a Linux environment inside Windows.
- **Rancher Desktop**: containers and local Kubernetes without Docker Desktop licensing concerns.

## Install

Open **PowerShell as Administrator** and run the command below. It downloads `install.ps1` from this repository and immediately runs it on your computer.

```powershell
# iwr is PowerShell's short name for Invoke-WebRequest.
# -useb means "use basic parsing", which keeps the download simple in older Windows PowerShell.
iwr -useb https://raw.githubusercontent.com/fdedave/onboarding/main/install.ps1 | iex
```

The script installs:

- VS Code with `winget`
- WSL with `wsl --install`
- Rancher Desktop with `winget`

If WSL is installed for the first time, restart Windows after the script finishes.

## Mac

This script is for Windows PCs. On macOS, install VS Code and Rancher Desktop directly, and use the built-in terminal instead of WSL.
