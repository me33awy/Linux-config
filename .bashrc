# .bashrc
# If not running interactively, don't do anything
 [[ $- != *i* ]] && return

#bash
	set -o vi
	PS1="\w\n\e[1;37m > \e[0m"

# xpbs
	alias u='doas xbps-install -S; doas xbps-install -u xbps; doas xbps-install -u'
	alias i='doas xbps-install -S'
	alias q='xbps-query -Rs'
	alias r='doas xbps-remove -RoO'
	alias vmw='qemu-system-x86_64 -hda $HOME/qemu/win10.img -boot c -enable-kvm -cpu host -m 4G -vga std -net nic,model=e1000 -net user -usbdevice tablet &'
	alias vmv='qemu-system-x86_64 -net user,hostfwd=tcp::2222-:22 -net nic -enable-kvm -cpu host -m 2048 -hda  $HOME/qemu/voidlinux/voidlinux.img -boot menu=on -vga qxl &' 
	alias vmd='qemu-system-x86_64 -net user,hostfwd=tcp::2222-:22 -net nic -enable-kvm -cpu host -m 2048 -hda  $HOME/qemu/debian/debian.img -boot menu=on -vga qxl &' 


#nnn
	alias n='nnn -UAdRxr'

#global
	alias ls='ls --color=auto'
	alias ll='ls -l --color=auto'

#editor
	EDITOR="vim"
#fzf
	FZF_DEFAULT_OPTS='-m --reverse '
	FZF_DEFAULT_COMMAND='find .'
#radio
	alias qk='mpv https://radio.radioquraan.com:9994/stream/1/'
#youtube-viewer
	alias v='ytfzf -t'

#android
alias ma='simple-mtpfs --device 1 Android'
alias ua='fusermount -u Android'

export EDITOR FZF_DEFAULT_OPTS FZF_DEFAULT_COMMAND



