///uiz_xml_somethinghasdata(file,infoname,info)
//returns bool. if the specified data exists in some tag or struct anywhere.
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
var lsz=ds_list_size(l)
var lastfull=-1;
for(var i=0;i<lsz;i++){
lv=round(uiz_positify(l[| i])>>3);
lt=uiz_positify(l[| i]) mod 8;
if lt<=3 then{lastfull=i;}
if lt=4 and d[| lv]=argument1 then{
i++
if i<lsz then{
lv=round(uiz_positify(l[| i])>>3);
lt=uiz_positify(l[| i]) mod 8;
if lt=5 and v[| lv]=argument2 then{return lastfull;}
}
}
}
return -1;
