# zsh setup, this will allow search in history with up/down keys

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

echo ${BASH_SOURCE[0]}

# nvm setup

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pyenv / python setup

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# Starship setup

eval "$(starship init zsh)"

# Setup env variables for directories
export REPOS="$HOME/repos"
export GHREPOS="$REPOS/github.com"
export MYREPOS="$GHREPOS/marcelblijleven"
export DOTFILES="$MYREPOS/dotfiles"
export DOTFILES_SCRIPTS="$DOTFILES/scripts"

# Add DOTFILES_SCRIPTS to PATH
export PATH="$DOTFILES_SCRIPTS:$PATH"

# Aliasses (todo: move to separate file)
alias vim="nvim"
alias repos="cd $REPOS"
alias myrepos="cd $MYREPOS"
# alias notes="cd '$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notes'"
alias notes="cd ~/vaults/personal"
alias ll="ls -nal"

# Created by `pipx` on 2024-03-09 12:41:37
export PATH="$PATH:$HOME/.local/bin"

# Add GOPATH to PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# PWD is local to the dotfiles repository, add path dirs to path
export PATH="$PWD/git/bin:$PATH"
