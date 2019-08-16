///uiz_xml_gethandleshortend(file,handle)

var h=argument1
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
var lsz=ds_list_size(l);
//get what handle is
//var lv=round(l[|h]>>3)
//var lt=l[|h] mod 8;
//look for end
if lsz=0 then{return 0;}
if argument1<0 then{return lsz-1;}
var ret=-1
for(var i=h+1;i<lsz;i++){
var lookfor=uiz_positify(l[|i]) mod 8;
if lookfor!=4 and lookfor!=5 then{ret=i;break;}
}
//sdbm("gethandleshort",i,lsz)
if i=lsz then{ret=lsz;}
return ret;
