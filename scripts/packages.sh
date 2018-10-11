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
  "software-properties-common"
  "dconf-editor"
  "silversearcher-ag"
)

for i in "${apt[@]}"
do
  sudo apt install -y "$i"
done
