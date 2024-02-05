#!/bin/bash

vol_info="vol: $(pamixer --get-volume-human)"
battery_info=$(upower --show-info $(upower --enumerate |\
grep 'BAT') |\
grep -E "state|percentage" |\
awk '{print $2}')

date_info=$(date +'%Y-%m-%d %I:%M %p')

echo $vol_info \| $battery_info \| $date_info
