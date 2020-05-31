LS_COLORS="${LS_COLORS}:ow=01;34"; export LS_COLORS
export DOCKER_HOST=tcp://localhost:2375

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

