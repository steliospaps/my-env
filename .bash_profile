. ~/bin/git-completion.bash
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
export PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\$'

export PATH="$PATH:$HOME/npm/bin"
