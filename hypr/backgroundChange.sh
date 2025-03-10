#!/bin/bash

if ! pgrep -x hyprpaper &> /dev/null; then
    hyprpaper & disown
fi

while ! hyprctl hyprpaper status &> /dev/null; do
    sleep 0.1
done

directory="/home/Al4st0r/dotfiles/hypr/BackgroundImages/"
monitor=`hyprctl monitors | grep Monitor | awk '{print $2}'`

if [ -d "$directory" ]; then
    random_background=$(ls $directory*.jpg | shuf -n 1)
    hyprctl hyprpaper unload all
    hyprctl hyprpaper preload $random_background
    hyprctl hyprpaper wallpaper "$monitor,contain:$random_background"
fi
