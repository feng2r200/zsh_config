# - cd into the selected directory
cf() {
  DIR=`fd --type d --max-depth 1 -H --strip-cwd-prefix --follow | fzf-tmux` \
    && cd "$DIR"
}

# - cd to selected parent directory
cfr() {
  local declare dirs=()
  get_parent_dirs() {
    if [[ -d "${1}" ]]; then dirs+=("$1"); else return; fi
    if [[ "${1}" == '/' ]]; then
      for _dir in "${dirs[@]}"; do echo $_dir; done
    else
      get_parent_dirs $(dirname "$1")
    fi
  }
  local DIR=$(get_parent_dirs $(realpath "${1:-$PWD}") | fzf-tmux --tac)
  cd "$DIR"
}
