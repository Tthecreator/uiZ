///uiz_xml_isempty(id)
var l=obj_uiz_xmlparser.filelistl[| argument0];
if ds_exists(l,ds_type_list) and ds_list_size(l)>0 then{return 0;}else{return 1;}
