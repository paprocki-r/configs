#!/bin/sh 
cd ~/cs20/tensor_flow_exercises/1/
tmux new-session -d 'vim 03_linear_starter.py'
.venv/bin/activate
tmux split-window -h #'ipython'
tmux split-window -v #
tmux new-window 'mutt'
tmux -2 attach-session -d 
