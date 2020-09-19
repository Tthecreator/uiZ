///uiz_removeChar(string, position)
var len=string_length(argument0);
return string_copy(argument0,1,argument1-1)+string_copy(argument0,argument1+1,len);
