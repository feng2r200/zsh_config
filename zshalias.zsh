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

###

# tmux

alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tls='~/kit/tmux_ls.sh'

###

# ssh

alias ssh-xiaolu='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no -o ServerAliveInterval=30 -p22222 liangdong@yahzdr2cwnrk.uhasadmin.com'
alias mycli-xiaolu='mycli -h 123.59.134.105 -u root -p xiaoluzhuanyongmima -P 4080'
alias mycli-local='mycli -u root -p root'

###