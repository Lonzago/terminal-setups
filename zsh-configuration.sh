#!bin/bash
sudo atp install -y zsh fzf fd-find silversearcher-ag

sudo cp ./config-files/zsh/zsh-config $HOME/.zshrc
sudo cp ./config-files/zsh/p10k-config $HOME/.p10k.zsh

zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1

source $HOME/.zshrc
