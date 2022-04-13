#
# Browser
#

if [[ -z "$BROWSER" && "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# Editors
#

export TERM='xterm-256color'
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS='-SR'

#
# Language
#

export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  $HOME/{,s}bin(N)
  /opt/{homebrew,local}/{,s}bin(N)
  /usr/local/{,s}bin(N)
  $path
)

