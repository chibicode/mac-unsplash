#!/bin/bash
# Use http://launched.zerowidth.com/plists/49c13530-8d26-0132-5958-7a903c0a4b43
# Must turn off "change wallpaper every X minutes" setting from system prefs
mkdir -p ~/Pictures/Unsplash
LOGDATE=$(date +%Y%m%dT%H%M%S)
cd ~/Pictures/Unsplash/
find . -type f -delete
curl -o "$LOGDATE.png" "https://unsplash.it/2880/1800/?random"
osascript -e "tell application \"System Events\" to set picture of every desktop to \"~/Pictures/Unsplash/$LOGDATE.png\""
