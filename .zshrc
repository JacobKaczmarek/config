export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias zshrc="vim ~/.zshrc"

alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
