# zsh enhance {{

if [[ -z "$ZSH_CACHE_DIR" ]]; then
    export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"
fi

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true

setopt HIST_IGNORE_SPACE
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

# history-substring-search
export HISTORY_SUBSTRING_SEARCH_PREFIXED=true
export HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=true

# git-extras
source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh
# }}

# export {
source "$XDG_CONFIG_HOME/zsh/zshexport.zsh"
# }

# alias {
source "$XDG_CONFIG_HOME/zsh/zshalias.zsh"
# }

# func {
source "$XDG_CONFIG_HOME/zsh/zshfunc.zsh"
# }

if [[ -s "$XDG_CONFIG_HOME/zsh/zsh_personal.zsh" ]]; then
  source "$XDG_CONFIG_HOME/zsh/zsh_personal.zsh"
fi

# Source Prezto.
if [[ -s "$HOME/.zprezto/init.zsh" ]]; then
  source "$HOME/.zprezto/init.zsh"
fi

eval "$(zoxide init zsh)"

eval "$(navi widget zsh)"

eval "$(starship init zsh)"
