#!/bin/sh

case "$1" in
    --toggle)
        if [[ "$(pgrep -x picom)" != "" ]]; then
            pkill picom
        else
            picom --experimental-backends
        fi
        ;;
    *)
        if [ "$(pgrep -x picom)" ]; then
            echo " "
        else
            echo " "
        fi
        ;;
esac
