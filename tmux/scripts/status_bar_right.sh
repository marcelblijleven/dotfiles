#!/usr/bin/env bash

function time_24() {
    printf "%s " "$(strftime %F)"
}

function status_bar() {
    printf "%s " "$(~/.dotfiles/tmux/scripts/spotify.sh)"
    time_24
}

status_bar

