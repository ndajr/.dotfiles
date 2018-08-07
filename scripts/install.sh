#!/bin/bash

touch ~/.bashrc
touch ~/.vimrc
mkdir ~/.i3
touch ~/.i3/config
mkdir ~/.vim
mkdir -p ~/.local/share/fonts
mkdir ~/projetos
mkdir ~/.local/fonts/share

ln -snfv ~/.dotfiles/.bashrc ~/.bashrc
ln -snfv ~/.dotfiles/.vimrc ~/.vimrc
ln -snfv ~/.dotfiles/.local/share/fonts ~/.local/share/fonts
ln -snfv ~/.dotfiles/.vim ~/.vim
ln -snfv ~/.dotfiles/.i3 ~/.i3/config
ln -snfv ~/.dotfiles/fonts/ ~/.local/share/fonts
