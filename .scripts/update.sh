#!/bin/sh


printf "..................Update Packages..................\n"

sudo xbps-install -S opendoas
sudo echo "permit --nopass amr as root" > /etc/doas.conf
doas xbps-install -S; doas xbps-install -u xbps; doas xbps-install -u
doas xbps-install -S libX11 libX11-devel xorg-input-drivers xorg-server alsa-utils dbus 
doas xbps-install -S ffmpeg firefox fzf gcc git vim make maim ImageMagick  mpv nnn feh pandoc pmount setxkbmap xinit zip zathura yt-dlp xev xdg-utils xclip tmux zathura-djvu zathura-pdf-mupdf zathura-ps sxhkd atool btop htop curl simple-mtpfs neomutt nodejs tlp wget xz xrandr xsetroot

printf "..................Configration Packages..................\n"



