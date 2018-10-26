#!/bin/bash

declare -a snap=(
  "gimp"
  "skype"
  "spotify"
  "heroku"
  "altair"
)

for i in "${snap[@]}"
do
  snap install "$i" --classic
done
