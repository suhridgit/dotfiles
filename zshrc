export ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="robbyrussell"
export SHELL=zsh

plugins=(fast-syntax-highlighting k zsh-autosuggestions zsh-256color)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# Beautiful prompt
PROMPT="%{$fg_bold[magenta]%}(%*) %{$fg_bold[cyan]%}%n:%{$fg_bold[yellow]%~%}
%(?. %{$fg_bold[green]%}▶. %{$fg_bold[red]%}▶)%{$reset_color%} "

# Gurobi
export GUROBI_ROOT=$HOME/software/gurobi652
export GUROBI_HOME=$GUROBI_ROOT/linux64
export PATH=$PATH:$GUROBI_HOME/bin
export LD_LIBRARY_PATH=$GUROBI_HOME/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export GRB_LICENSE_FILE=$GUROBI_ROOT/gurobi.lic
export GUROBI_LIB_NAME=gurobi65

# Mosek
export MOSEKLM_LICENSE_FILE=$HOME/mosek/mosek.lic
export PATH=$PATH:$HOME/mosek/8/tools/platform/linux64x86/bin

# Go
export GOPATH=$HOME/projects/go_ws
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin

# Unity nautilus fix (maybe?)
export XDG_CURRENT_DESKTOP=Unity

# Aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi
