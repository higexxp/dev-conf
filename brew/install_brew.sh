#!/bin/sh

git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew
mkdir ~/.linuxbrew/bin
ln -s ~/.linuxbrew/Homebrew/bin/brew ~/.linuxbrew/bin
echo 'eval $(~/.linuxbrew/bin/brew shellenv)' >> .zshrc


