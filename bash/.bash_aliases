# Aliases {{{


# Remove orphaned package dependencies
alias cleandeps='sudo pacman -Rns $(pacman -Qtdq)'

# Download youtube url to an .mp3
# and save it to my music folder.
alias mp3dl="cd $HOME/Music && youtube-dl --extract-audio -f bestaudio --audio-format mp3 --no-playlist"

# Always open urxvt clients
alias urxvt="urxvtc"

# Record screen
alias record="ffmpeg -f x11grab -s 1920x1080 -framerate 60 -an -i :0.0 -c:v libvpx -b:v 5M -crf 10 -quality realtime -y -loglevel quiet"


alias fixtime="sudo ntpd -qg"

# }}}



