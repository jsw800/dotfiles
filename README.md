# dotfiles

i3 themes are in i3/themes

mod+Shift+M to switch themes

mod+shift+B to switch backgrounds inside that theme

Desktop backgrounds are in photos. You'll have to copy those into /usr/local/photos, or edit the location specified in the theme config files and put them there.

Rofi themes are in rofiThemes. You'll have to copy these into /usr/share/rofi/themes.
These are based off of the material theme by Tomas Zaluckij with some edits by me.
There is a rofi theme corresponding to each i3 theme.

The i3scripts directory has a bunch of helper scripts like a locker script that makes your lock screen a blurred version of the previous screen (mod+Shift+X), as well as a bunch of i3blocks scripts that make the bar look how I like it. Put that directory into the $HOME dir.

Put all of the files in the fonts dir into ~/.fonts or the fonts won't work

Also, compton.conf goes into ~/.config
The i3blocks dir goes into ~/.config
