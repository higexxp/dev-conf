# 履歴
HISTFILE=~/.zsh_history      # ヒストリファイルを指定
HISTSIZE=10000               # ヒストリに保存するコマンド数
SAVEHIST=10000               # ヒストリファイルに保存するコマンド数
setopt hist_ignore_all_dups  # 重複するコマンド行は古い方を削除
setopt hist_ignore_dups      # 直前と同じコマンドラインはヒストリに追加しない
setopt share_history         # コマンド履歴ファイルを共有する
setopt append_history        # 履歴を追加 (毎回 .zsh_history を作るのではなく)
setopt inc_append_history    # 履歴をインクリメンタルに追加
setopt hist_no_store         # historyコマンドは履歴に登録しない
setopt hist_reduce_blanks    # 余分な空白は詰めて記録

source $HOME/.dev-conf/p10k.zsh
[[ ! -f /usr/share/google-cloud-sdk/completion.zsh.inc ]] || source /usr/share/google-cloud-sdk/completion.zsh.inc
LS_COLORS="${LS_COLORS}:ow=01;34"; export LS_COLORS
if [[ "$OSTYPE" != "darwin"* ]]; then
	export DOCKER_HOST=tcp://localhost:2375
fi
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


chpwd() {
    ls
}

alias tf="terraform"
alias fb="firebase"
alias kc="kubectl"
alias vi="nvim"
alias dc="docker-compose"

