#!/bin/bash
#a=()
#b=("apple" "banana" "cherry")
#echo ${b[2]}
declare -A myarray
myarray[color]=blue
myarray["office building"]="Hermosa 2"
echo ${myarray["office building]} is ${myarray[color]}
