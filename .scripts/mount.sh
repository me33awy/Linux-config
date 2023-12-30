#!/bin/bash

# lsblk,doas blkid,doas fdisk -l,lsusb,df,mount,pmount
#
usb_devices=$(doas blkid | awk '{print $1}' | tr -d ":" | dmenu)
usb_dir=${usb_devices/\/dev\//\/media\/} 

echo $usb_dir

if [ "$usb_devices" = "" ];then
	exit
else
	if [ -d $usb_dir ];then
		pumount $usb_devices
		echo $usb_devices "Umounted" | dmenu
	else
		pmount $usb_devices
		echo $usb_devices "Mounted" | dmenu 
	fi
fi
