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

# }}

# export {

# proxy
export https_proxy=http://127.0.0.1:6152;export http_proxy=http://127.0.0.1:6152;export all_proxy=socks5://127.0.0.1:6153

# java path config
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JDK_HOME=$JAVA_HOME
export CPPFLAGS="-I/usr/local/opt/openjdk/include"

# fzf
export FZF_DEFAULT_OPTS="--height 50% --layout=reverse --preview '(highlight -O ansi {} || bat {}) 2> /dev/null | head -500' --bind 'f2:execute(vim {})'"

# Editors
export TERM='xterm-256color'
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS='-SR'

# starship
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"

# Lua
export LUA_PATH="$XDG_CONFIG_HOME/nvim/lua/;;"

# MyCli
export MYCLI_HISTFILE="$XDG_CACHE_HOME/mycli/mycli-history"
# }

# alias {
source "$XDG_CONFIG_HOME/zsh/zshalias.zsh"
# }

eval "$(zoxide init zsh)"

# Source Prezto.
if [[ -s "$HOME/.zprezto/init.zsh" ]]; then
  source "$HOME/.zprezto/init.zsh"
fi

eval "$(starship init zsh)"
