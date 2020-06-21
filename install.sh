#!/bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

echo "source $HOME/.dev-conf/my.zshrc" >> $HOME/.zshrc

wget -P /tmp https://github.com/peco/peco/releases/download/v0.5.7/peco_linux_amd64.tar.gz
tar zxf /tmp/peco_linux_amd64.tar.gz -C /tmp
sudo cp /tmp/peco_linux_amd64/peco /usr/local/bin
rm -rf /tmp/peco_linux_amd64.tar.gz
rm -rf /tmp/peco_linux_amd64

