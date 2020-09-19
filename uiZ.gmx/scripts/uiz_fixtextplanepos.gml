var t=argument0;
//sdbm("fixing",t,id,object_get_name(object_index),global.isfixinggrandchildren)
with(t){
uiz_fix_Base();




if oldvalue!=value then{
//reset qstr if no selection
scblwidth=uiz_getposx(scrollbarsize,scrollbarsizetype)
qstrinfy=uiz_getTextLines_contained_infY(value,width)
qstr=qstrinfy;
if string_height(qstrinfy)>height then{
qstrinfy=uiz_getTextLines_contained_infY(value,width-scblwidth)
if doscroll=false then{
scroll=-1;
}
doscroll=true

//get amount of lines
lins=uiz_getLines(qstrinfy)
//get amount of acces lines
lsz=string_height("ƒF|⎲}g")
linefit=floor(height/lsz)
scrolllines=lins-linefit
var fline=min(uiz_positify(scroll),scrolllines)
qstrsz=string_length(qstrinfy);
var linecount=1;
vadpos=1;

for(var i=1;i<=qstrsz;i++){
var c=string_char_at(qstr,i)
if c=string_char_at(value,vadpos) then{
vadpos++;
}
if c="#" or c=chr($0A) or fline=0 then{
if linecount=fline or fline=0 then{
var oldi=i+sign(fline);


linecount=0;
for(var i=oldi;i<=qstrsz;i++){
var c=string_char_at(qstrinfy,i)
if c="#" or c=chr($0A) or (fline=scrolllines and i=qstrsz) then{
if linecount>=linefit-1 or (fline=scrolllines and i=qstrsz) then{
lastbegscrpos=oldi
qstr=uiz_string_copy(qstrinfy,oldi,i)
break;
}
linecount++;
}
}
break;
}

linecount++;
}
}
//reset pos
if uiz_positify(scroll)!=uiz_positify(lastscroll) then{
posline=(posline+startposline)-uiz_positify(scroll)
startposline=uiz_positify(scroll)
//here
lastscroll=scroll;
}
}



oldvalue=value
}

}

