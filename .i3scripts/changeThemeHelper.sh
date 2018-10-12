#!/bin/bash

while read file; do
if [ "$flag" -eq "1" ]
then
    echo $file
    cp ~/.config/i3/themes/$file ~/.config/i3/config
    i3-msg restart
    exit 1
fi
out=$(diff ~/.config/i3/config ~/.config/i3/themes/$file)
if test -z "$out"
then
    echo $file
    flag=1
fi
done

