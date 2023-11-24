#!/bin/bash

sudo rm -r $HOME/.config/nvim/

if [ ! -d "$HOME/.config/nvim/" ]; then
	sudo mkdir $HOME/.config/nvim/
fi

sudo git clone https://github.com/Lonzago/lazyvim-config.git $HOME/.config/nvim/
sudo rm -r $HOME/.config/nvim/.git
