#!/bin/bash

DOTFILES_DIR=$(pwd)

mkdir -p "$HOME/.config"

for folder in "$DOTFILES_DIR/.config"/*; do
    if [ -d "$folder" ]; then
        target=$(basename "$folder")
        echo "Installing $target"
        cp -r "$folder" "$HOME/.config/"
    fi
done

# ZSH setup
if [ -f "$HOME/.config/zsh/.zprofile" ]; then
    cp "$HOME/.config/zsh/.zprofile" "$HOME/.zprofile"
fi

# Wallpapers setup
if [ -d "$DOTFILES_DIR/wallpapers" ]; then
    echo "Installing wallpapers"
    mkdir -p "$HOME/Pictures/Wallpapers"
    cp "$DOTFILES_DIR/wallpapers"/*.png "$HOME/Pictures/Wallpapers/" 2>/dev/null
fi

echo "Done"
