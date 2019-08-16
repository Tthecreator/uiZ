///uiz_radiobox_setvalue(instanceid,value)
gml_pragma("forceinline");
with(argument0){
update=1
updated=1
radioboxgroup=group;
with(obj_uiZ_radiobox){
if self.id!=other.id then{
if is_string(group) then{
if is_string(other.radioboxgroup) and group=other.radioboxgroup then{value=false;}
}else{
if !is_string(other.radioboxgroup) and group=other.radioboxgroup then{value=false;}
}
uiz_updater_FixViews();
}

}
value=argument1
}
