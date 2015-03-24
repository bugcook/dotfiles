#!/bin/sh
tmux new-session \; \
  split-window -h -l 158 \; \
  select-pane -L \; \
  split-window -h -l 80 \; \
  select-pane -R \; \
  split-window -v -p 50 \; \
  split-window -h -p 50 \; \
  select-pane -U \; \
  split-window -h -p 50 \; \
  select-pane -L \; \
  select-pane -L \;
  select-pane -L \;

