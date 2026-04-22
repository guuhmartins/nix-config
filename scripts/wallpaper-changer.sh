#!/bin/bash
# Script inspirado no iNiR para troca de wallpaper
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
SELECTED=$(ls $WALLPAPER_DIR | shuf -n 1)
swww img "$WALLPAPER_DIR/$SELECTED" --transition-type random
