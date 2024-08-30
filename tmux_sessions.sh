#!/bin/bash

# Name of the tmux session
SESSION_NAME="40_windows"
BASE_COMMAND="<command to run on all sessions"
DELAY=5  # Delay in seconds between running commands

tmux new-session -d -s $SESSION_NAME -n "grid"

# increase from 40 to more
for i in $(seq 2 40); do
  tmux split-window -t $SESSION_NAME -h
  tmux select-layout tiled  # Arrange panes in a tiled grid layout
done

# Run the command with the incrementing IMSI in each pane with a delay
for i in $(seq 1 40); do
  COMMAND="${BASE_COMMAND}
  tmux send-keys -t $SESSION_NAME.$i "$COMMAND" C-m
  sleep $DELAY  # Wait for the specified delay before starting the next command
done

# Select the first pane
tmux select-pane -t $SESSION_NAME.1

# Attach to the tmux session
tmux attach -t $SESSION_NAME
