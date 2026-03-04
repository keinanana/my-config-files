#!/bin/bash

hyprctl switchxkblayout all next
layMain=$(hyprctl -j devices | jq '.keyboards' | jq '.[] | select (.main == true)' | awk -F '"' '{if ($2=="active_keymap") print $4}')
notify-send -i ~/.config/hypr/img/bell.png -t 500 "Language: $layMain"
