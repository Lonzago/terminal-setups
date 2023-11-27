
## ReadLine Module installation
# powershell -file C:\file.ps1
Install-Module -Name PowerShellGet -Force
Install-Module PSReadLine -AllowPrerelease -Force
Install-Module PSReadLine

## OH MY POSH SETUP
oh-my-posh font install --user
winget install JanDeDobbeleer.OhMyPosh -s winget
(Get-Command oh-my-posh).Source


