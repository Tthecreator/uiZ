///uiz_stringfind(string,subchar to find)
//return 0 if nothing has been found
/*Find a character inside a string and returns it's position.
If there are multiple matching chars, the first is returned.
If nothing is found 0 is returned. 1 means the first character.
Only works with one character and not with an entire substring. A zero will be returned otherwise
*/
var len=string_length(argument0);
for(var i=1;i<=len;i++){
if string_char_at(argument0,i)=argument1 then{return i;}
}
return 0;
