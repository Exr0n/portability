#!/bin/zsh

for n in `ls -a | grep -vE -e "^setup\.zsh$" -e "^.git" -e "^\.{1,2}$" -e "^scripts\.zsh$"`; do
	if [[ -e ~/$n ]]; then
		color="\e[2;31m"
		echo "$color" "File $n exists! Do you want to replace it? (y|n)"
		read inp
		if [[ "$inp" != "y" ]]; then
			continue
		fi
		mv "/Users/$USER/$n" "/Users/$USER/$n $(date)"
	fi

	color="\e[2;32m"

	echo "$color" "Installing $n..."
	cp -r "./$n" "/Users/$USER/$n"
done

echo "\e[0mRunning setup scripts..."
./scripts.zsh
