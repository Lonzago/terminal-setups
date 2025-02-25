
## ReadLine Module installation
Install-Module -Name PowerShellGet -Force
Install-Module PSReadLine -Force -AllowPrerelease -SkipPublisherCheck   

# Terminal Icons
Install-Module -Name Terminal-Icons -Repository PSGallery
# Z to remember directories
Install-Module z -Scope -AllowClobber CurrentUser    

## OH MY POSH SETUP
winget install JanDeDobbeleer.OhMyPosh -s winget
(Get-Command oh-my-posh).Source
oh-my-posh font install FiraCode Nerd Font Mono --user

