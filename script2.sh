#!/bin/bash
workdir='/Users/sjackson1997/Documents/ePublications/Beginning Bash Scripting Edit Together'
cd '/Users/sjackson1997/Documents/ePublications/Beginning Bash Scripting Edit Together'
echo "Working Directory: " $PWD
# containsElement () {
#   local e
#   for e in "${@:2}"; 
#   	do [[ "$e" == "$1" ]] && return 0;
#   done
#   return 1
# }

#subdir1="Beginning Bash Scripting"
#string1="<div xmlns="" class="footer" style="font-size: xx-small; font-style: italic">Reprinted for XZCGO/peter.potenza@kraftfoods.com, Robert Half International.  John Wiley &amp; Sons (US),  (c) 2005, Copying Prohibited<mbp:pagebreak xmlns:mbp="http://mobipocket.com/mbp"/></div>"
#egrep -lRZ 'XZCGO' "$workdir" | xargs -0 -n1 sed 's/XZCGO//g'
#egrep -rl 'XZCGO' "/Users/sjackson1997/Documents/ePublications/Beginning Bash Scripting Edit Together/9780764583209-Chapter-2-Introducing-Shell-Scripts" --null | xargs -0 sed 's/XZCGO//g'
	#Get the names of all the subdirectories and put them in an array.
shopt -s nullglob
shopt -s extglob
array=(*/)
shopt -u nullglob # Turn off nullglob to make sure it doesn't interfere with anything later
echo "${array[2]}"  # Note double-quotes to avoid extra parsing of funny characters in filenames
echo "${!array[@]}"
echo "${#array[@]}"

for i in "${!array[@]}" 
do
	#echo $i ${array[$i]}
	case ${array[$i]} in 
		*Chapter*)
		  echo "First case!     ${array[$i]}" 
		  ;;
		 *Appendix*)
		  echo "Second case!!   ${array[$i]}"
		  ;;
 		 *Index*)
		  echo "Third Case!!!!!!   ${array[$i]}"
		  ;;

	esac 
#   if [[ "${array[$i]}" =~ "Chapter-5" ]]; then
#   	echo "${array[$i]}  WINNER!"
#   else
#   	echo "${array[$i]}"
#   fi
done
shopt -u extglob
#   
# function contains() {
#     local n=$#
#     local value=${!n}
#     for ((i=1;i < $#;i++)) {
#         if [ "${!i}" == "${value}" ]; then
#             echo "y"
#             return 0
#         fi
#     }
#     echo "n"
#     return 1
# }
# 
# A=("one" "two" "three four")
# if [ $(contains "${A[@]}" "one") == "y" ]; then
#     echo "contains one"
# fi
# if [ $(contains "${A[@]}" "three") == "y" ]; then
#     echo "contains three"
# fi	 