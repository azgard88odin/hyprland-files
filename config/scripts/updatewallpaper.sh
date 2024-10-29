#!/bin/bash

images="$HOME/Documents/backgrounds/"

image=$(find "$images" -type f | shuf -n 1)

# Current wallpaper
#image="$HOME/Documents/backgrounds/black-panther-ai-3840x2160-17094.jpg"

# Set wallpaper and colorscheme
swww img "$image" && wal -i "$image"
pywalfox update
./updatecolors.sh
