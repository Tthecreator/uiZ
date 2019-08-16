if uiz_generateqstr() then{
//get amount of lines
var lins=uiz_getlines(qstr)
//get amount of acces lines
lsz=string_height("ƒF|⎲}g")
var linefit=floor(height/lsz)
scrolllines=lins-linefit
var fline=min(uiz_positify(scroll),scrolllines)
var qstrsz=string_length(qstr);
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
var c=string_char_at(qstr,i)
if c="#" or c=chr($0A) or (fline=scrolllines and i=qstrsz) then{
if linecount>=linefit-1 or (fline=scrolllines and i=qstrsz) then{
lastbegscrpos=oldi
qstr=uiz_string_copy(qstr,oldi,i)
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
