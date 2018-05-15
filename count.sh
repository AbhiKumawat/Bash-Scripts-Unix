#!/bin/bash
#Student Name: Abhimanyu Kumawat
list=(0 0 0 0 0 0 0 0 0)
i=0
for x in $@; do
count=0
#echo "-----Argument $x-------"
		for f in *; do
			if [[ $f == $x* ]]
			then
				(( count++ ))
			fi
		done
echo "------Count of file starting with $x: $count-------"
list[$x]=$count
done
echo "List:: ${list[@]}"
until [ $i -ge 10 ]
do	
	echo " $i ${list[$i]}"
	(( i++ ))
	#echo "I increment: $i"
done

