#!/bin/bash

## PACKAGES INSTALLATIONS
sudo apt-get update

sudo apt-get install -y curl wget

=----------------------------------------------

# NeoVim installation
#curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
#chmod u+x nvim.appimage
#./nvim.appimage
#./nvim.appimage --appimage-extract
#./squashfs-root/AppRun --version
## exposing nvim globally.
#sudo mv squashfs-root /
#sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

=----------------------------------------------
# PYTHON
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo apt-get install python-software-properties

# NeoVim UBUNTU
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

# NeoVim optional packages
## FZF terminal searcher
sudo apt-get install -y fd-find
sudo apt-get install -y fzf
export FZF_DEFAULT_COMMAND='fdfind .'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

sudo apt-get install ripgrep

# Lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
sudo curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
sudo tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
sudo rm lazygit lazygit.tar.gz

=----------------------------------------------
