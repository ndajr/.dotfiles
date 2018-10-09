#!/bin/bash

mkdir /usr/local/bin/powerline
git clone https://github.com/powerline/powerline.git /usr/local/bin/powerline/
echo '. /usr/local/bin/powerline/powerline/bindings/bash/powerline.sh' >> ~/.dotfiles/.bashrc
