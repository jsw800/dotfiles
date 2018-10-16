#!/bin/bash

b=`xrandr --verbose | grep -i brightness | cut -f2 -d ' ' | head -n1 | cut -f2 -d '.'`
BRIGHTNESS=' '$b
if [ "$BRIGHTNESS" = " 0" ]
then
    BRIGHTNESS=" 100"
fi
echo $BRIGHTNESS
