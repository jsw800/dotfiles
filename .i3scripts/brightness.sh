#!/bin/bash
BRIGHTNESS=$(xrandr --verbose | grep -i brightness | cut -f2 -d ' ' | head -n1)

cmd=$1

if test $cmd = "inc"
then
    NEW=$(awk '{print $1+$2}' <<<"$BRIGHTNESS 0.05")
    if test $NEW = "1.05"
    then
        NEW="1.0"
    fi
    xrandr --output eDP-1 --brightness $NEW
fi

if test $cmd = "dec"
then
    NEW=$(awk '{print $1-$2}' <<<"$BRIGHTNESS 0.05")
    if test $NEW = "0.2"
    then
        NEW="0.25"
    fi
    xrandr --output eDP-1 --brightness $NEW
fi


