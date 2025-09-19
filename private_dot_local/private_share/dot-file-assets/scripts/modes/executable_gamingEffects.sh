#!/usr/bin/env sh

# change station
polychromatic-cli -d stand -z main -o static -c 0000ff

# change mouse
polychromatic-cli -d mouse -z left -o wave -p 2
polychromatic-cli -d mouse -z right -o wave -p 2
polychromatic-cli -d mouse -z logo -o static -c 0000ff
polychromatic-cli -d mouse -z scroll -o reactive -p 1 -c 0000ff

# change headset(first none then actual effect)
polychromatic-cli -d headset -z main -o none
polychromatic-cli -d headset -z main -o static -c 0000ff

# change keyboard
polychromatic-cli -e "gaming-keyboard"

input-remapper-control --device "Razer Razer Mamba Elite" --command stop --preset HyprlandMouse
dunstctl set-paused true
exit 0

