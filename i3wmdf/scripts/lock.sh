#!/bin/bash
scrot /home/Pictures/Wallpapers/lock.jpg
convert /tmp/screen.png -scale 10% -scale 1000% /home/Pictures/Wallpapers/lock.jpg
[[ -f $1 ]] && convert /home/Pictures/Wallpapers/lock.jpg $1 -gravity center -composite -matte /home/Pictures/Wallpapers/lock.jpg
i3lock -u -i /tmp/screen.png
rm /home/Pictures/Wallpapers/lock.jpg
