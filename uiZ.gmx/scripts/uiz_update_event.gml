///uiz_update_event(startupdate, midupdate, endupdate)
//if an object calls this event, it means that it should update. 
if uiz_update_script>0 and script_exists(uiz_update_script) then{
    script_execute(uiz_update_script,argument0,argument1,argument2,uiz_update_script_argument);
}
