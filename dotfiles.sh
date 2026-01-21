#!/bin/bash

# repo directory
repo_dir="dotfiles"

# home directories
home_dirs=("Templates")

# config directory items
config_dir=".config"
conf_dirs=("ags" "dunst" "hypr" "kitty" "lf" "macchina" "udiskie" "waybar")
conf_files=("background")

# root directory items
root_dirs=("/etc/greetd/" "/usr/share/backgrounds/")

if [ $1 = "backup" ]; then
	cd ~
	# copying home folders
	for element in "${home_dirs[@]}"; do
		echo "Copying ~/${element} to ~/${repo_dir}/home/${element}"
		cp -r $element ~/${repo_dir}/home/${element}
	done
	
	cd ~/${config_dir}
	
	# copying .config folders
	for element in "${conf_dirs[@]}"; do
		echo "Copying ~/${config_dir}/${element} to ~/${repo_dir}/home/config/${element}"
		cp -r $element ~/${repo_dir}/home/config/${element}
	done
	
	# copying .config files
	for element in "${conf_files[@]}"; do
		echo "Copying ~/${config_dir}/${element} to ~/${repo_dir}/home/config/${element}"
		cp $element ~/${repo_dir}/home/config/${element}
	done

	cd ~
	
	# copying folders from root
	for element in "${root_dirs[@]}"; do
		echo "Copying ${element} to ~/${repo_dir}/root${element}"
		cp -r $element ~/${repo_dir}/root${element}
	done
fi
