#!/bin/zsh

for n in `ls -a | grep -vE -e "^setup.zsh$" -e "^.{1,2}$" -e "^.git$"`; do
	echo "Replacing $n..."
	mv "../$n" "../$n $(date)"
	cp -r "$n" "../$n";
done

