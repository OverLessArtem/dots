#!/bin/sh
while [ -z "$WAYLAND_DISPLAY" ]; do
  sleep 0.1
done

swww-daemon &
sleep 0.5
swww img ~/Pictures/Wallpapers/wallpaper.png
