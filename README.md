# Dotfiles

![GitHub Tag](https://img.shields.io/github/v/tag/marcelblijleven/dotfiles?style=plastic&label=version)

There are many like it, but this one is mine.

## What is it?

This repository contains various configuration files, also known as _dotfiles_,
that I use to set up both my work and personal laptop. This ensures they're
configured the same.

## How does it work?

The setup relies on `stow` to create symbolic links from this repository to the
home directory (`~`, `$HOME`, `XDG_CONFIG_HOME` etc.). This means that every
file in this repository (excluding those ignored in `.stowrc`
and`.stow-local-ignore`) are symlinked to the home directory,
for example the`.config` directory in this repository is symlinked to `~/.config/`.

## Configuration

<!--- end of static README.md --->

### .config

This is where the majority of the configuration files life.
This directory will be symlinked to `~/.config/`.

#### Set up Python

The neovim configuration expects a virtualenv called `neovim` to be set up. This should be created through `pyenv` using
the following commands:

```bash
pyenv virtualenv 3.12 neovim
pyenv activate neovim
pip install ./neovim-venv-requirements.txt
```

This installs pynvim, ruff, pytest and debugpy into the neovim virtualenv. Neovim should be configured to use this virtualenv
already, this can be checked by opening neovim and running `:checkhealth python`. If the `python3_prog_host` is set to the
virtualenv python then it is set up correctly.

> [!NOTE]
> if you're seeing an error about a virtualenv in the provider.python section it might be because you're not in a repository
that has a virtualenv set up.

#### Neovim

Neovim configuration, based on LazyVim

Part of this README was auto-generated at 2024-10-28 21:08
