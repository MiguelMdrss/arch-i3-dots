#!/bin/bash
brightnessctl | grep -oP '\(\K[0-9]+(?=%)' | awk '{print "Bri:" $1 "%"}'
