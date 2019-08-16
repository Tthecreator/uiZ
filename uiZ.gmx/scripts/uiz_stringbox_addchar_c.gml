
value=string_copy(value,0,typepos-1)+string(argument0)+string_copy(value,typepos,len)
len=string_length(value)+1
if typepos=endc then{

//}
//if typepos=len-1 then{
endc=len;
for (var i=endc;i>=0;i--){
if sw+string_width(string_copy(value,i,endc-i))>width-margin*2 then{
//sdbm(i,string_copy(value,i,endc-i),sw+string_width(string_copy(value,i,endc-i)))
begc=i+string_length(argument0)
break;
}}

}
uiz_stringbox_addtypeposses(string_length(argument0));
