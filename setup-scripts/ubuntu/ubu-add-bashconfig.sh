#!/bin/bash

cat ./config-files/.bashrc-config >>$HOME/.bashrc
sleep 1
source ~/.bashrc
#source $HOME/.bashrc
