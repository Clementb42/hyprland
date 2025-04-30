#!/bin/bash

# ┌──────────────────────────────────────────┐
# │        SwayNC reload script (Hyprland)    │
# └──────────────────────────────────────────┘

# Kill existing swaync instances
pkill -x swaync
sleep 0.5

# Log timestamp
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Trying to reload SwayNC..." >> "$log_file"

swaync
