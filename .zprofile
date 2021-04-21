#!/bin/sh
#
#████████╗ ██████╗
#╚══██╔══╝██╔════╝	Tomoghno Sen (DoodleCraft)
#   ██║   ╚█████╗ 	https://www.youtube.com/channel/UCrLuSGTUJRmI8w3aPMN8Stw
#   ██║    ╚═══██╗	https://github.com/Tomoghno
#   ██║   ██████╔╝
#   ╚═╝   ╚═════╝ 
#
# A customized .zprofile File

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
PATH="/usr/games:$PATH"

# Environment Variables
QT_AUTO_SCREEN_SCALE_FACTOR=1
QT_QPA_PLATFORMTHEME="gnome"
QT_STYLE_OVERRIDE="kvantum-dark"

# ~/ Clean-up:
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
