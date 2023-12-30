#!/bin/bash

dmenu_video=$(yt-dlp -F $(xclip -o) | awk '{print $1" ""("$3")"}' | grep [1-9] | grep -v audio| dmenu -l 100)

audio=$(yt-dlp -F $(xclip -o) | awk '{print $1 "  " $3}' | grep audio| head -n 2 | awk '{print $1}')

video=$(echo $dmenu_video | awk '{print $1}')

mpv -ytdl-format=$video+$audio $(xclip -o)


