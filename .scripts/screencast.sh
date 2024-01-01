#!/bin/bash

screen=$(xrandr | grep -E "connected" | awk '{print $1}' | dmenu)
fps=$(xrandr | awk '/*.*/ {print $2}' | tr -d "*+")
output=$HOME/Videos/screencast
resolution=$(xrandr | awk '/*.*/ {print $1}')
audio=$(-f alsa -ac 2 -i hw:1)


if [ ! -d $output ];then
	mkdir -p "$output"
fi

if [ $(pidof ffmpeg) ]; then
	pkill ffmpeg
else
	pkill slstatus 
	xsetroot -name "(Recording...)" 
	ffmpeg -video_size $resolution -framerate $fps -f x11grab -i :0.0 "$output/$(date '+%s').mkv"
fi
slstatus &

#pidof ffmpeg && pkill ffmpeg
#pkill slstatus ; xsetroot -name "(Recording...)" && ffmpeg -video_size $resolution -framerate $fps -f x11grab -i :0.0 "$output/$(date +%s).mkv" || slstatus &

