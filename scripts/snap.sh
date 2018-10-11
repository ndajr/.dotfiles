#!/bin/bash

declare -a snap=(
  "tmux"
  "gimp"
  "skype"
  "spotify"
)

for i in "${snap[@]}"
do
  sudo snap install "$i" --classic
done
