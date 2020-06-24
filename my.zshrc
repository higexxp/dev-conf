source $HOME/.dev-conf/p10k.zsh
LS_COLORS="${LS_COLORS}:ow=01;34"; export LS_COLORS
export DOCKER_HOST=tcp://localhost:2375
export PATH=$HOME/.nodebrew/current/bin:$HOME/.local/bin:$PATH


# p10k configure
export POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# Load OMZ Git library
zinit snippet OMZL::git.zsh

# Load Git plugin from OMZ
zinit snippet OMZP::git
zinit cdclear -q # <- forget completions provided up to this moment

setopt promptsubst

# Load theme from OMZ
zinit snippet OMZT::gnzh

# Load normal GitHub plugin with theme depending on OMZ Git library
#zinit light NicoSantangelo/Alpharized
#zinit light agnoster/agnoster-zsh-theme
zinit light romkatv/powerlevel10k

# 補完
zinit light zsh-users/zsh-autosuggestions

# シンタックスハイライト
zinit light zdharma/fast-syntax-highlighting

# Ctrl+r でコマンド履歴を検索
zinit light zdharma/history-search-multi-word

source $HOME/.dev-conf/anyframe.zshrc

# クローンしたGit作業ディレクトリで、コマンド `git open` を実行するとブラウザでGitHubが開く
zinit light paulirish/git-open

# Gitの変更状態がわかる ls。ls の代わりにコマンド `k` を実行するだけ。
zinit light supercrabtree/k

