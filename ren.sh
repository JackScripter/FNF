#!/bin/bash
if [ $1 == "--h" ];then
	echo "USAGE: ren \"STRING TO REMOVE\" \"PATH TO FILES\""
	echo "You don't need to add / after the path."
	exit 0
fi

if [ $# == 2 ];then
	if [ "$1" != "" ];then
		if [ "$2" != "" ];then
			for files in $2/*.*;do
				filename=$(basename "$files")
				renamed=${filename#"$1"}
				if [ "$files" != "$2/$renamed" ];then
					mv -v "$files" "$2/$renamed"
				fi
			done
		else
			echo "Path is empty."; exit 1
		fi
	else
		echo "String to removed is empty."; exit 1
	fi
else
	echo "Two arguments are needed. String to remove and path."; exit 1
fi
