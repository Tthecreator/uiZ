/*
if keyboard_check(vk_control) or keyboard_check(vk_alt)
or(keyboard_key >= 112 and keyboard_key <= 123)//check for function keys (f1..f12)
or keyboard_key = vk_lshift or keyboard_key = vk_rshift 
or keyboard_key = 174 or keyboard_key = 175 then {
return false;} else {
return true;
}
*/

if !keyboard_check(vk_control) and !keyboard_check(vk_alt) and !keyboard_check(91)//windows key
and obj_uiZ_controller.keyboard_charPressed
then{
return true;
}else{
return false;
}
