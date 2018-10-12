#!/bin/bash

if ls ~/.config/i3/themes/ | ~/.i3scripts/changeThemeHelper.sh
then
    ls ~/.config/i3/themes/ | while read file; do
        cp ~/.config/i3/themes/$file ~/.config/i3/config
        i3-msg restart
        break
    done
fi

