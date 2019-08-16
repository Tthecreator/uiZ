///uiz_charisnumberortext(char)
/*
Requires a string with only one char, and check whether that char is a number or text.
Will return 1 if a number or text and 0 if not a number.
Will return 1 in ord ranges $30<=c<=$39 and $41<=c<=$7a. 
*/
var c=ord(argument0);
if (c>=$30 and c<=$39) or (c>=$41 and c<=$7a) then{return 1;}else{return 0;}
