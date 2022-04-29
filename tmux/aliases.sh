tmux-dev() {
    local session="dev"

    tmux has-session -t $session 2>/dev/null

    if [ $? != 0 ]; then
        tmux new -s dev \; split-window -v \; split-window -h \; resize-pane -y 15
    fi

    tmux attach-session -t $session    
}

