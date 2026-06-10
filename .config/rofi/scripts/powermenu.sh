#!/bin/bash

options="Desligar\nReiniciar\nSuspender\nLogout"

chosen=$(echo -e "$options" | rofi -dmenu -p "Power")

case "$chosen" in
    "Desligar") systemctl poweroff ;;
    "Reiniciar") systemctl reboot ;;
    "Suspender") systemctl suspend ;;
    "Logout") i3-msg exit ;;
esac
