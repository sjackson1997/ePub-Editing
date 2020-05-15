#!/bin/bash
workdir=~
#workdir="$(pwd)"
subdir1="Beginning Bash Scripting Reassembled"
subdir2="Beginning Bash Scripting Edit Together"
AssembleDir="$workdir"/Assembled
rm -r "$AssembleDir"/* || mkdir "$AssembleDir"

cd "$workdir"/"$subdir2"
pwd
first_toc="false"
t=1

function Extract_TOC {
	for i in {1..18} {A..C}
	do
		fldr="*$1-$i-*"
		if test -n "$(find . -name "$fldr" -print -quit)"
		then
			fldr="$(find . -name "$fldr" -print -quit)"
			myfile="$(find "$fldr"/ -name *toc.htm -print -quit)"
			if [ "$first_toc" = "false" ]
			then
				cp "$myfile" "$AssembleDir"/newtoc.htm
				first_toc="true"
			else
				cp "$myfile" "$AssembleDir"/
				TOC_file[t]="$AssembleDir"/$(basename $myfile)
				((t++))
			fi
		fi
	done
}

Extract_TOC Chapter
Extract_TOC Appendix

f="$AssembleDir/combined.htm"
rm $f || touch $f 

for ((t=1; t<=${#TOC_file[@]}; t++))
do
	echo $t : ${TOC_file[t]}
	sed -i '1, /<\/h3>/ d
		/<hr class/,$ d' ${TOC_file[t]}
	cat ${TOC_file[t]} >>$f
	rm ${TOC_file[t]}
done

sed -i "
	15,$ {
	/<hr.*/e cat $f
	}" "$AssembleDir"/newtoc.htm

rm $f 
