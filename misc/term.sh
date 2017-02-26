#!/bin/bash

parseGitBranch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[ \1 ]/'
}

function formattedGitBranch {
    test -n "$(parseGitBranch)" && echo -e " @\x1B[0;35m $(parseGitBranch)"
}

export PS1="\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[m\]\$(formattedGitBranch)\[\e[0m\]\n\[\e[0m\]\$ "
export TERM="screen-256color"
