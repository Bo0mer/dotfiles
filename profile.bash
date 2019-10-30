source ~/dotfiles/misc/term.sh
alias govim='vim -u ~/.vimrc.go'
alias ll='ls -la'
alias dc='docker-compose'
alias d='docker'

export LC_ALL=en_US.UTF-8

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/workspace/Go
export PATH=$PATH:$GOPATH/bin

export REACTPATH=/Users/borshukov/ReactProjects
export RAILSPATH=/Users/borshukov/RailsProjects
export PHPPATH=/Users/borshukov/PHPProjects

# Used for https://github.com/Schniz/fnm
eval "`fnm env --multi`"

export NPM_TOKEN='token goes here'

source $HOME/workspace/z/z.sh
source $HOME/dotfiles/misc/git-completion.bash

alias gitlog='git log `git describe --tags --abbrev=0`..HEAD --oneline --no-merges'

export GO111MODULE=on
export GOFLAGS=-mod=vendor
