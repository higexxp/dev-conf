#!/bin/sh

echo "source $(pwd)/my.zshrc" >> $HOME/.zshrc

brew install sheldon
brew install git-graph tig
brew install nvim

brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl -sS https://starship.rs/install.sh | sh
