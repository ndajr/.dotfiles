#!/bin/bash

# Get dotfiles installation directory
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sf "$DOTFILES_DIR/.bashrc" ~
ln -sf "$DOTFILES_DIR/.vimrc" ~

ln -snf "$DOTFILES_DIR/.local/share/fonts" ~/.local/share/fonts
ln -snf "$DOTFILES_DIR/.vim" ~/.vim
ln -snf "$DOTFILES_DIR/.i3/config" ~/.i3/config
