#!/bin/bash

# List of config folders to copy
FOLDERS=("hypr" "waybar" "hyprlock" "swaync" "zed" "wlogout" "kitty" "rofi")
OTHER_FOLDERS=("$HOME/.local/share/rofi/")

# Loop through each folder
for folder in "${FOLDERS[@]}"; do
    # Delete local folder if it exists
    if [ -d "./$folder" ]; then
        echo "Deleting $folder"
        rm -rf "./configs/$folder"
    fi

    # Copy from ~/.config to current directory
    if [ -d "$HOME/.config/$folder" ]; then
        echo "Copying $HOME/.config/$folder to ./configs/"
        cp -r "$HOME/.config/$folder" ./configs/
    else
        echo "Warning: $HOME/.config/$folder does not exist"
    fi
done

echo "Deleting Share"
rm -rf "./share/*"

for folder in "${OTHER_FOLDERS[@]}"; do
    echo "Copying $folder to ./share/"
    cp -r "$folder" ./share/
done

echo "Done."
