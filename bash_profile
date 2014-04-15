
cat ~/priori.txt

TERM_PROGRAM=iTerm.app
TERM=screen
SHELL=/bin/bash

export CLICOLOR=1

export LSCOLORS=GxFxCxDxBxegedabagaced

PATH="/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/go/bin:/usr/texbin:/opt/local/bin:/opt/local/sbin:/Users/wallarelvo-mac/Downloads/adt-bundle-mac-x86_64-20130514/sdk/platform-tools/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/go/bin:/usr/local/go/bin:/usr/texbin:/Users/wallarelvo-mac/Downloads/adt-bndle-mac-x86_64-20130514/sdk/platform-tools/"

UNAME="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]"
DNAME="\[\033[33;1m\]\w\[\033[m\]"
PS1="$UNAME:$DNAME`if [ $? = 0 ]; then echo -e ' \e[01;32m>'; else echo -e ' \e[01;31m> '; fi` \[\e[01;34m\]\[\e[00m\]"
GOROOT="/usr/local/go"
PYTHONPATH="/Users/wallarelvo-mac/Documents/Software/OpenCV-2.4.2/release/lib:/usr/local/lib/python2.7/site-packages/"
GOPATH="/Users/wallarelvo-mac/Documents/gocode"

export PATH=/usr/local/bin:/usr/local/share/python:$PATH
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

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
alias p="cat ~/priori.txt"
alias vp="vim ~/priori.txt"

