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

# for dev
echo "setting proxy env" 
export http_proxy=http://10.24.219.17:3128
export https_proxy=http://10.24.219.17:3128
export QTDIR=/Users/val/Documents/Sources/qt4
export FFMPEGDIR=/Users/val/Documents/Sources/ffmpeg

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='\u@\h:\w$(__git_ps1)$ '
export PS1='\h:\W \u$(__git_ps1)$ '


