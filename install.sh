#!/bin/bash

# Copying files
cp -r btop ~/.config
cp -r fuzzel ~/.config
cp -r hypr ~/.config
cp -r swaync ~/.config
cp -r waybar ~/.config
cp -r yazi ~/.config
cp -r kitty ~/.config

# Moving wallpapers
mkdir -p ~/Pictures/Wallpapers
cp wallpapers/* ~/Pictures/Wallpapers/

echo "Done!"
