# dev-conf

## install

### pre-install

* apt-get install zsh curl gcc
* touch ~/.zshrc
* chsh -s /bin/zsh

### Main

```
git clone https://github.com/higexxp/dev-conf.git .dev-conf
cd .dev-config
sh install.sh
```
### Fonts

* https://github.com/romkatv/powerlevel10k#fonts
* https://github.com/microsoft/cascadia-code

## update

* cd ~/.dev-conf && git pull
* zinit self-update
* zinit update