export ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="robbyrussell"
export SHELL=zsh

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

plugins=(git zsh-syntax-highlighting k git-prompt)

# User configuration

export PATH="/home/wallar/catkin_ws/devel/bin:/opt/ros/indigo/bin:/opt/indigo/ros/include/bin:/usr/local/csail/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/wallar/Software"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/or-tools/lib/
export PATH=$PATH:/usr/local/texlive/2016/bin/x86_64-darwin
export GOHOME=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOHOME/bin:$GOPATH/bin

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
alias ls="ls -hl"
alias login="ssh aw204.host.cs.st-andrews.ac.uk"
alias make="make -j8 -l8"
alias o="gnome-open"
alias tw="ping google.com"
alias gforcepull="git fetch --all; git reset --hard origin/master"
alias sshgoogle='sudo gcloud compute --project "ps1-networks" ssh --zone "us-east1-b" "networks-instance"'

# source /opt/ros/indigo/setup.zsh
# source $HOME/catkin_ws/devel/setup.zsh
export LC_CTYPE=en_US.UTF-8

# added by travis gem
[ -f /Users/wallar/.travis/travis.sh ] && source /Users/wallar/.travis/travis.sh

export GUROBI_HOME=/Library/gurobi752/mac64
export GUROBI_LIB_NAME=gurobi75
export FLASK_APP=server
export GITHUB_AUTH_TOKEN=96edbea70f41686e339207a4934d5439638918a0
export GITHUB_AUTH_TOKEN=7f0f7fdddde25c330e653b17da51618327e065e5
export MapboxAccessToken=pk.eyJ1Ijoid2FsbGFyZWx2byIsImEiOiJjanpsYzF5MDgwNHo4M25tZHdweWNyZ2hsIn0.LWsfOYaLSqeCk7ZSAGke6w
export ZSH_THEME_GIT_PROMPT_CACHE=1


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/wallar/software/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/wallar/software/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/wallar/software/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/wallar/software/google-cloud-sdk/completion.zsh.inc'; fi
