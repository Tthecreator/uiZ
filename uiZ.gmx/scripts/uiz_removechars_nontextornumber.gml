///uiz_removechars_nontextornumber(string,replacewith)
/*
Will take the string and replace all non letter and number characters with another given character, then return the new string.
Make argument1 (replace with) an emtpy string "" if you want it to remove the characters.
*/
var str=argument[0];
var rep=argument[1];
var len=string_length(str)

for(var i=1;i<=len;i++){
var c=string_char_at(str,i)
if uiz_charisnumberortext(c)=0 then{
str=uiz_changechar(str,i,rep)
}
}
return str;
