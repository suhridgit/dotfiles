
export SHELL=/bin/zsh

# export CLICOLOR=1

# export LSCOLORS=GxFxCxDxBxegedabagaced

# UNAME="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]"
# DNAME="\[\033[33;1m\]\w\[\033[m\]"
# PS1="\\[$UNAME:$DNAME\n\e[01;32m$ \e[00m\]"
export PATH=$PATH:$HOME/software

alias bp="vim ~/.bash_profile; source ~/.bash_profile"
alias rmd="rm -rf"
alias rmdir="rm -rf"
alias b="cd .."
alias l="ls"
alias f="cd -"
alias c="clear"
alias src="source ~/.bash_profile"
alias ct="echo && cal && date && echo"
alias cl="clear"
alias ls="ls -hl --color"
alias login="ssh aw204.host.cs.st-andrews.ac.uk"
alias make="make -j8 -l8"
alias o="gnome-open"
alias ls='ls -lh --color'
alias tw="ping google.com"
alias gforcepull="git fetch --all; git reset --hard origin/master"

source /opt/ros/indigo/setup.bash
source $HOME/catkin_ws/devel/setup.bash
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/software/julia-2e358ce975/bin
# export CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH:/opt/indigo/ros/include
export CATKIN_WS=$HOME/catkin_ws
# export ROS_PACKAGE_PATH=$HOME/catkin_ws/src:$ROS_PACKAGE_PATH
# export odroid=192.168.20.200
# export ROS_IP=192.168.20.155
export ROS_IP=127.0.0.1
# export ROS_MASTER_URI=http://192.168.20.142:11311
export ROS_MASTER_URI=http://localhost:11311

# if [[ ! $TERM =~ screen ]]; then
#     exec tmux
# fi

export PATH="$HOME/.cargo/bin:$PATH"
