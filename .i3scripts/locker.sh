#!/bin/bash
out=$(ps -A | grep i3lock)
echo $out
if [$out -eq ""]
then
    import -window root /tmp/screenshot.png
    convert /tmp/screenshot.png -spread 10 /tmp/screenshotblur.png
    rm /tmp/screenshot.png
    i3lock -e -i /tmp/screenshotblur.png
fi
