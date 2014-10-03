--Use a global variable declaration to make sure this is available regardless of scope

global theIMagesFolder
tell application "Finder"
	--We have to use "as strong as alias below because we can't list the contents of a string. It needs to be a folder (location) reference. 
	
	(*
	set myOutput to "I see"
	
	
	repeat
		set myVar to 1
		--the 'return' command is used to step out of current loop and move on to the next process.
		return
	end repeat
	*)
	
	set hasPS to get exists ((path to applications folder as string) & "Photoshop")
	set theIMagesFolder to ((path to desktop folder) & "Images") as string as alias
	set theImages to the name of every file of theIMagesFolder
end tell

--Next, declare a function with a variable named theImage 
on addComment(theImage)
	
	
end addComment

try
	if hasPS is false then
		--no wireshark
		repeat with anImage in theImages
			addComment(anImage)
		end repeat
	else
		--has wireshark so do nothing
	end if
on error errorText
	display dialog "We errored: "
end try

