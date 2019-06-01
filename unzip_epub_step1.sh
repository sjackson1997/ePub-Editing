#!/bin/bash
workdir="$(pwd)"
subdir1="Beginning Bash Scripting"
subdir2="Beginning Bash Scripting Edit Together"
pwd
rm -r "$workdir"/"$subdir2"/*
cp "$workdir"/"$subdir1"/* "$workdir"/"$subdir2"/
cd "$workdir"/"$subdir2"
pwd

for f in *.epub; do
	stubname="$(basename "$f" .epub)"
	echo $stubname
	mkdir ./$stubname
	mv "$f" $stubname.zip #"$(basename "$f" .epub).zip"
	unzip  $stubname.zip -d ./$stubname #"$(basename "$f" .epub).zip"
	rm $stubname.zip
done
