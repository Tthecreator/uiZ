///uiz_xml_attribute_getName(file,attributeHandle)
//if you have an handle that points to an attribute, this can be used to get the value of the attribute
//<example test="something"> would have the attribute name "something"
var f=argument0;
var m=obj_uiz_xmlparser.id;
var l=m.filelistl[| f];
var d=m.filelistd[| f];
var v=m.filelistv[| f];
var lsz=ds_list_size(l);

var h = argument1+1;

if lsz>0 and h<lsz then{
lv=round(uiz_positify(l[| h])>>3);
return v[| lv]
}
return "";
