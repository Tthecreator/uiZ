///uiz_laststringchars(string,pos)
/*Gets the last characters inside of a string counted from pos.
Example: uiz_laststringchars("Hello World",4) would return "o World". 
*/
var len=string_length(argument0)
return string_copy(argument0,1,len-argument1)
