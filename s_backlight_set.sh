#!/bin/sh

if [ -z $1 ]; then 
    BACKLIGHT_LEVEL=255
else
    BACKLIGHT_LEVEL=$1
fi
echo $BACKLIGHT_LEVEL | sudo tee /sys/class/backlight/amdgpu_bl0/brightness
