#!/bin/bash

if [ $BLOCK_BUTTON = 4 ]
then
    ~/.i3scripts/brightness.sh inc
fi
if [ $BLOCK_BUTTON = 5 ]
then
    ~/.i3scripts/brightness.sh dec
fi


b=`xrandr --verbose | grep -i brightness | cut -f2 -d ' ' | head -n1 | cut -f2 -d '.'`
BRIGHTNESS=' '$b
if [ "$BRIGHTNESS" = " 0" ]
then
    BRIGHTNESS=" 100"
fi
echo $BRIGHTNESS
