///uiz_dropdown_setvalue(instanceid,value)
gml_pragma("forceinline");
var d=argument0;
d.value=argument1;
d.selected=ds_list_find_index(d.uselist,argument1)
d.select=d.selected;
