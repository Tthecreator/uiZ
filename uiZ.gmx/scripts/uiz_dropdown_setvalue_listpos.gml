///uiz_dropdown_setvalue(instanceid,list pos)
//takes a position inside your uselist of a dropdown, and sets the value to a position in that list.
gml_pragma("forceinline");
var d=argument0;
d.selected=argument1
d.select=argument1
d.value=string(d.uselist[| d.selected]);


