#!/bin/bash
#
a="cat"
case $a in
	cat) echo "Feline";;
	dog|puppy) echo "Canine";;
	*) eho "No Match!";;
esac


