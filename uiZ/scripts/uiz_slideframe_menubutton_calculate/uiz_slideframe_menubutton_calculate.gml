/// @description uiz_slideframe_menubutton_calculate(setp) INTERNAL UIZ SCRIPT.
/// @param setp
function uiz_slideframe_menubutton_calculate(argument0) {
	if instance_exists(menubutton) then{
	if value==false then{
	    var interval = clamp(1-argument0,0,1);
	}else{
	    var interval = clamp(argument0,0,1);
	}
	if interval == 1 then{
	    uiz_spriteanimationbutton_setvalue(menubutton, newvalue)
	}else{
	    uiz_spriteanimationbutton_setvalue_advanced(menubutton, interval, !value, false);
	}
	with(menubutton){
	    uiz_updater_FixViews();
	}
	}



}
