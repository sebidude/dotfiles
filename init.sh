#!/bin/bash

# check if include is present in bashrc

if [ $# -ne 1 ];then
    echo "usage: $0 <rcfile or profile to patch"
    exit 1
fi

if ! grep -e '^. $HOME/dotfiles/include' $1
then
    echo '. $HOME/dotfiles/include' >> $1
fi