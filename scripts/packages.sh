#!/bin/bash

declare -a apt=(
	"chromium-browser"
	"vim-gnome"
	"snapd"
	"powerline"
	"fonts-powerline"
	"keepass2"
	"filezilla"
    "curl"
    "xclip"
    "apt-transport-https"
    "ca-certificates"
    "docker-engine"
)

for i in "${apt[@]}"
do
   sudo apt install -y "$i"
done


declare -a snap=(
	"tmux"
	"docker"
    "gimp"
)

for i in "${snap[@]}"
do
    sudo snap install "$i" --classic
done

# installing nvm (optional)
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source ~/.dotfiles/.bashrc
