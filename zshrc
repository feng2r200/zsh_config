source ~/.config/zsh/setup.zsh

# oh-my-zsh {{
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(ag docker fd fzf git mvn pip rust shell-proxy tmux zoxide)
source $ZSH/oh-my-zsh.sh
# }}

# zsh enhance {{
source ~/.config/zsh/settings.zsh

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

source ~/.config/zsh/export.zsh
source ~/.config/zsh/function.zsh
source ~/.config/zsh/alias.zsh

eval "$(navi widget zsh)"

eval "$(starship init zsh)"
