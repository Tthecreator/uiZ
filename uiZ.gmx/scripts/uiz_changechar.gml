///uiz_changeChar(string, position, newChar)
/*Replaces a character at the specified position in a string and returns the new string.
Consider the string: str="hello world" 
If we now call uiz_changeChar(str,6,"_") it will return "hello_world". 
*/

var len=string_length(argument0);
return string_copy(argument0,0,argument1-1)+argument2+string_copy(argument0,argument1+1,len);
