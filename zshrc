# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# lang
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# oh-my-zsh {{
# export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME=""
# plugins=(ag docker fd fzf git mvn pip rust shell-proxy tmux)
# source $ZSH/oh-my-zsh.sh
# }}

# zsh enhance {{
ZSH_TMUX_CONFIG="$XDG_CONFIG_HOME/tmux/tmux.conf"

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true

HISTFILE="$XDG_CACHE_HOME/zsh/zsh_history"

setopt HIST_IGNORE_SPACE

SHELLPROXY_URL="http://127.0.0.1:6152"
#proxy enable

# zsh-completions
if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

	autoload -Uz compinit
	compinit
fi

# autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# git-extras
source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

# syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history-substring-search
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# }}

# export {
# java path config
export JAVA_HOME=$(/usr/libexec/java_home)
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JDK_HOME=$JAVA_HOME
export CPPFLAGS="-I/usr/local/opt/openjdk/include"

# fzf
export FZF_DEFAULT_OPTS="--height 50% --layout=reverse --preview '(highlight -O ansi {} || bat {}) 2> /dev/null | head -500' --bind 'f2:execute(vim {})'"

# Editors
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'
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

alias ssh-xiaolu='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no -p22222 liangdong@yahzdr2cwnrk.uhasadmin.com'
alias mycli-xiaolu='mycli -h 123.59.134.105 -u root -p xiaoluzhuanyongmima -P 4080'

alias ssh-ld-ucloud='ssh -i ~/kit/ld_ucloud.com.pem ubuntu@117.50.163.231'
# }

eval "$(zoxide init zsh)"

# Source Prezto.
if [[ -s "$HOME/.zprezto/init.zsh" ]]; then
  source "$HOME/.zprezto/init.zsh"
fi

eval "$(starship init zsh)"
