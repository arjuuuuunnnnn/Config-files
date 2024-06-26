#!/bin/sh
Location=/home/hemanth/Pictures/Screenshots/Screenshot`date +%Y-%m-%d_%H:%M:%S`.png

case "$1" in
    full)
        scrot $Location
        ;;
    current)
        scrot -u $Location
        ;;
    partial)
        scrot -s $Location
        ;;
    *)
        echo "Usage: $0 {full|current|partial} {clipboard}"
        exit 2
esac

case "$2" in
    clipboard)
        xclip -selection clipboard -t "image/png" < $Location
        ;;
esac

exit 0
