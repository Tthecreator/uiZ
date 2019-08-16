if argument0=-1 or argument0=noone or !instance_exists(argument0) then{
    return false;
}
switch(argument0.id){
    case obj_uiZ_swipicon:
        return true;
    default:
        return false;
}
