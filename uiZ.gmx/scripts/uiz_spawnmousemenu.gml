///uiz_spawnmousemenu(ds_list,destroylist,[optional actionlist],[optional openinganimation xfunction,openinganimation yfunction, openinganimation alphafunction, openingtime])
/*
Spawns in a obj_uiZ_mousemenu object and destroys any that already exist.
If have argument 3 or higher filled in you will NEED to fill everything up until argument6 (openingtime).
Some optional arguments of this object look like those of the uiz_setopeninganimation function.
0-ds_list: A ds list containing all items that should be inside the menu.
1-destroylist: Boolean value whether the given ds list(s) should be automatically destroyed when the mousemenu get destroyed.
2-actionlist: A ds list containing scripts that should be executed when pressing an item on the menu. Leave this at -1 or empty if you don't want this.
3-xfunction: The function for the width and x of the animation when the mousemenu is created.
4-yfunction: The function for the height and y of the animation when the mousemenu is created.
5-alphafunction: The function for the alpha of the animation when the mousemenu is created.
6-openingtime: The time in seconds these above functions take to be executed.
*/
while(instance_exists(obj_uiZ_mousemenu)){
//sdbm("destroying object place 1")
uiz_destroyobject(obj_uiZ_mousemenu.id)
}
var v=uiz_c(obj_uiZ_mousemenu);

uiz_depth_set(v,-99999999);

//v.depth=-999999999
v.uselist=argument[0];
v.destroylist=argument[1];
if argument_count>2 then{
v.actionlist=argument[2]
}

if mouse_check_button(mb_left) then{
    v.wait=true;
}

v.y=uiz_getmouse_y()
v.x=uiz_getmouse_x()
v.posinframex=uiz_static;
v.posinframey=uiz_static;
uiz_fixmousemenupos(v);
with(v){
    uiz_updater_FixViews();
}
if argument_count>6 then{
uiz_setopeninganimation(v,argument[3],argument[4],argument[5],argument[6],false)
}else{
//uiz_setopeninganimation(v,uiz_sin_inout,uiz_sin_inout,uiz_exponential_out,0.4)
uiz_setopeninganimation(v,uiz_straight,uiz_straight,uiz_straight,0.2,false)
}
return v;
