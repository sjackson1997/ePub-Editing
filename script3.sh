#!/bin/bash
cd ~/Documents/Coding\ Projects/ePub\ Editing/"Beginning Bash Scripting Edit Together"
#pwd
# workdir="/Users/sjackson1997/Documents/ePublications"
# subdir1="Beginning Bash Scripting"
dir2=~/Documents/Coding\ Projects/ePub\ Editing/Assembled/
# pwd
rm -r $dir2*
# cp $workdir/"$subdir1"/* $workdir/"$subdir2"/
# cd $workdir/"$subdir2"
# pwd
n=0
for i in ./*Chapter* ; do
#	echo $i
	ch=$(echo $i | egrep -o 'Chapter\-[0-9]+')
	echo "The Chapter is: ${ch}"
	nm=$(echo $ch | sed 's/Chapter-/Ch/')
	for f in $i/*.htm ; do
		echo $f
		cp ${f} "$dir2"
	done
# if [ -d "$i" ]; then
#   mystr[n]=$grep  '[0-9][0-9]' (basename $i)
    ((n+=1))
# fi
done
echo $n
echo ${mystr[0]}

# for f in *.epub; do
# 	stubname="$(basename "$f" .epub)"
# 	echo $stubname
# 	mkdir ./$stubname
# 	mv "$f" $stubname.zip #"$(basename "$f" .epub).zip"
# 	unzip  $stubname.zip -d ./$stubname #"$(basename "$f" .epub).zip"
# 	rm $stubname.zip
# done
# egrep -irn "KRAFTFOODS" ~/Documents/ePublications
