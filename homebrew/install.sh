#!/usr/bin/env bash

if test ! $(which brew)
then
    echo "Installing homebrew"

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

exit 0

