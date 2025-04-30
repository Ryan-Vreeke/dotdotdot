#!/bin/bash

# List of config folders to copy
FOLDERS=("hypr" "waybar" "hyprlock" "swaync" "zed")

# Loop through each folder
for folder in "${FOLDERS[@]}"; do
    # Delete local folder if it exists
    if [ -d "./$folder" ]; then
        echo "Deleting ./$folder"
        rm -rf "./$folder"
    fi

    # Copy from ~/.config to current directory
    if [ -d "$HOME/.config/$folder" ]; then
        echo "Copying $HOME/.config/$folder to ./"
        cp -r "$HOME/.config/$folder" ./
    else
        echo "Warning: $HOME/.config/$folder does not exist"
    fi
done

echo "Done."
