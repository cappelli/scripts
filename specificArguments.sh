#!/bin/bash
# Get the arguments as specified by user
# a colon after the letters u and p below indicate an argument will follow. 
# if we leave out the colon that means we want to know whether the flag was uses or not
# the $? marks unknown variables
# First, check to make sure that there are four command line arguments or more and, if so, go into the while loop
if [ $# -ge 4 ]; then
while getopts u:p:ab option; do
		case $option in
			u) user=$OPTARG;;
			p) pass=$OPTARG;;
			a) echo "Got the A flag";;
			b) echo "Got the B flag";;
			?) echo "I don't know what $OPTARG is!";;
		
		esac
	done
			echo "User: $user / Pass: $pass"

else

			echo "I needs more input"
fi

