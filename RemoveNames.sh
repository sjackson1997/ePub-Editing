#!/bin/bash
#set -v
#set -x
workdir=/mnt/c/Users/sjack/Documents/ePublications/Beginning\ Bash\ Scripting\ Edit\ Together
subdir1="Beginning Bash Scripting"
subdir2="Beginning Bash Scripting Edit Together"
pwd
echo $workdir
echo ${workdir}
cd "$workdir"
pwd

for dir in "${workdir}/"* ; do
	cd "$dir"
	pwd
	for f in *.htm ; do
		echo $f
		sed "s/Repr.*XZCGO.*Prohibited/ Always be yourself... unless you can be Batman -- then be Batman! /" $f
		echo ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	done
done