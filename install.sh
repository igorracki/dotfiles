#!/bin/bash

dir_path="$(pwd)/config"
declare -a configs=(
".iterm2"
".ideavimrc"
".tmux.conf"
".zprofile"
)

echo "List of defined configurations:"
for config in "${configs[@]}"
do
	echo -e "\t$config"
done

echo ""
for config in "${configs[@]}"
do	
	echo "[$config]:"
	if [ -d ~/$config ] || [ -f ~/$config ] || [ -L ~/$config ]; then
		echo -e "\t[$config] exists already, updating it..."
		rm -rf ~/$config
	else
		echo -e "\t[$config] has not been installed yet..."
	fi
	file="$dir_path/$config"
	ln -s $file ~/$config
	echo -e "\t[$config] installed."
done
