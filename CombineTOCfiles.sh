#!/bin/sh
workdir=/mnt/c/Users/sjack/Documents/ePublications/Beginning\ Bash\ Scripting\ Edit\ Together
enddir=/mnt/c/Users/sjack/Documents/ePublications/Beginning\ Bash\ Scripting\ Reassembled

cd "$workdir"

echo {Chapter-{1..20},Appendix-{A..E}}
FirstFileCopied=false

for dirname in {Chapter-{1..20}-,Appendix-{A..E}}
do
#dirname=Chapter-2-
	printf "%s\n" "$dirname"
	for D in *; do
		if [ -d "${D}" ]
		then
			if [[ "${D}" =~ .*${dirname}.* ]]
			then
				if ($FirstFileCopied) then
					echo "${D}"
					echo "The above was true"
				else
					echo "${D}"
					echo "The above was false"
					cp "${workdir}/${D}/toc.ncx" "${enddir}"
					FirstFileCopied=true
				fi
			fi
		fi
	done
done
