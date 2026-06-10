#!/bin/bash

DIR="$HOME/Pictures"

chosen=$(find "$DIR" -type f | rofi -dmenu -p "Wallpapers")

[ -z "$chosen" ] && exit

feh --bg-scale "$chosen"
