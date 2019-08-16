qstr=uiz_gettextlines_contained(value,width,height)
var vpos=0;
var enters=0;
var enterpos=0;
for(var i=1;i<=selp1;i++){
//if newline

var klen=string_length(qstr)
if string_char_at(qstr,i+vpos)="#" or string_char_at(qstr,i+vpos)=chr($0A) then{
enters++;
enterpos=i+vpos+1;

}
//if (a and !(string_char_at(value,i)="#" or string_char_at(value,i)=chr($0A)))
if (string_char_at(qstr,i+vpos)!=string_char_at(value,i))
  then{
//newlines don't match up
i-=1;
vpos++;
//safety for when i keeps decreasing and an endless loop has been created
if i+vpos>klen then{sdbm("[UIZ:ERROR]ENDLESS LOOP AT uiz_textarea_resetsel_p1. aborted.")break;}
}else{
//characters match up
//vpos++
}
}
/*
//find next enterpos
var secondenterpos=string_length(qstr);
for(var i=enterpos;i<=secondenterpos;i++){
if string_char_at(qstr,i)="#" then{
secondenterpos=i;
break;
}
}
*/
selp1line=enters
//sdbm(uiz_string_copy(qstr,enterpos,pos+vpos-1),pos+vpos,pos,vpos)
selpx1=string_width(uiz_string_copy(qstr,enterpos,selp1+vpos))
