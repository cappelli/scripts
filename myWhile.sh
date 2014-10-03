#!/bin/bash
#a=()
#b=("apple" "banana" "cherry")
#echo ${b[2]}
i=0
while [ $i -le 10 ]; do
	echo i:$i
	((i+=1))
done

j=0
until [ $j -ge 10 ]; do
	echo j:$j
	((j+=1))
done
