
SHELL=/bin/bash

export CLICOLOR=1

export LSCOLORS=GxFxCxDxBxegedabagaced

UNAME="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]"
DNAME="\[\033[33;1m\]\w\[\033[m\]"
PS1="$UNAME:$DNAME`if [ $? = 0 ]; then echo -e ' \e[01;32m>'; else echo -e ' \e[01;31m> '; fi` \[\e[01;34m\]\[\e[00m\]"

alias bp="vim ~/.bash_profile; source ~/.bash_profile"
alias rmd="rm -rf"
alias rmdir="rm -rf"
alias sshschool="ssh aw204@aw204.host.cs.st-andrews.ac.uk"
alias sshbowtie="ssh root@bowtie.mobi"
alias sshom="ssh root@oculometrics.com"
alias b="cd .."
alias l="ls"
alias f="cd -"
alias c="clear"
alias src="source ~/.bash_profile"
alias projects="cd ~/Documents/Projects"
alias docs="cd ~/Documents"
alias uni="cd ~/Documents/Uni"
alias jh="cd ~/Documents/Uni/JH"
alias ct="echo && cal && date && echo"
alias cl="clear"
alias ls="ls -hl --color"
alias login="ssh aw204.host.cs.st-andrews.ac.uk"
alias make="make -j8 -l8"

alias o="gnome-open"
alias pj="~/Software/processing-2.2.1/processing-java"
alias pr="~/Software/processing-2.2.1/processing"

PATH=$PATH:/cs/home/aw204/Software/savilerow-1.6.1
PATH=$PATH:/cs/home/aw204/Software/minion-1.7/bin
PATH=$PATH:/cs/home/aw204/Software/
PATH=$PATH:/cs/home/aw204/bin
