#!/bin/bash

GEOMETRY="980x980+470+50"
COVER="/home/brandon/.cache/cover.png"
VALUE=$(ps aux | grep -c "cover.sh")

if [ $VALUE -gt 1 ]
then
  feh -Z --title "album" -x -R 2 -g "$GEOMETRY" "$COVER"
else
  :
fi
