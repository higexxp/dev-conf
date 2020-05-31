#!/bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

echo "source $HOME/.dev-conf/my.zshrc" >> $HOME/.zshrc

