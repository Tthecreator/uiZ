///uiz_xml_gettag_name_at(file,at)
//gets the name of a tag at a specific handle
//<example test="something"> would have the name "example"
var f=argument0;
var m=obj_uiz_xmlparser.id;
var l=m.filelistl[| f];
var d=m.filelistd[| f];
var v=m.filelistv[| f];
var lsz=ds_list_size(l);

if lsz>0 and argument1<lsz then{
lv=round(uiz_positify(l[| argument1])>>3);
//lt=uiz_positify(l[| i]) mod 8;
return d[| lv]
}
return "";
