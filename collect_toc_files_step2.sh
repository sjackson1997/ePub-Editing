#!/bin/bash
#workdir="$(pwd)"
workdir='/home/sjackson1997/Documents/Coding Projects/ePub Editing'
subdir1="Beginning Bash Scripting Reassembled"
subdir2="Beginning Bash Scripting Edit Together"
rm -r "$workdir"/Assembled/*

cd "$workdir"/"$subdir2"
first_toc="false"

for i in {1..5}
do
	echo "We are on loop $i"
	fldr="*Chapter-$i-*"
	#fldr="$workdir"/"$subdir2"/"*Chapter-$i-*"
	#if [ -d "$(fldr)" ]; 
	if test -n "$(find . -name "$fldr" -print -quit)"
	then
		echo "Folder exists"
		fldr="$(find . -name "$fldr" -print -quit)"
		myfile="$(find "$fldr"/ -name *toc.htm -print -quit)"
		if [ "$first_toc" = "false" ]
		then
			cp "$myfile" "$workdir"/Assembled/newtoc.htm
			toc="$workdir"/Assembled/newtoc.htm
			echo "Here is the file: " $toc
			first_toc="true"
		else
		#cp "$myfile" "$workdir"/Assembled/
			echo "This is myfile: " $myfile
			sed  -e '1,/<\/h3>/ d' -e '/<hr class.*/,$ d' "$myfile" >"$workdir"/Assembled/tmp.htm
			tmp="$workdir"/Assembled/tmp.htm
			#sed -i "\$r "$myfile"" "$toc"
			sed -i "/<hr class.*/i $(<$tmp)" "$toc"
		fi
	else
		echo "No folder found"
	fi
	
done
