#!/bin/bash

dir_path="$(pwd)/core"
declare -a configs=(
".config/bat"
".config/nmvn"
".iterm2"
".ideavimrc"
".p10k.zsh"
".tmux.conf"
".zprofile"
".zshrc"
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
echo ""
