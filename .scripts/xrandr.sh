#!/bin/bash


displays=($(xrandr | awk '/ connected/ {print $1}'))
display1= ${display[0]}
display2= ${display[1]}


choice=$(echo "extended" | dmenu)

if [ $choice == "extended" ];then
	xrandr --output $display1 --auto --output  $display2 --auto --right-of $display1
fi










