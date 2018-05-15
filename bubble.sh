#!/bin/bash
# [7] [2] [3] [9] [-1]
# Descending Order
# [9] [7] [3] [2] [-1]
#Student Name: Abhimanyu Kumawat
list=()
i=0
for x in "$@"
do
	list[i]=$x
	(( i++ ))
done
echo "Given: ${list[@]}"
#################################################################
#SWAP
for (( y=0; y < ${#list[@]}; y++ ))
do
	for (( z=$y; z < ${#list[@]}; z++ ))
	do
		if [ ${list[$y]} -lt ${list[$z]} ]; then
			temp=${list[$y]}
			list[$y]=${list[$z]}
			list[$z]=$temp
		fi
	done
done
#################################################################
echo "After Swap: ${list[@]}"
