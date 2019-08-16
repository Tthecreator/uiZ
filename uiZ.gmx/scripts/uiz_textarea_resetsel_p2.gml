qstr=uiz_gettextlines_contained(value,width,height)
var vpos=0;
var enters=0;
var enterpos=0;
for(var i=1;i<=selp2;i++){
//if newline
var a=false;
var klen=string_length(qstr)
if string_char_at(qstr,i+vpos)="#" or string_char_at(qstr,i+vpos)=chr($0A) then{
enters++;
enterpos=i+vpos+1;
a=true;
}
//if (a and !(string_char_at(value,i)="#" or string_char_at(value,i)=chr($0A)))
if (string_char_at(qstr,i+vpos)!=string_char_at(value,i))
  then{
//newlines don't match up
i-=1;
vpos++;
//safety for when i keeps decreasing and an endless loop has been created
if i+vpos>klen then{sdbm("[UIZ:ERROR]ENDLESS LOOP AT uiz_textarea_resetsel_p2. aborted.")break;}
}else{
//characters match up
//vpos++
}
}
selp2line=enters
//sdbm(uiz_string_copy(qstr,enterpos,pos+vpos),pos+vpos,pos,vpos)
//.if string_char_at(qstr,i+vpos)
selpx2=string_width(uiz_string_copy(qstr,enterpos,selp2+vpos))
