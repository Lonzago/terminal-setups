#!/bin/bash

## PACKAGES INSTALLATIONS
sudo apt-get update
sudo apt-get install -y curl wget git
sudo apt-get install -y software-properties-common

=----------------------------------------------
# PYTHON
sudo apt-get install -y python3-dev python3-pip

# NeoVim UBUNTU
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get -y install neovim

# NeoVim optional packages
## FZF terminal searcher
sudo apt-get install -y fd-find
sudo apt-get install -y fzf
export FZF_DEFAULT_COMMAND='fdfind .'
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border'

sudo apt-get install -y ripgrep

# Lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
sudo curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
sudo tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
sudo rm lazygit lazygit.tar.gz

=----------------------------------------------
