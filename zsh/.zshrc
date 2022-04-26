export DOTFILES_HOME="$HOME/.dotfiles"
export ZSH="$DOTFILES_HOME/oh-my-zsh"


# Oh My ZSH
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="theunraveler"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Project folder
export PROJECTS=~/code

# Check if .localrc exists, put environment variables and other things that
# should be ignored in git here
if [[ -a ~/.localrc ]]
then
    source ~/.localrc
fi

# Source path files
find $DOTFILES_HOME -name path.sh|while read fname; do
	source $fname
done

# Source aliases files
find $DOTFILES_HOME -name aliases.sh|while read fname; do
	source $fname
done

# Set up Python virtualenv
source $DOTFILES_HOME/python/virtualenv.sh

# Better history search
# (https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys)
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
