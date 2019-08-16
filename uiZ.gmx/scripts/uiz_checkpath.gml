///uiz_checkpath(filepath,base error string)
//returns whether a valid path has been entered, and sets the variable uiz_returnerror
/*
A function made to check the validity of a filepath.
It checks a FULL filepath with driveletter.
It returns errors if:
-there is no drive letter specified;
-any invalid signs have been used.
It returns a bool whether the file was valid. (0 for not valid, 1 for valid.) It will create a local variable called uiz_returnerror that isn't returned but can be used in the object afterwards/
uiz_returnerror has a string containing all the diffrent errors inside the filepath.
Argument1(base error string): can be used to add a pre-message to the uiz_returnerror string like "A few errors occored:".
*/
var valid=1;
var rror=argument1
if argument0="" then{valid=0; rror+="#no backup folder specified"}
if string_count("\",argument0)<1 then{valid=0; rror+="#false path. not a folder structure"}
if string_char_at(argument0,1)="\" then{valid=0; rror+="#path not starting with drive. (cant start with \)"}
if string_copy(argument0,2,2)!=":\" then{valid=0; rror+="#No drive letter specified"}
if string_copy(argument0,1,string_length(projectfolder))=projectfolder then{valid=0; rror+="#file path directed inside project folder"}
if string_copy(argument0,1,string_length(directory))=directory then{valid=0; rror+="#file path directed inside directory folder"}
//check for false characters:
if string_count("<",argument0)>0 then{valid=0; rror+="#path may not contain '<'"}
if string_count(">",argument0)>0 then{valid=0; rror+="#path may not contain '>'"}
if string_count('"',argument0)>0 then{valid=0; rror+="#path may not contain '"+'"'+"'"}
if string_count("'",argument0)>0 then{valid=0; rror+="#path may not contain '''"}
if string_count("/",argument0)>0 then{valid=0; rror+="#path may not contain '/'"}
if string_count("|",argument0)>0 then{valid=0; rror+="#path may not contain '|'"}
if string_count("?",argument0)>0 then{valid=0; rror+="#path may not contain '?'"}
if string_count("*",argument0)>0 then{valid=0; rror+="#path may not contain '*'"}
//dbm(string_copy(argument0,3,string_length(argument0)-2))
if string_count(":",string_copy(argument0,3,string_length(argument0)-2))>0 then{valid=0; rror+="#path may not contain ':' outside the file path definition"}
for(var i=1;i<=string_length(argument0);i++){
if ord(string_char_at(argument0,i))<32 then{
valid=0; rror+="#path may not contain any characters outside below a 32 character range."
}
}
uiz_returnerror=rror;
return valid;
