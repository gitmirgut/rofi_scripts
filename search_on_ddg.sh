#!/usr/bin/env bash

# With this script you can search directly on duckduckgo.
# you can adapt the SEARCH_STRING and  BROWSER to your preferences
#
# Example:
# $ rofi -a 0 -lines 0 -show ddg -modi ddg:$HOME/.config/rofi/search_on_ddg.sh
SEARCH_STRING="https://duckduckgo.com/?kae=d&kax=-1&kp=-2&k1=-1&kaj=m&kam=osm&kak=-1&kaq=-1&kap=-1&kao=-1&t=hf&ia=web&q="
BROWSER=chromium_private

if [[ ! -z "$@" ]]; then
    string="${@// /+}" # This replaces every space with a plus sign
    $BROWSER "$SEARCH_STRING$string" > /dev/null
fi
