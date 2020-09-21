///uiz_addChar(string, position, newStr)
/*
adds a character or string at the specified position in a string and returns the new string.
Consider the string: str="hello world" 
If we now call uiz_addchar(str,6,"under") it will return "hello underworld". 
*/
var len=string_length(argument0);
return string_copy(argument0,0,argument1)+argument2+string_copy(argument0,argument1+1,len);
