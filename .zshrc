# Easy way to extract archives
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1;;
           *.tar.gz)    tar xvzf $1;;
           *.bz2)       bunzip2 $1 ;;
           *.rar)       unrar x $1 ;;
           *.gz)        gunzip $1  ;;
           *.tar)       tar xvf $1 ;;
           *.tbz2)      tar xvjf $1;;
           *.tgz)       tar xvzf $1;;
           *.zip)       unzip $1   ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1;;
           *) echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

up() { cd $(eval printf '../'%.0s {1..$1}) && pwd; }

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

export TERM="xterm-color"


# Basic git commands
alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gca='git commit --amend'
alias gcp='git cherry-pick -r'
alias gwip='git add *;git commit -m "WIP";'
alias gco='git checkout '

# create a new branch from the current commit
alias gb='git checkout -b '

# Search for a branch
alias gbg='git branch --list | grep '

# rebase from $1
function grb() { git rebase --rebase-merges "origin/$1"; }

# Interactive rebase the last $1 commits (defaults to 2)
function gri() {
    SINCE=${1:='2'}
    git rebase -i HEAD~"$SINCE";
}

# List changed files in the last $1 commits (defaults to 1), relative to the current path:
function gcf() {
    SINCE=${1:='1'}
    git diff --name-only --relative HEAD "HEAD~$SINCE";
}

