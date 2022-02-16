# java path config
export JAVA_HOME=$(/usr/libexec/java_home)
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JDK_HOME=$JAVA_HOME
export CPPFLAGS="-I/usr/local/opt/openjdk/include"

# fzf
export FZF_DEFAULT_OPTS="--height 50% --layout=reverse --preview '(highlight -O ansi {} || bat {}) 2> /dev/null | head -500' --bind 'f2:execute(vim {})'"
export FZF_TMUX=1

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

