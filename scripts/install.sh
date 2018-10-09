#!/bin/bash

mkdir -p ~/.local/share/fonts
mkdir ~/projetos
mkdir ~/.local/fonts/share

ln -snfv ~/.dotfiles/.bashrc ~/.bashrc
ln -snfv ~/.dotfiles/.vimrc ~/.vimrc
ln -snfv ~/.dotfiles/.local/share/fonts ~/.local/share/fonts
ln -sv ~/.dotfiles/.vim ~/.vim
ln -snfv ~/.dotfiles/fonts/ ~/.local/share/fonts
