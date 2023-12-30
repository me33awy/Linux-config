#loaded settings
	setxkbmap -layout us,ara -variant ,digits -option grp:lwin_toggle caps:escape
	sxhkd &
	slstatus &
	$HOME/.scripts/sync.sh &
	#xsetroot -solid "#222222"
	#feh --bg-fill $HOME/.wallpaper/girl.jpg &
	#xinput set-prop 10 337 1, 1, 1, 1, 1, 1, 1 &
	dwm
