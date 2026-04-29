
#!/bin/bash

swww init &

sleep 1

hyprctl -j events | jq -r --unbuffered '.workspace?.name // empty' | while read ws; do
    case "$ws" in
        1) swww img /home/nikin/Pictures/wallpapers/1.png ;;
        2) swww img /home/nikin/Pictures/wallpapers/2.png ;;
        3) swww img /home/nikin/Pictures/wallpapers/3.png ;;
        4) swww img /home/nikin/Pictures/wallpapers/4.png ;;
        5) swww img /home/nikin/Pictures/wallpapers/5.png ;;
    esac
done
