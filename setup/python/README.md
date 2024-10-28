# Set up Python

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
