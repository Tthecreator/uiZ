///uiz_dropdown_setvalue(instanceid,value)
gml_pragma("forceinline");
var d=argument0;
d.value=argument1;
d.selected=ds_list_find_index(d.uselist,argument1)
d.select=d.selected;
with(d){
    if masklist!=-1 and ds_exists(masklist,ds_type_list) and ds_list_size(masklist)>=ds_list_size(uselist) then{mk=masklist;maskvalue=string(masklist[| selected])}else{maskvalue=value}
}
