#!/bin/bash

# This script is triggered when using Waypaper GUI

wallpaper_full_path="$1"
waybar_script="$HOME/.config/hypr/scripts/waybar.sh"
swaync_config_style="$HOME/.config/swaync/style.css"
sddm_wallpaper="$HOME/.config/sddm/sddm_wallpaper"
hyprlock_wallpaper="$HOME/.config/hypr/hyprlock/hyprlock_wallpaper"
log_file="/tmp/theme_reload.log"


# --- Gen Templates with Matugen ---

if [[ -f "$wallpaper_full_path" ]];
then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Generating matugen templates" >> "$log_file"
    matugen image "${wallpaper_full_path}" && sleep 0.5
fi

# # --- Call waybar_script to reload Waybar ---

# bash "$waybar_script"

# --- Reload SwayNC ---

swaync-client --reload-css "${swaync_config_style}"

# --- Change SDDM Wallpaper ---

cp "${wallpaper_full_path}" "${sddm_wallpaper}"

# --- Change Wlogout Wallpaper --- 

# blurred_wallpaper="$HOME/.config/wlogout/wlogout_wallpaper.jpg"
# echo "[$(date '+%Y-%m-%d %H:%M:%S')] Generating blurred wallpaper for wlogout" >> "$log_file"
# magick "{wallpaper_full_path}" -resize 1920x1080 -gravity center -extent 1920x1080 -gaussian-blur 0x15 "${blurred_wallpaper}"