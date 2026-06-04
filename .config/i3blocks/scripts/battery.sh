#!/bin/bash

BAT="/sys/class/power_supply/BAT1"

cap=$(cat "$BAT/capacity")
stat=$(cat "$BAT/status")

case "$stat" in
    Charging) ;;
    Discharging) ;;
    Full) ;;
esac

echo "Bat:${cap}% ${icon}"
