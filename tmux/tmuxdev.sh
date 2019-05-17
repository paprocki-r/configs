#!/bin/sh 
tmux new-session -s "standford" -d
tmux split-window -h
C-b left
ls -la
tmux split-window -v
tmux -2 attach-session -d 
