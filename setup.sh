#!/bin/bash

curl -k https://raw.githubusercontent.com/robertranjan/dotfiles/master/bashrc >> ~/.bashrc
curl -k https://raw.githubusercontent.com/robertranjan/dotfiles/master/tmux.conf > ~/.tmux.conf
curl -k https://raw.githubusercontent.com/robertranjan/dotfiles/master/vimrc >> ~/.vimrc
source ~/.bashrc
