#!/bin/bash

SESSIONS=('rh' 'pace' 'riskienhallinta' 'riskienhallinta-client')

for SESSION in "${SESSIONS[@]}"
do
	tmux -2 new-session -d -s $SESSION
	tmux new-window -t $SESSION:1
	tmux split-window -v
	tmux select-pane -t 0
	tmux send-keys "cd /Users/hniirane/dev/$SESSION" C-m
	tmux select-pane -t 1
	tmux send-keys "cd /Users/hniirane/dev/$SESSION" C-m
done
