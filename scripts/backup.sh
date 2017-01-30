#!/bin/mksh
# Script to backup specific folders using rsync
#
# Created by Dylan Araps
# https://github.com/dylanaraps/dotfiles

# First notification
notify-send -t 1 -r 112 "Backing Up System" &

# Music

echo "Syncing Music"
rsync -a --delete /home/brandon/Music/ /media/capsule/Stuff/media/Music/Music/


# Pictures

echo "Syncing Wallpapers"
rsync -a --delete /home/brandon/Pictures/wallpapers/ /media/capsule/Stuff/media/Wallpapers/


# Packages
echo "Syncing Packages"
rsync -a /var/cache/pacman/pkg/ /media/capsule/Stuff/media/Misc./pkg


# Aur Packages
echo "Syncing Aur Packages"
fakepkg -o /media/capsule/Stuff/media/Misc./aur $(pacman -Qmq)


# Games

#echo "Syncing Games"
#rsync -a --delete /home/brandon/.steam/steam/SteamApps/Common/ /media/capsule/Stuff/media/steam/


echo "Done!"; notify-send -t -112 "Backup Complete!" &
