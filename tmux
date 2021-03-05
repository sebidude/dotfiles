#!/bin/bash

if [ ! $USE_TMUX ]; then
    echo USE_TMUX: $USE_TMUX
    return
fi

if [ ! -r $HOME/.tmux.conf ]; then
    ln -s $HOME/dotfiles/config/.tmux.conf $HOME/.tmux.conf
fi


