#!/usr/bin/env sh

polychromatic-cli -d headset -z main -o none
polychromatic-cli -d headset -z main -o static -c ff00ff

polychromatic-cli -e "mauve-keyboard"
polychromatic-cli -e "mauve-mouse"
polychromatic-cli -e "mauve-station"

input-remapper-control --device "Razer Razer Mamba Elite" --command start --preset HyprlandMouse
dunstctl set-paused false

hyprctl dispatch dpms on DP-2
exit 0

