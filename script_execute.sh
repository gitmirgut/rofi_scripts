#!/usr/bin/env bash

# This is no special script..
# If your using arandr, you will store your configuration by default to
# ~/.screenlayout. This script just helps you to switch fast between different
# screenlayouts. But you can also use it for the execution of other scripts
# collected in the same folder.
#
# Example:
# $ rofi -a 0 -lines 3 -show monitor -modi monitor:$HOME/.config/rofi/script_execute.sh
PATH_SCREENLAYOUTS=$HOME/.screenlayout/

if [[ -z "$@" ]]; then
    find $PATH_SCREENLAYOUTS -type f -printf "%f\n"
else
    bash -c "$PATH_SCREENLAYOUTS$@"
fi
