#!/bin/bash

preload() {

    monitor="eDP-1"

    directory="$HOME/Downloads/Wallpapers"

    wallpapers=$(find "$directory" -type f | sort -R )

    for wallpaper in $wallpapers; do

        preload_str+="preload = "$wallpaper"\n"
        wallpaper_str+="wallpaper = $monitor, $wallpaper\n"

    done

    echo -en "$preload_str\n$wallpaper_str" > ~/.config/hypr/hyprpaper.conf

}

preload
