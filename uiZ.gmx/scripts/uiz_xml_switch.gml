///uiz_xml_switch(file,switch1,switch2,alsoinfotype,alsoinfo) switches two tag/folder names and switches them
//example: <hi><there><something>wut</something></there></hi>
//execution of uiz_xml_switch(file,"hi","there")
//after execution: <there><hi><something>wut</something></hi></there>
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
//var pos1=ds_list_find_index(d,argument1)
//var pos2=ds_list_find_index(d,argument2)
var pos1=uiz_list_getadd(d,argument1);
var pos2=uiz_list_getadd(d,argument2);
//if pos1>-1 and pos2>-1 then{
var sz=ds_list_size(l)
for(var i=0;i<sz;i++){
var lv=round(uiz_positify(l[| i])>>3);
var lt=uiz_positify(l[| i]) mod 8;
if lt<=3 or lt=7 or (lt=4 and argument3=1) or (lt=5 and argument4=1) then{
switch(d[|lv]){
case argument1:
if l[| i]<0 then{
l[| i]=-1-((pos2<<3)+lt)
}else{l[| i]=((pos2<<3)+lt)}
break;
case argument2:
if l[| i]<0 then{
l[| i]=-1-((pos1<<3)+lt)
}else{l[| i]=((pos1<<3)+lt)}
break;
}
}
}
//}
