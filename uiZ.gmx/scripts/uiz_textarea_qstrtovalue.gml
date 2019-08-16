//find the right pos inside the value string.
pos=1;
firstpos=0;
if qstrpos=0 then{pos=0;posx=0;}else{

for(var i=1;i<=qstrpos;i++){
//if newline
var a=false
if (string_char_at(qstr,i)="#" or string_char_at(qstr,i)=chr($0A)) then{
a=true;
firstpos=i+1;
}
//if (a=true and !(string_char_at(value,pos)="#" or string_char_at(qstr,pos)=chr($0A)))
if string_char_at(value,pos)!=string_char_at(qstr,i)
then{
//newlines don't match up
}else{
//characters match up
pos++
}
}
//sdbm(uiz_string_copy(qstr,firstpos,qstrpos),firstpos,qstrpos,pos)
if string_char_at(value,pos)!=string_char_at(qstr,qstrpos) then{pos--}
posx=string_width(uiz_string_copy(qstr,firstpos,qstrpos));
}
