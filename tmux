#!/bin/bash

if [ ! $USE_TMUX ]; then
    return
fi

if [ ! -r $HOME/.tmux.conf ]; then
    ln -s $DOTFILEDIR/config/.tmux.conf $HOME/.tmux.conf
fi


