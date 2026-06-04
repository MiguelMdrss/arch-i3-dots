#!/bin/bash

vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

# extrai número
percent=$(echo $vol | awk '{print int($2*100)}')

# verifica mute
if echo $vol | grep -q MUTED; then
    echo "Vol:muted"
else
    echo "Vol:${percent}%"
fi
