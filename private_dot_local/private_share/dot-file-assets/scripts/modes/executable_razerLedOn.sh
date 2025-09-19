#!/usr/bin/env sh

polychromatic-cli -d keyboard -o none
polychromatic-cli -d mouse -o none
polychromatic-cli -d stand -o none
polychromatic-cli -d headset -o none

hyprctl dispatch dpms off DP-2
exit 0

