#!/bin/bash
# This works with a CSV file having at least 12 fields where the 12th column is the email address.
# begin by specifying a tab as the delimiter:
awk -Ft 'BEGIN {
					print "<h1>Contact Us</h1>";
					print "<ul>";
}
NR > 1 { # <-- This means that we should skip the first "header" line of the CSV
					print "<li>";
					print $1, $2, $3 ": "; #office, first name, last name
					print "<a href=\"mailto:" $12 "\">" $12 "</a>"; # email
					print "</li>";
}
END 	{
					print "</ul>";
}' $1 > officers.html

# Note that the last line above uses $1 which actually is pulling in the name of the text file
# passed to this script as an argument (e.g. ./AwkExampleScript.awk officers.csv)