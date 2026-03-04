#!/bin/bash

killall -9 waybar &
killall -9 swaync
killall -9 swayosd-server

waybar &
swaync
swayosd-server

sleep 1
notify-send -i ~/.config/hypr/img/bell.png -t 2000 "Reset"
