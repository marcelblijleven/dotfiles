ZSH="$HOME/.dotfiles/oh-my-zsh"

info () {
  printf "\r\033[00;34mINFO\e[0m $1\n"
}

if [ -d "$ZSH" ]; then
    info "oh-my-zsh already installed"
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended --keep-zshrc
fi

