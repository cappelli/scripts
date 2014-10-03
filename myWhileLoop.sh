#!/bin/bash
#a=()
#b=("apple" "banana" "cherry")
#echo ${b[2]}
i=1
while read f; do
	echo "Line: $i: $f"
	((i++))
done < file.txt
