#!/bin/sh
#workdir=/mnt/c/Users/sjack
cd ~/Documents/Coding\ Projects/ePub\ Editing
cat myfile.txt | sort > myfile2.txt
sed -e 's/$/,Chandler Bing\! OH MY GOD/' -i myfile2.txt
cat myfile2.txt
