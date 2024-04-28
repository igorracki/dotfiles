#!/bin/bash

main_dir="$(pwd)"
dir_path="$main_dir/core"
optional_path="$main_dir/optional"
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

declare -a optional=(
".aliases"
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

for config in "${optional[@]}"
do
	echo "Optional config: [$config]"
	if [ -d ~/$config ] || [ -f ~/$config ] || [ -L ~/$config ]; then
		echo -e "\t[$config] exists already, skipping (check for diff manually)"
	else
		file="$optional_path/$config"
		cp -R $file ~/
		echo -e "\t[$config] installed."
	fi
done
echo ""

