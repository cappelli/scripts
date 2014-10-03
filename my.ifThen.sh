#!/bin/bash
#a=()
#b=("apple" "banana" "cherry")
#echo ${b[2]}
a=5
if [[ $a =~ [0-9]+ ]]; then
	echo there are numbers in $a
else 
	echo there are no numbers in $a
fi
