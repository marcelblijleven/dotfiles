#!/usr/bin/env bash

# Running this script after cloning the repository makes sure
# everything is set up correctly (and automatically).

# Create directories
export CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
# Create symbolic link from the repository to the config dir
ln -sf "$PWD/.config" "$CONFIG_HOME"

# Clone alacritty themes into config dir
git clone https://github.com/alacritty/alacritty-theme "$CONFIG_HOME/alacritty/themes"

# Run MacOS defaults
./macos/defaults.sh

# Install homebrew and run brew bundle

## Check for Homebrew
if test ! $(which brew); then
	echo "  Installing Homebrew"

	bash <(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
fi

## Install from Brewfile
brew bundle

# Make sure pipx is installed correctly
pipx ensurepath

exit 0
