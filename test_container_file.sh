#!/bin/bash

cd ~/Documents/Coding\ Projects/ePub\ Editing/Beginning\ Bash\ Scripting\ Edit\ Together/
pwd

for f in `find . -name "container.xml"`
do
	echo "Scott is a Golden Dog!"
	cat $f
done
