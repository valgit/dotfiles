# my bash profile
#

export EDITOR=vi
export PATH=/usr/local/bin:$PATH

export CLICOLOR=1
# light term
export LSCOLORS=GxFxCxDxBxegedabagaced
# dark term
export LSCOLORS=GxFxCxDxBxegedabagaced

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias ducks='du -hcks * | sort -rn|head -11' # Renvoie la liste des répertoires avec leur taille

GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='\u@\h:\w$(__git_ps1)$ '
#export PS1='\h:\W \u$(__git_ps1)$ '
export PS1="\[\e[00;37m\]\u@\h[\[\e[0m\]\[\e[00;36m\]\W\[\e[0m\]\[\e[00;37m\]]\\$\[\e[0m\]"


