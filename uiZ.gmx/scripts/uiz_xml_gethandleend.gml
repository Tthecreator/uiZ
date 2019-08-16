///uiz_xml_gethandleend(file,handle)

var h=argument1
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
var lsz=ds_list_size(l);
//get what handle is
if lsz=0 then{return -1;}
if argument1=-5 then{return lsz-1;}
var lv=round(uiz_positify(l[|h])>>3)
var lt=uiz_positify(l[|h]) mod 8;
//look for end
var ret=-1
//sdbm("lookfor",(lv<<3)+7,(lv<<3),lv)
var lookfor=(lv<<3)+7
var level=0;
for(var i=h;i<lsz;i++){
var lv=round(uiz_positify(l[|i])>>3)
var lt=uiz_positify(l[|i]) mod 8;
if lt=0 or lt=1 then{level++}
if lt=7 then{level--;}
//if uiz_positify(l[|i])=lookfor then{sdbm("almoast",level)}
if uiz_positify(l[|i])=lookfor and level=0 then{ret=i;break;}
}
return ret;
