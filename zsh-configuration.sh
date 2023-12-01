#!bin/bash
sudo atp install -y zsh fzf fd-find silversearcher-ag

zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1

sudo rm $HOME/.zshrc && sudo cp ./config-files/zsh/zsh-config $HOME/.zshrc
source $HOME/.zshrc

zap update all
