/// @description uiz_radiobox_setvalue(instanceid,value)
/// @param instanceid
/// @param value
function uiz_radiobox_setvalue(argument0, argument1) {
	gml_pragma("forceinline");
	with(argument0){
	update=1
	updated=1
	radioboxgroup=group;
	if argument1=true then{
	    with(obj_uiZ_radiobox){
	        if self.id!=other.id then{
	            if is_string(group) then{
	                if is_string(other.radioboxgroup) and group=other.radioboxgroup and value=true then{value=false; uiz_updater_FixViews();}
	            }else{
	                if !is_string(other.radioboxgroup) and group=other.radioboxgroup and value=true then{value=false; uiz_updater_FixViews();}
	            }
	        }
	    }
	}
	value=argument1
	uiz_updater_FixViews();
	}



}
