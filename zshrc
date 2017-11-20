export ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="robbyrussell"
export SHELL=zsh

plugins=(git, zsh-syntax-highlighting)

# User configuration

export PATH="/home/wallar/catkin_ws/devel/bin:/opt/ros/indigo/bin:/opt/indigo/ros/include/bin:/usr/local/csail/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/wallar/Software"

source $ZSH/oh-my-zsh.sh

PROMPT="%{$fg_bold[magenta]%}(%*) %{$fg_bold[cyan]%}%n:%{$fg_bold[yellow]%~%}
%(?. %{$fg_bold[green]%}▶. %{$fg_bold[red]%}▶)%{$reset_color%} "


alias bp="vim ~/.zshrc; source ~/.zshrc"
alias rmd="rm -rf"
alias rmdir="rm -rf"
alias b="cd .."
alias l="ls"
alias f="cd -"
alias c="clear"
alias src="source ~/.zshrc"
alias ct="echo && cal && date && echo"
alias cl="clear"
alias ls="ls -hl --color"
alias login="ssh aw204.host.cs.st-andrews.ac.uk"
alias make="make -j8 -l8"
alias o="gnome-open"
alias ls='ls -lh --color'
alias tw="ping google.com"
alias gforcepull="git fetch --all; git reset --hard origin/master"
alias sshgoogle='sudo gcloud compute --project "ps1-networks" ssh --zone "us-east1-b" "networks-instance"'

export GUROBI_HOME=$HOME/software/gurobi652/linux64
export PATH=$PATH:$GUROBI_HOME/bin:$HOME/software/julia-3c9d75391c/bin
export PATH=$PATH:$HOME/mosek/8/tools/platform/linux64x86/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$GUROBI_HOME/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export GRB_LICENSE_FILE=/home/wallar/software/gurobi652/gurobi.lic
export GUROBI_LIB_NAME=gurobi65
export MOSEKLM_LICENSE_FILE=$HOME/mosek/mosek.lic

# source /opt/ros/indigo/setup.zsh
# source $HOME/catkin_ws/devel/setup.zsh
# source $HOME/bebop_ws/devel/setup.zsh
# source $HOME/multi_car_ws/devel/setup.zsh
export CATKIN_WS=$HOME/multi_car_ws
export ROS_IP=127.0.0.1
export ROS_MASTER_URI=http://localhost:11311
export LC_CTYPE=en_US.UTF-8
export WORKON_HOME=$HOME/envs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS="--no-site-packages"
export CAR_FRAME_ID=car0

export GOPATH=$HOME/projects/ridesharing_ws
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin

# if [[ ! $TERM =~ screen ]]; then
#     exec tmux
# fi
