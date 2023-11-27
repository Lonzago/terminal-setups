
## OH-MY-POSH
Import-Module Terminal-Icons
oh-my-posh init pwsh --config 'C:\Users\GonDev\AppData\Local\Programs\oh-my-posh\themes\atomic.omp.json' | Invoke-Expression

#PSReaderLine
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# ALIAS
Set-Alias tt tree 
Set-Alias ll ls
Set-Alias ldo lazydocker
Set-Alias lg lazygit

# FZF Implemetations
$env:FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
function ef {
  Get-ChildItem -File -Recurse -Depth 3 -ErrorAction SilentlyContinue | ForEach-Object { $_.FullName } | fzf | ForEach-Object { nvim $_ } 
}
function fd {
  param(
    [int]$Depth = 3
  )
  Get-ChildItem -Directory -Recurse -Depth $Depth -ErrorAction SilentlyContinue | ForEach-Object { $_.FullName } | fzf | ForEach-Object { cd $_ } 
}
function fd-root { cd \ &&  fd }
function fd-user { cd $HOME &&  fd }


## EXIT FROM TERMINAL
function ee {
    exit
}

# NVIM SHORTCUT
function nn { nvim -- $args }
function ff { nvim $(fzf) }

 
