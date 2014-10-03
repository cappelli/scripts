#!/bin/bash
#ephoneMACRapalicious.sh extracts the MAC address, DN, Description and other delights from a file with 'sh ephone' output of CME

# Extract the MAC from the first line. Example of raw text:
# ephone-1[0] Mac:A0CF.5B80.E0EE TCP socket:[45] activeLine:0 whisperLine:0 REGISTERED in SCCP ver 20/17 max_streams=5 

# 1st possibility below is not working because printing the whole line
#sed 's/([\w\d]{4})\.([\w\d]{4})\.([\w\d]{4})/\1/' ephone.txt > ephoneMAC.txt
#ephone-1[0] Mac:A0CF.5B80.E0EE TCP socket:[45] activeLine:0 whisperLine:0 REGISTERED in SCCP ver 20/17 max_streams=5 


# Field separator should be either space or ':'
awk 
BEGIN {
		FS="[ :]";
	}
	
	/Mac:.*/ {
		if ( NF 2) == ([\w\d]{4}\.[\w\d]{4}\.[\w\d]{4}) {
			print;
		}
	}
	
	
awk -f ephone.txt BEGIN {
		FS="[ :]";
	}
	
	/Mac:.*/ {
		if ( NF 2) == ([\w\d]{4}\.[\w\d]{4}\.[\w\d]{4}) {
			print;
		}
	}