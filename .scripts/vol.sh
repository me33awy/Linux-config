#!/bin/sh


if [ $1 = "up" ];then
	amixer set Master 5dB+
else
	amixer set Master 5dB-
fi

kill -s 10 $(pidof slstatus)
