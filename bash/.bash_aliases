# Aliases {{{


# Remove orphaned package dependencies
alias cleandeps='sudo pacman -Rns $(pacman -Qtdq)'

# Download youtube url to an .mp3
# and save it to my music folder.
alias mp3dl="cd $HOME/Music && youtube-dl --extract-audio -f bestaudio --audio-format mp3 --no-playlist"

# Always open urxvt clients
alias urxvt="urxvtc"

# }}}



