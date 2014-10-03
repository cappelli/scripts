#!/bin/bash
#This is only going to work in bash 4 and above. Macs have bash v 3
declare -A myarray
myarray[color]=blue
myarray["office building"]="Hermosa 2"
echo ${myarray["office building]} is ${myarray[color]}
