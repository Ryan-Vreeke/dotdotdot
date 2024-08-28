export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.config/emacs/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

#Theme
ZSH_THEME=""

#Plugins
plugins=(git
         zsh-autosuggestions
         zsh-syntax-highlighting
         sudo
         web-search
         history
         jsontools
        )

source $ZSH/oh-my-zsh.sh

#Alias
alias ls='ls --color=auto'
alias l='ls --color=auto'
alias la='ls -a --color=auto'
alias lla='ls -la --color=auto'
alias ll='ls -l --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias v='nvim'

PS1='[\u@\h \W]\$ '

#Star Ship
eval "$(starship init zsh)"


