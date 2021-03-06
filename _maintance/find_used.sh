#!/bin/bash

DIR=`cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd `
DIR=`dirname $DIR`

if [ -z "$1" ] ; then
    echo "search pattern needed"
    exit 0
fi

echo "search in" $DIR

#find $DIR -iname '*.tscn' -iname '*.gd' -type f -print0 | xargs -0 echo grep $1
find $DIR \( -iname '*.tscn' -or -iname '*.gd' -or -iname '*.godot' \) -type f -print0 | xargs -0 grep "$1"
