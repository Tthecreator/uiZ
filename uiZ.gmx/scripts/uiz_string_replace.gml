///uiz_string_replace(string, subStr, newStr)
//like the string_replace funciton, but replaces every substring it finds, instead of the first one
//var cnt=string_count(argument1,argument0);
//if cnt=0 then{return argument0;}
var sz=string_length(argument0)
var fch=string_char_at(argument1,1)
var ssz=string_length(argument1);
var nsz=string_length(argument2);
var str="";
var la=1
for(var i=1;i<=sz;i++){
if string_char_at(argument0,i)=fch then{
var e=1;
var fi=i;
repeat(ssz-1){
i++
e++;
if i>sz then{break;}
//sdbm(string_char_at(argument0,i),string_char_at(argument1,e),e)
if !(string_char_at(argument0,i)=string_char_at(argument1,e)) then{
break;
}
if e=ssz then{
str+=uiz_string_copy(argument0,la,fi-1)+argument2
la=fi+ssz
}

}
if ssz=1 then{
str+=uiz_string_copy(argument0,la,fi-1)+argument2
la=fi+1
}
}
}
str+=uiz_string_copy(argument0,la,sz)
//sdbm(str,la,sz)
return str;
