/// @description uiz_window_resetbuttons(window id)
/// @param window id
function uiz_window_resetbuttons() {
	/*
	with(argument0){
	if instance_exists(buttons) then{
	if button_cross=1 then{
	if !instance_exists(cross) then{
	cross=uiz_easybutton_create(spr_uiZ_windowbuttons)
	uiz_setParent(cross,buttons)
	cross.posinframex=fc
	cross.posvalx=2/3;
	cross.posvalwtype=fcy
	cross.posvalw=1
	cross.posinframey=uiz_fill
	cross.containtowhosparent=id
	uiz_fixgeneralpos(cross)
	}}else{if instance_exists(cross) then{uiz_destroyObject(cross)}}
	if button_maximize=1 then{
	if !instance_exists(maxim) then{
	maxim=uiz_easybutton_create(spr_uiZ_windowbuttons)
	//sdbm("id's",maxim,buttons)
	uiz_setParent(maxim,buttons)
	maxim.posinframex=fc
	maxim.posvalx=(2-button_cross)/3;
	maxim.posvalwtype=fcy
	maxim.posvalw=1
	maxim.posinframey=uiz_fill
	maxim.containtowhosparent=id
	uiz_fixgeneralpos(maxim)
	}else{
	if maxim.posvalx!=(2-button_cross)/3 then{
	maxim.posvalx=(2-button_cross)/3;
	uiz_fixgeneralpos(maxim)
	}
	}}else{if instance_exists(maxim) then{uiz_destroyObject(maxim)}}

	if button_minimize=1 then{
	if !instance_exists(minim) then{
	minim=uiz_easybutton_create(spr_uiZ_windowbuttons)
	uiz_setParent(minim,buttons)
	minim.posinframex=fc
	minim.posvalx=(2-button_cross-button_maximize)/3;
	minim.posvalwtype=fcy
	minim.posvalw=1
	minim.posinframey=uiz_fill
	minim.containtowhosparent=id
	uiz_fixgeneralpos(minim)
	}else{
	if minim.posvalx!=(2-button_cross-button_maximize)/3 then{
	minim.posvalx=(2-button_cross-button_maximize)/3;
	uiz_fixgeneralpos(minim)
	}
	}

	}else{if instance_exists(minim) then{uiz_destroyObject(minim)}}
	}
	}


/* end uiz_window_resetbuttons */
}
