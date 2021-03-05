#!/bin/bash

_fullscriptpath="$(readlink -f ${BASH_SOURCE[0]})"
BASEDIR="$(dirname $_fullscriptpath)"

# check if include is present in bashrc

if [ $# -ne 1 ];then
    echo "usage: $0 <rcfile or profile to patch"
    exit 1
fi

if ! grep -e "^. $BASEDIR/include" $1
then
    echo ". $BASEDIR/include" >> $1
fi