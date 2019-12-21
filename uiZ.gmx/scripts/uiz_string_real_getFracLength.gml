///uiz_string_real_getFracLength(string)
//returns how many floating positions a string (containing a number) has.
//requires a string that represents a string: (-)0123456789.0123456789
//example: 123.456 would return 3 because there are 3 characters in "456"
var dotPos = string_pos(".",argument0);
if dotPos == 0 then{
    return 0
}

return string_length(argument0)-dotPos;
