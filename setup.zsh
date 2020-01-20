#!/bin/zsh

for n in `ls -a | grep -vE -e "^setup\.zsh$" -e "^\.{1,2}$" -e "^\.git" -e "^scripts\.zsh$"`; do
	echo "Replacing $n..."
	mv "/Users/$USER/$n" "/Users/$USER/$n $(date)"
	cp -r "./$n" "/Users/$USER/$n"
done

echo "Running setup scripts..."
./scripts.zsh
