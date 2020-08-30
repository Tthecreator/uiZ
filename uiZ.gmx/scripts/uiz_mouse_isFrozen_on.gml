///uiz_mouse_isFrozen_on(instanceid)
//returns whether the mouse is currently frozen on a specific object
if global.mousefrozen=true and uiz_mouse_isOver(argument0) then{
    return true;
}else{
    return false;
}
