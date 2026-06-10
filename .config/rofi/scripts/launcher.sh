#!/bin/bash

chosen=$(echo -e "Apps\nExecutar\nClipboard\nWallpapers\nPower" | rofi -dmenu -p "Menu")

case "$chosen" in
    "Apps") rofi -show drun ;;
    "Executar") rofi -show run ;;
    "Clipboard") clipmenu ;;
    "Wallpapers") ~/.config/rofi/scripts/wallpaper.sh ;;
    "Power") ~/.config/rofi/scripts/powermenu.sh ;;
esac
