global.mouseoverdone=0
lastmousex=uiz_getmouse_x()
lastmousey=uiz_getmouse_y()

if global.mousefrozen=1 then{
if global.mousefrozensafety=1 and global.mousefrozensafetynumber!=global.uiz_instep then{
global.mousefrozen=0;
global.mousefrozensafety=0;
}
}else{
global.mousefrozensafety=0;
}
global.uiz_instep++;

///set mouse
uiz_compute_cursor()
//global.wasmousefrozen=false;
if mouse_check_button_pressed(mb_left) then{
//sdbm("setting old",global.mouseoverobject)
oldselectedmouseoverobject=global.mouseoverobject;
oldselectedmouseover=global.mouseover;
oldselectedmouseoverframe=global.mouseoverframe;
}

///handle global.selectedwindow
/*
if mouse_check_button_pressed(mb_any) and instance_exists(global.selectedwindow) and global.selectedwindow.isresizing=0 and (global.mouseoverwindow=0 or global.mouseoverwindow=id) then{
//sdbm("resetting selected window")
global.selectedwindow=noone;
global.selectedwindowdepth=0;
}

/* */
///rebuild depths compatibility
uiz_compatibility_rebuilddepths()

/* */
///last step check

var sz=ds_list_size(uiz_endsteplist)
for(var i=0;i<sz;i++){
var o=uiz_endsteplist[|i];
if instance_exists(o) and o.uiz_enabled=true then{
with(o){event_user(5);}
if(sz!=ds_list_size(uiz_endsteplist)){//if our current item got removed from the list, the size should have changed
    i--;//re-iterate over last step;
    sz = ds_list_size(uiz_endsteplist);
}
}
}
ds_list_clear(uiz_endsteplist);

/* */
///draw updater and extra addition
//add extras
/*
var l=uiz_arealist_extra;
var sz=ds_list_size(l);
uiz_arealist_oldsz=sz;
if (sz mod 5) = 0 then{
for(var i=0;i<sz;i+=5){
var aide=l[|i];
if instance_exists(aide){
if uiz_updater_FixViews_addsquare(l[|i+1],l[|i+2],l[|i+3],l[|i+4])=false then{
aide.uiz_selfmarked=false;}else{
sdbm("ADDED EXTRA");
}
}
}
}
ds_list_clear(l);
*/

var l=uiz_arealist_extra;
var l2=uiz_arealist;
var sz=ds_list_size(l);
uiz_arealist_oldsz=ds_list_size(l2);
if (sz mod 5) = 0 then{
    for(var i=sz-5;i>=0;i-=5){
        var aide=l[|i];
        if instance_exists(aide){
            if uiz_updater_FixViews_addsquare(l[|i+1],l[|i+2],l[|i+3],l[|i+4])=false then{
                aide.uiz_selfmarked=false;
            }else{
                ds_list_add(l2,aide)
            }
        
        }
    }
}
ds_list_clear(l);


uiz_updater_FixViews_processing(obj_uiZ_controller);


/* */
///alt for updating everything
/*
if keyboard_check(vk_alt){
    uiz_updater_FixViews_area(0,0,width,height);
}
*/

/* */
///reset double click
if mouse_check_button_released(mb_left) or !mouse_check_button(mb_left){
    global.doubleclick=0;
}

/* */
/*  */
