///uiz_xml_remove_at_all(file,at)
//removes a tag with all it's children.
//returns how much interal xml parser data was deleted
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
var h = argument1;
var eh=uiz_xml_gethandleend(argument0,h)
repeat(eh-h+1){//remove tag part
ds_list_delete(l,h)
}
return eh-h+1;
