#!/bin/bash

OPTION=$(echo -e "500K\n1000K\n1500K\n2000K\n2500K\n3000K\n3500K\nPadrão (4000K)\nDesativar" | rofi -dmenu -p "Luz Noturna")

# Mata qualquer instância anterior
pkill gammastep

# Reseta gamma antes de aplicar outro
xrandr --output "$(xrandr | grep ' connected' | head -n1 | cut -d ' ' -f1)" --gamma 1:1:1 --brightness 1

case "$OPTION" in
    "500K")
        gammastep -m randr -O 500 &
        ;;
        
    "1000K")
        gammastep -m randr -O 1000 &
        ;;
        
    "1500K")
        gammastep -m randr -O 1500 &
        ;;
        
    "2000K")
        gammastep -m randr -O 2000 &
        ;;
        
    "2500K")
        gammastep -m randr -O 2500 &
        ;;
        
    "3000K")
        gammastep -m randr -O 3000 &
        ;;
        
    "3500K")
        gammastep -m randr -O 3500 &
        ;;
        
    "Padrão (4000K)")
        gammastep -m randr -O 4000 &
        ;;
        
    "Desativar")
        gammastep -x
        ;;
esac
