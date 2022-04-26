#!/usr/bin/env bash

if [ "$(uname -s)" == "Darwin" ]
then
    if test ! $(which brew)
    then
        echo "Installing homebrew"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
fi

exit 0

