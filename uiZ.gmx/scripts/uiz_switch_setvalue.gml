///uiz_switch_setvalue(instanceid,value[false],doUpdate[false)
gml_pragma("forceinline");
with(argument0){
    if value!=argument1 then{
        value=argument1;
        updated=true;
        if argument2 then{
        update=true;
        }
        uiz_updater_step();
    }
}
