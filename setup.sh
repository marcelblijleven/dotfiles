#!/bin/bash

# Running this script after cloning the repository makes sure
# everything is set up correctly (and automatically).

# Create directories
export XDG_CONFIG_HOME="$HOME/.config"

# Create symbolic link from the repository to the config dir
ln -sf "$PWD/.config" "$XDG_CONFIG_HOME"

# Clone alacritty themes into config dir
git clone https://github.com/alacritty/alacritty-theme "$XDG_CONFIG_HOME/alacritty/themes"
