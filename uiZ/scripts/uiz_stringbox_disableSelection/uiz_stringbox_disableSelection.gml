/// @description uiz_stringbox_event_disableEvent(id)
/// @param id
function uiz_stringbox_disableSelection(argument0) {
	//deselects the stringbox. Also deselects any selection made.
	with(argument0){
	    if typing = true then{
	        typing = false;
	        uiz_typecursor_deregister();
	    }
	    uiz_updater_FixViews();
	    uiz_stringbox_selection_disable();
	    if acceptOnlyNumbers then{
	        var rl = real(str_real);
	        if rl>maxvalue and maxvalue_enabled then{
	            uiz_stringbox_setvalue_noupdate(id,maxvalue);
	        }else if str_real<rl and minvalue_enabled then{
	            uiz_stringbox_setvalue_noupdate(id,minvalue);
	        }
	    }
	    update = true;
	    updated = true;
	    uiz_updater_step_endCheck();
	    uiz_updater_unstep();
	}



}
