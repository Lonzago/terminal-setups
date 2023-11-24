#!/bin/bash

## PACKAGES INSTALLATIONS
sudo apt-get update

sudo apt-get install -y curl wget

# FZF terminal searcher
sudo apt-get install -y fd-find
sudo apt-get install -y fzf
export FZF_DEFAULT_COMMAND='fdfind .'

# NeoVim installation
#curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
#chmod u+x nvim.appimage
#./nvim.appimage
#./nvim.appimage --appimage-extract
#./squashfs-root/AppRun --version
## exposing nvim globally.
#sudo mv squashfs-root /
#sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

# PYTHON
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo apt-get install python-software-properties

# NeoVim UBUNTU
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

sudo apt-get install -y rg
sudo apt-get install -y fd-find
