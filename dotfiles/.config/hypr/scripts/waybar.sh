#!/bin/bash

# ┌──────────────────────────────────────────┐
# │        Waybar reload script (Hyprland)    │
# └──────────────────────────────────────────┘

# Paths to config and style
style_file="$HOME/.config/waybar/style.css"
config_file="$HOME/.config/waybar/config"
log_file="/tmp/log_waybar"

# Kill existing waybar instances
pkill -x waybar
sleep 0.5  

# Log timestamp
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Trying to reload Waybar..." >> "$log_file"

if [[ -f "$style_file" && -f "$config_file" ]]; then
    waybar -c "$config_file" -s "$style_file" &>> "$log_file" &
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Reloading waybar with sucess." >> "$log_file"
else
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Error : Missing either config file or style file." >> "$log_file"
    exit 1
fi
