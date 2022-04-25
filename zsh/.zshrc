export DOTFILES_HOME="$HOME/.dotfiles"

# Oh My ZSH
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH_HOME="$HOME/.oh-my-zsh"

ZSH_THEME="theunraveler"
plugins=(git)

source $ZSH_HOME/oh-my-zsh.sh

# Project folder
export PROJECTS=~/code

# Check if .localrc exists, put environment variables and other things that
# should be ignored in git here
if [[ -a ~/.localrc ]]
then
    source ~/.localrc
fi

# Source all sh files in ~/.dotfiles and sub directories
typeset -U config_files
config_files=($DOTFILES_HOME/**/*.sh)

unset config_files

# Better history search
# (https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys)
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
