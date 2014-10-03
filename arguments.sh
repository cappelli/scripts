#!/bin/bash
# The first line makes an array of all arguments passed at command line

for i in $@
do 
	echo $i
done
echo "There were $# arguments."
