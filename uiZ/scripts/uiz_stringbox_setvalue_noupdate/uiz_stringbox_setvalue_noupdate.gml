/// @description uiz_stringbox_setvalue_noupdate(stringbox,value)
/// @param stringbox
/// @param value
function uiz_stringbox_setvalue_noupdate(argument0, argument1) {
	//Sets the text in a stringbox.
	with(argument0){
	    if is_real(argument1) then{
	        if minvalue_enabled then{argument1 = max(argument1,minvalue)}
	        if maxvalue_enabled then{argument1 = min(argument1,maxvalue)}
	        str_real = uiz_string_fromReal(argument1);
	    }else{
	        str_real = string(argument1);
	    }
	    uiz_updater_step_endCheck();
	    uiz_stringbox_str_real_init();
	    uiz_stringbox_resetdis();
	    uiz_updater_FixViews();
	}



}
