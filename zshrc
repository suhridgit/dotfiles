export ZSH=/home/wallar/.oh-my-zsh

export ZSH_THEME="robbyrussell"
export SHELL=zsh

plugins=(git)

# User configuration

export PATH="/home/wallar/catkin_ws/devel/bin:/opt/ros/indigo/bin:/opt/indigo/ros/include/bin:/usr/local/csail/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/wallar/Software"

source $ZSH/oh-my-zsh.sh

PROMPT="%{$fg_bold[magenta]%}(%*) %{$fg_bold[cyan]%}%n:%{$fg_bold[yellow]~%}
%(?. %{$fg_bold[green]%}▶. %{$fg_bold[red]%}▶)%{$reset_color%} "


alias bp="vim ~/.zshrc; source ~/.zshrc"
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

source /opt/ros/indigo/setup.zsh
source $HOME/catkin_ws/devel/setup.zsh
export CATKIN_WS=$HOME/catkin_ws
export ROS_IP=127.0.0.1
export ROS_MASTER_URI=http://localhost:11311
export LC_CTYPE=en_US.UTF-8

# if [[ ! $TERM =~ screen ]]; then
#     exec tmux
# fi
