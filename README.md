# Dotfiles

## Contents

This repository stores config files and setup scripts for a new installation on a Mac. The `.config` directory contains configuration files for the following tools:

* alacritty, a terminal
* neovim, a highly extensible Vim editor
* starship, a customisable prompt for any shell

The macos directory contains any MacOS specification configuration, mainly settings defaults like screenshot location and opening Finder in list view by default.

## Running on a new system

Run the `setup.sh` command on a new system, this will create a symbolic link from the `.config` directory in this repository to the `"$HOME/.config"`. It will also install `homebrew` and various tools/apps via `brew bundle`, these are defined in the `Brewfile`.

A few manual steps are required after running the setup command:

* Install the desired Python versions using `pyenv`, e.g. `pyenv install 3.12`.
* `pipx install poetry`, this should be done after the setup script ensures the path for pipx
* Install Jetbrains toolbox from the [Jetbrains website](https://www.jetbrains.com/toolbox-app/).
* Install Go from the [Go website](https://go.dev/dl/).

