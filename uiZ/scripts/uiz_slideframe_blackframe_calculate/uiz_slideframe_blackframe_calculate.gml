/// @description uiz_slideframe_blackframe_calculate(setp) INTERNAL UIZ SCRIPT.
/// @param setp
function uiz_slideframe_blackframe_calculate(argument0) {
	if instance_exists(blackframe) then{
	blackframe.alpha=max(0,blackframealpha*(uiz_animation_getFunction(clamp(1-argument0,0,1),blackframeanimation)));
	with(blackframe){
	if alpha<=0.005 then{
	uiz_setEnabled(id,false);
	}else{
	uiz_setEnabled(id,true);
	}
	uiz_updater_FixViews();
	};
	}



}
