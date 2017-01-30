#!/bin/bash

# Display current album art with feh

COVER="/home/brandon/.cache/cover.png"
CURRENT_DIR="/home/brandon/Music"


while :; do
    CURRENT_FILE="$(mpc current -f "%file%")"

    sleep 5;
    ffmpeg -y -i "$CURRENT_DIR/$CURRENT_FILE" $COVER
    mpc idle player update > /dev/null 2>&1
done
