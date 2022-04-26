#!/usr/bin/env bash

set -e

find . -type d \( -path ./oh-my-zsh -o -path ./scripts \) -prune -o -name install.sh -print | while read installer ;
do
    sh -c "${installer}" ;
done

