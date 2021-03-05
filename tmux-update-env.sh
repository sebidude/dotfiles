#!/bin/bash

PANEPID=$(tmux list-panes -F '#{pane_active} #{pane_pid}' | awk '/^1/ {print $2}')
tmux set-environment KUBECONFIG $HOME/.kube/default/current-${PANEPID}.conf
