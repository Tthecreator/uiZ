/*
Script that takes no arguments and return nothing
It has to be called before any other uiz related scripts, functions or objects will be used.
*/
if !instance_exists(obj_uiZ_controller) then{instance_create(0,0,obj_uiZ_controller)}
