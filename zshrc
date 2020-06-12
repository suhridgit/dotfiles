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
export GONOPROXY="*"
export GONOSUMDB="*"
export GOPROXY="off"
export PATH=$PATH:$GOHOME/bin:$GOPATH/bin
export PATH=$PATH:$HOME/software/flutter/bin

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
alias json="python -m json.tool"
alias lasttag="git tag | tail -n 1"
alias simpleserver="python -m SimpleHTTPServer"

export LC_CTYPE=en_US.UTF-8

export GUROBI_HOME=/Library/gurobi752/mac64
export GUROBI_LIB_NAME=gurobi75
export FLASK_APP=server
export GITHUB_AUTH_TOKEN=efe258df66a4a32f6cd6c400f641535f15acff8c
export MapboxAccessToken=pk.eyJ1Ijoid2FsbGFyZWx2byIsImEiOiJjanpsYzF5MDgwNHo4M25tZHdweWNyZ2hsIn0.LWsfOYaLSqeCk7ZSAGke6w
export REACT_APP_MAPBOX_TOKEN=${MapboxAccessToken}
export REACT_APP_HASURA_URL=http://hasura.routable.ai/v1alpha1/graphql
export ZSH_THEME_GIT_PROMPT_CACHE=1

source $HOME/.cargo/env
export PATH=$PATH:$HOME/.cargo/bin

# export GOOGLE_APPLICATION_CREDENTIALS=$HOME/.config/gcloud/creds.json


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/wallar/software/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/wallar/software/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/wallar/software/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/wallar/software/google-cloud-sdk/completion.zsh.inc'; fi
