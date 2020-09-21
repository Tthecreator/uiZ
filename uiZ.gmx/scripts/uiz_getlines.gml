///uiz_getLines(string)
//returns the amount of lines in a string (amount of new lines+1)
/*
returns the amount of lines in a string.
(Amount of newlines+1)
*/
var len=string_length(argument0)
var e=1;
for(var i=1;i<=len;i++){
var c=string_char_at(argument0,i)
if c="#" or c=chr($0A) then{e++}
}
return e;
