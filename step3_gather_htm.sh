#!/bin/bash

# Set Exit on Error
#set -e
startDir=~/Beginning\ Bash\ Scripting\ Edit\ Together
#startDir='~/Beginning Bash Scripting Edit Together'
AssembleDir=~/Assembled

rm -r $AssembleDir/*
i=1

for dir in "$startDir"/* ; do
	echo "Directory: " $dir
	for f in "$dir"/*; do
		echo $i $f
		((i++))
	done
done

exit 0

cd "$workdir"/"$subdir2"

for f in *.epub; do
	stubname="$(basename "$f" .epub)"
	echo $stubname
	mkdir ./$stubname
	mv "$f" $stubname.zip #"$(basename "$f" .epub).zip"
	unzip  $stubname.zip -d ./$stubname #"$(basename "$f" .epub).zip"
	rm $stubname.zip
done
