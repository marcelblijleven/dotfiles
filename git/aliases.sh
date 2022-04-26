#!/usr/bin/env bash

# Git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'

# Removes `+` and `-` from diff and shows only colors
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb'
alias gac='git add -A && git commit -m'
alias ge='git-edit-new'

# Submodules
alias gsupdate='git submodule foreach git pull origin master'

# Worktrees (this is the good stuff)
gwa() {
    git worktree add "$1"
    cd $1
}
alias gwl='git worktree list'
alias gwr='git worktree remove '
alias gwp='git worktree prune'

