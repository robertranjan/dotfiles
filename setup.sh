#!/bin/bash

echo "downloading content for ~/.bashrc"
curl -k https://raw.githubusercontent.com/robertranjan/dotfiles/master/bashrc >> ~/.bashrc 2> /dev/null
echo "downloading content for ~/.tmux.conf"
curl -k https://raw.githubusercontent.com/robertranjan/dotfiles/master/tmux.conf > ~/.tmux.conf 2> /dev/null
echo "downloading content for ~/.vimrc"
curl -k https://raw.githubusercontent.com/robertranjan/dotfiles/master/vimrc >> ~/.vimrc 2> /dev/null
echo "Sourcing ~/.bashrc"
source ~/.bashrc
