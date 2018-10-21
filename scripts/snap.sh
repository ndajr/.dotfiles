#!/bin/bash

declare -a snap=(
  "tmux"
  "gimp"
  "skype"
  "spotify"
  "heroku"
)

for i in "${snap[@]}"
do
  snap install "$i" --classic
done
