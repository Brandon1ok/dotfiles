#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
(wal -r &)

BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nvim
PAGER=/bin/less
VISUAL=/usr/bin/nvim
#GTK_THEME=Arc
#GTK2_RC_FILES=/home/brandon/.themes/yellow/gtk-2.0/gtkrc thunar
