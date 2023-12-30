#!/bin/sh

CHOOSE=$(printf "POWEROFF\nREBOOT\nZZZ"| dmenu -i )

case $CHOOSE in
	POWEROFF) doas poweroff ;;
	REBOOT) doas reboot ;;
	ZZZ) doas zzz ;;
esac > /dev/null
