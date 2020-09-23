/// @description control mouse frozen
if global.mousefrozen=false then{
if mouse_check_button(mb_none) then{ 
global.wasmousefrozen=false}
}else{
global.wasmousefrozen=true
}




if mouse_check_button_pressed(mb_left) then{
global.mousedirectoverobject=true;
dirlastmouseoverobject=global.mouseoverobject
}
if global.mouseoverobject!=dirlastmouseoverobject then{
global.mousedirectoverobject=false;
}else{
global.mousedirectoverobject=true;
}

if global.lockwindowresel>0 then{
global.lockwindowresel--;
}
///uiz by thomas saedt, Tthecreator on the game maker forums.

///updater

var sz=ds_list_size(uiz_steplist)
for(var i=0;i<sz;i++){
var o=uiz_steplist[|i];
if instance_exists(o) and o.uiz_enabled=true then{
with(o){event_user(4);}
if(sz!=ds_list_size(uiz_steplist)){//if our current item got removed from the list, the size should have changed
    i--;//re-iterate over last step;
    sz = ds_list_size(uiz_steplist);
}
}else{
ds_list_delete(uiz_steplist,i);
i--;
sz--;
}
}

///update animations
var sz=ds_list_size(uiz_animationlist)
for(var i=0;i<sz;i++){
	var o=uiz_animationlist[|i];
	if o=undefined then{continue;}
	if instance_exists(o) then{
		with(o){if uiz_getscalervalues_counter() then{inanimation=false;ds_list_delete(other.uiz_animationlist,i)}

		}
	}else{
	sdbm("[uiZ:ERROR]Found invalid object inside the animationlist")
	ds_list_delete(uiz_animationlist,i)
	if sz>1 then{i--;}
	}
}

///handle changes in dpi
if uiz_dpi_type=2 then{
//check for dpichanges
var dp_new=uiz_dpi_getdpi();
if dp_new!=uiz_dp then{
uiz_dp=dp_new;
//resize window
if uiz_dp_window_w>0 and uiz_dp_window_h>0 then{
window_set_size(uiz_dp_window_w*uiz_dp,uiz_dp_window_h*uiz_dp);
}
//redo font
UIZ_FONT();
uiz_fixChildren(obj_uiZ_controller,true)
}

}

///check for debug
if !instance_exists(obj_uiZ_debugmanager) and keyboard_check(vk_control) and keyboard_check(vk_shift) and keyboard_check(ord("I")) then{

    instance_create(0,0,obj_uiZ_debugmanager);
}

if keyboard_check(vk_control) && keyboard_check(vk_f5) then{
 uiz_updater_FixViews_addsquare(0,0,width,height);
}

