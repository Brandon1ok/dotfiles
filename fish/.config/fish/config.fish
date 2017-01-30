# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/brandon/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set -g -x EDITOR nvim
set -g -x VISUAL nvim
set -g -x BROWSER chromium
set -g -x LANG en_US.UTF-8
set -g -x TERM rxvt-unicode
set -g -x MUSIC_DIR /home/brandon/Music
set -U SXHKD_SHELL /usr/bin/bash
#set -g -x GTK_THEME Arc
#set -g -x GTK2_RC_FILES /home/brandon/.themes/yellow/gtk-2.0/gtkrc thunar

# Base16 Shell
#if status --is-interactive
#    eval sh $HOME/.config/base16-shell/scripts/base16-ocean.sh
#end
fish_vi_key_bindings
source "$HOME/.cache/wal/colors.fish"

if status --is-login
        set PATH $PATH ~/script ~/scripts ~/.lemonbar /usr/bin/core_perl
end

# start X at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR -eq 2
        exec startx -- -keeptty
    end
end
