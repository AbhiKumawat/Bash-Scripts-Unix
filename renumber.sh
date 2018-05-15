#!/bin/bash
#Renumbers all files in a directory
#Student Name: Abhimanyu Kumawat
filegiven="$1"
ext="$2"
filenum=1

for file in *
do
	a=$( printf "%03d" $filenum )
	#echo "$file"
	echo "Changing $file" "to $filegiven$a.$ext"
	mv -i "$file" "$filegiven$a.$ext"
	filenum=$(( $filenum + 1 ))
done


