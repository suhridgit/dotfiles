
SHELL=/bin/bash

export CLICOLOR=1

export LSCOLORS=GxFxCxDxBxegedabagaced

UNAME="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]"
DNAME="\[\033[33;1m\]\w\[\033[m\]"
PS1="$UNAME:$DNAME\n\e[01;32m$ \e[00m\]"
export PATH=$PATH:$HOME/Software

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
alias ls="ls -hl --color"
alias login="ssh aw204.host.cs.st-andrews.ac.uk"
alias make="make -j8 -l8"
alias o="gnome-open"
alias ls='ls -lh --color'
alias :w="echo You ain't using vim bromigo..."
alias tw="ping facebook.com"
alias gforcepull="git fetch --all; git reset --hard origin/master"
alias make="make -j8 -l8"

# For ZMQROS
export ZMQROS_NS_HOST=localhost
export ZMQROS_NS_PORT=8000
export ZMQROS_ROBOT_ID=wallarelvo
export ZMQROS_ROOT=/home/wallarelvo/Projects/zeromq-ros

# For HTTPROS
export HTTPROS_NS_HOST=localhost
export HTTPROS_NS_PORT=8080
export HTTPROS_ROBOT_NAME=wallarelvo

#source /opt/ros/indigo/setup.bash
#source $HOME/catkin_ws/devel/setup.bash
#export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$HOME/ros

if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi
