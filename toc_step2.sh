#!/bin/bash
workdir="$(pwd)"
subdir1="Beginning Bash Scripting Reassembled"
subdir2="Beginning Bash Scripting Edit Together"
rm -r "$workdir"/Assembled/*

cd "$workdir"/"$subdir2"
pwd
first_toc="false"

for i in {1..18}
do
	echo "We are on loop $i"
	fldr="*Chapter-$i-*"
	if test -n "$(find . -name "$fldr" -print -quit)"
	then
		echo "Folder exists"
		fldr="$(find . -name "$fldr" -print -quit)"
		myfile="$(find "$fldr"/ -name *toc.htm -print -quit)"
		if [ "$first_toc" = "false" ]
		then
			cp "$myfile" "$workdir"/Assembled/newtoc.htm
			first_toc="true"
		else
			cp "$myfile" "$workdir"/Assembled/
			echo "Not the first file"
		fi
	else
		echo "No folder found"
	fi
	
done
