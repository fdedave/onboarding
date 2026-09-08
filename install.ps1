#requires -Version 5.1
$ErrorActionPreference = "Stop"

$principal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (-not $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) { throw "Run PowerShell as Administrator, then run this script again." }
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) { throw "winget was not found. Install App Installer from the Microsoft Store." }

winget list --id Microsoft.VisualStudioCode --exact --source winget | Out-Null
if ($LASTEXITCODE -ne 0) { winget install --id Microsoft.VisualStudioCode --exact --source winget --accept-package-agreements --accept-source-agreements }

wsl --status | Out-Null
if ($LASTEXITCODE -ne 0) { wsl --install --no-launch }

winget list --id SUSE.RancherDesktop --exact --source winget | Out-Null
if ($LASTEXITCODE -ne 0) { winget install --id SUSE.RancherDesktop --exact --source winget --accept-package-agreements --accept-source-agreements }

Write-Host "Done. Restart Windows if WSL was installed for the first time."
