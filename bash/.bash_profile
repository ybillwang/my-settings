# customize prompt
function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W \$(parse_git_branch) \[\033[00m\]\$ "

# virtualenvwrapper exports
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/coding
source /usr/local/bin/virtualenvwrapper.sh

# go lang exports
export GOPATH=$HOME/go
