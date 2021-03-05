#!/bin/bash

_fullscriptpath="$(readlink -f ${BASH_SOURCE[0]})"
DOTFILEDIR="$(dirname $_fullscriptpath)"

# check if include is present in bashrc

if [ $# -ne 1 ];then
    echo "usage: $0 <rcfile or profile to patch"
    exit 1
fi

if ! grep -e "^. $DOTFILEDIR/include" $1
then
    echo ". $DOTFILEDIR/include" >> $1
fi