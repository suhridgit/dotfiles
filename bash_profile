
SHELL=/bin/bash

export CLICOLOR=1

export LSCOLORS=GxFxCxDxBxegedabagaced

UNAME="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]"
DNAME="\[\033[33;1m\]\w\[\033[m\]"
PS1="$UNAME:$DNAME`if [ $? = 0 ]; then echo -e ' \e[01;32m>'; else echo -e ' \e[01;31m> '; fi` \[\e[01;34m\]\[\e[00m\]"

export PATH=/usr/local/bin:/usr/local/share/python:/usr/local/go/bin:$PATH
export GOPATH=$HOME/Projects/go-ws
export PATH=$PATH:$GOPATH/bin

alias bp="vim ~/.bash_profile; source ~/.bash_profile"
alias rmd="rm -rf"
alias rmdir="rm -rf"
alias sshschool="ssh aw204@lyrane"
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
alias o="gnome-open"
alias ls='ls -lh --color'
alias :w="echo You ain't using vim bromigo..."
alias tw="ping facebook.com"

# For ZMQROS
export ZMQROS_NS_HOST=localhost
export ZMQROS_NS_PORT=8000
export ZMQROS_ROBOT_ID=wallarelvo
export ZMQROS_ROOT=/home/wallarelvo/Projects/zeromq-ros

# For ROS
source /opt/ros/indigo/setup.bash
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:/home/wallarelvo/ros
