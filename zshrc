# zsh enhance {{

if [[ -z "$ZSH_CACHE_DIR" ]]; then
    export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"
fi

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true

setopt HIST_IGNORE_SPACE
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

# zsh-completions
if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

	autoload -Uz compinit
	compinit
fi

# git-extras
source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

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
alias ping='prettyping --nolegend'
alias top='sudo htop'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias help='tldr'
alias re='ranger'
alias vim='nvim'
alias javac='javac -J-Dfile.encoding=utf8'
alias del='trash -F'
alias bat='bat --theme gruvbox-dark'
alias python='python3'
alias gvim='neovide'

alias ls=' ls -G'
alias rm=' rm'
alias exit=' exit'

alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'

alias ssh-xiaolu='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no -p22222 liangdong@yahzdr2cwnrk.uhasadmin.com'
alias mycli-xiaolu='mycli -h 123.59.134.105 -u root -p xiaoluzhuanyongmima -P 4080'
alias mycli-local='mycli -u root -p root'

# }

eval "$(zoxide init zsh)"

# Source Prezto.
if [[ -s "$HOME/.zprezto/init.zsh" ]]; then
  source "$HOME/.zprezto/init.zsh"
fi

eval "$(starship init zsh)"
