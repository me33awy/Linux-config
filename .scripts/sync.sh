#!/bin/bash

# Check if ".sync" is exist or not DEFAULT "NOT"
if [ ! -d ~/.sync ];then
	mkdir ~/.sync
fi

# Clone Git reposotiry and get on it
cd ~/.sync
#git clone git@gitlab.com:linux8130214/config.git
git clone git@github.com:me33awy/Linux-config.git

cd Linux-config

# Remove all directories excapt ".git" directory
arr2=($(find . -path ./.git -prune -o -print))
for i in ${arr2[@]};do
	rm -rf $i
done

# Get directory that wanted to push in Git repo
dirs=("$HOME/.rss" "$HOME/.DejaVu" "$HOME/.config" "$HOME/.fonts" "$HOME/.src" "$HOME/.scripts" "$HOME/.vim" "$HOME/.asoundrc" "$HOME/.bashrc" "$HOME/.bash_profile" "$HOME/.xinitrc" "$HOME/.loadkeysrc" "$HOME/.50-synaptics.conf")
for i in ${dirs[@]};do
	cp -r $i .
done

# Remove ".git" directory from all except main ".git" repo
arr=( $(find . -name .git -type d) )
for i in ${arr[@]};do
	if [ ! $i = "./.git" ];then
		rm -rf $i
	fi
done

# Commit changes and push to remote repo
git add .
git add *
git commit -m "Update $(date '+%b %d %a %I:%M%p')"
git push -u origin main

# Delete all files from home directory
cd ../..
rm -rf .sync

