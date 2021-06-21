/// @description if screen was resized
uiz_checkScreenResize();

global.uiz_stepNumber++;

///check for mousecheck fix
if (os_type=os_windows){
        mousePressed=false;
        mouseReleased=false;
    if mouseTestState=2{//mouse has released previousely with errors
        //another error fix
        mouseTestState=0;
        mouseReleased=true;
    }
    if mouse_check_button_pressed(mb_left) then{
        mouseTestState=1;
    }
    if mouse_check_button_released(mb_left) and mouseTestState=0 then{
        //error seen
        mousePressed=true;
        mouseTestState=2;
    }   
}

///detect changes in windowsize
if (window_get_width()!=global.screenpxwidth or window_get_height()!=global.screenpxheight) && (window_get_width()!=0 && window_get_height()!=0) then{
//uiz_resetwindowsize();
}

if lastmousex=uiz_getmouse_x() and lastmousey=uiz_getmouse_y() then{
global.lastmousemovedy=0
global.lastmousemovedx=0
global.lastmousemoved=0
}else{global.lastmousemoved=sqrt(sqr(lastmousex-uiz_getmouse_x())+sqr(lastmousey-uiz_getmouse_y()))
global.lastmousemovedy=lastmousey-uiz_getmouse_y()
global.lastmousemovedx=lastmousex-uiz_getmouse_x()
}
if global.lastmousemovedx!=0 then{global.lastmousemovedxsign=uiz_sign(global.lastmousemovedx)}
if global.lastmousemovedy!=0 then{global.lastmousemovedysign=uiz_sign(global.lastmousemovedy)}
//global.windowhaschanged=0;

///control double click
if doubleclickcount>0 then{
doubleclickcount++;
if mouse_check_button_pressed(mb_left) then{global.doubleclick=1;doubleclickcount=0;}
if doubleclickcount>=doubleclicktime*room_speed then{doubleclickcount=0;}
}else{
if mouse_check_button_pressed(mb_left) then{doubleclickcount=1;}
}

///handle global.selectedwindow and other window stuff
if !instance_exists(global.selectedwindow) then{
global.selectedwindow=noone;
}
///handle mouse and selection
isresizing=0;
/*

*/

/* */
///begin step check
var sz=ds_list_size(uiz_beginsteplist)
for(var i=0;i<sz;i++){
var o=uiz_beginsteplist[|i];
if instance_exists(o) and o.uiz_enabled=true then{
    with(o){uiz_steps_begin = false;event_user(6);}
    if(sz!=ds_list_size(uiz_beginsteplist)){//if our current item got removed from the list, the size should have changed
        i--;//re-iterate over last step;
        sz = ds_list_size(uiz_beginsteplist);
    }
}
}
ds_list_clear(uiz_beginsteplist);

/* */
///set cursor sprite
/*if global.mousefrozen=false then{
uiz_set_cursor(cr_default)}
*/

//global.wasmousefrozen=max(global.mousefrozen,global.wasmousefrozen);


/* */
///this code runs every 1/4TH OF A SECOND.
var t=floor((get_timer()/1000000)*4);//set t in seconds
if t>lastsecondat then{lastsecondat=t;
//execute code

if lastsecondmousex=uiz_getmouse_x() and lastsecondmousey=uiz_getmouse_y() then{
global.lastsecondmousemovedy=0
global.lastsecondmousemovedx=0
global.lastsecondmousemoved=0
}else{global.lastsecondmousemoved=sqrt(sqr(lastsecondmousex-uiz_getmouse_x())+sqr(lastsecondmousey-uiz_getmouse_y()))
global.lastsecondmousemovedy=lastsecondmousey-uiz_getmouse_y()
global.lastsecondmousemovedx=lastsecondmousex-uiz_getmouse_x()
}
lastsecondmousey=uiz_getmouse_y()
lastsecondmousex=uiz_getmouse_x()
}

/* */
///control global.mouseswipedx

if mouse_check_button_pressed(mb_left) then{
oldmouseswipedx=uiz_getmouse_x()
oldmouseswipedy=uiz_getmouse_y()
/*
sdbm("setting old",global.mouseoverobject)
oldselectedmouseoverobject=global.mouseoverobject;
oldselectedmouseover=global.mouseover;
oldselectedmouseoverframe=global.mouseoverframe;
*/
}
if mouse_check_button(mb_left) then{
global.uiz_mouseswipedx=uiz_getmouse_x()-oldmouseswipedx;
global.uiz_mouseswipedy=uiz_getmouse_y()-oldmouseswipedy;
global.uiz_mouseswiped=uiz_pyth(global.uiz_mouseswipedx,global.uiz_mouseswipedy)

}

/* */
///control uiz_mouseswipeclick
//if either holding mouse for a longer time or moving mouse fast.
//sdbm("check swipe",oldselectedmouseover,global.lastmousemoved,uiz_getposx_simple(mouseswipeclick_distance,mouseswipeclick_distancetype))
if mouse_check_button(mb_left) && uiz_isMouseSwipeClickWhiteListed(oldselectedmouseover) then{//mswc_count+=uiz_sc(mouseswipeclick_time);


if global.lastmousemoved>=uiz_getposx_self(mouseswipeclick_distance,mouseswipeclick_distancetype)/fps then{
global.uiz_mouseswipeclick=true;
//reset mouse to old object

}
}else{
global.uiz_mouseswipeclick=false;
}
if global.uiz_mouseswipeclick=true then{
global.mouseoverobject=oldselectedmouseoverobject;
global.mouseover=oldselectedmouseover;
global.mouseoverframe=oldselectedmouseoverframe;
global.mouseoverscollable=oldselectedmouseoverscrollable;
}

/* */
///control mouse
//global.uiz_debug_text="";
//global.uiz_debug_count=0;
//uiz_updater_debug_processing(id)
//
var oldmouseoverscrollable = global.mouseoverscrollable;
if global.mousefrozen=false and global.wasmousefrozen=false and global.uiz_mouseswipeclick=false then{
//reset
global.mouseoverobject=id
global.mouseoverobjectmydepth=0
global.mouseoverwindow=id
global.mouseoverwindowmydepth=0
global.mouseovercanvas=id
global.mouseovercanvasmydepth=0
global.mouseoverframe=id
global.mouseoverframemydepth=0
global.mouseoverscrollable=id
global.mouseoverscrollablemydepth=0
global.mouseover=id
global.mouseovermydepth=0
global.mouseoverdone=1
//check new
uiz_updater_mouse_processing(id);
if lastmouseover!=global.mouseover then{
with(lastmouseover){
    with(other.lastmouseover){
        kmouseover=0;   
        event_user(2);
    }
}
lastmouseover=global.mouseover;
global.uiz_mouseis=cr_default;
}

if global.mouseover!=id then{
    with(global.mouseover){
        with(global.mouseover){
            var k=uiz_mouse_isOver_object_leftCheck(id);
                ///sdbm("kmosueoverGet,",k,kmouseover,id,global.uiz_stepNumber);
                if k!=kmouseover then{
                    kmouseover=k;
                    event_user(2);
                }
            }
        }
    }
}
if instance_exists(global.mouseover) and global.mouseover!=id then{
with(global.mouseover){
with(global.mouseover){//gm is buggy af so we need this
event_user(3);
}
};
}

if instance_exists(global.mouseoverframe) and global.mouseoverframe!=global.mouseover and global.mouseoverframe!=id then{
    with(global.mouseoverframe){
        event_user(3);
    };
}


/*
if ds_exists(children,ds_type_list) then{
var sz=ds_list_size(children);
for(var i=0;i<sz;i++){
uiz_updater_mouse_processing(children[|i])
}
}
*/

/* */
///update scrollbars

if instance_exists(global.mouseoverscrollable) and global.mouseoverscrollable!=id then{
    with(global.mouseoverscrollable){
        event_user(7);
    };
}

if oldmouseoverscrollable!=global.mouseoverscrollable and instance_exists(oldmouseoverscrollable) and oldmouseoverscrollable!=id then{
    with(oldmouseoverscrollable){
        event_user(7);
    };
}

var sz=ds_list_size(scrollbarStepList);
for(var i=0;i<sz;++i){
    var o = scrollbarStepList[|i];
    if instance_exists(o) and o.uiz_steps_scrollable{
        if o!=global.mouseoverscrollable and o!=oldmouseoverscrollable then{
            with(o){
                event_user(7);
            };
        }
    }else{//remove current instance since it doesn't exist anyways
        ds_list_delete(scrollbarStepList,i);
        --i;
        --sz;
    }
}

/* */
///updater
global.uiz_fix_updates=0;


/* */
///check the typeing char
var doNoKeyCheck=true;
keyboard_currentkey = keyboard_lastkey;
if keyboard_check(vk_lalt) then{
        keyboard_lastKeyForChar=vk_lalt;
        }
if keyboard_lastchar!="" then{
    //if key has been pressed
    if (keyboard_oldlastchar!=keyboard_lastchar) || keyboard_check_pressed(keyboard_lastKeyForChar) || (keyboard_check_released(vk_lalt) && keyboard_lastKeyForChar=vk_lalt) then{
        keyboard_currentchar=keyboard_lastchar;
        keyboard_lastcurrentchar=keyboard_currentchar;
        if !keyboard_check(vk_lalt) || keyboard_check_released(vk_lalt) then{ //keyboard_lastKeyForChar!=vk_lalt || 
        if keyboard_lastKeyForChar=vk_lalt then{
        keyboard_lastKeyForChar=-999;
        doNoKeyCheck=false;
        }else{
        keyboard_lastKeyForChar=keyboard_key;
        }
        keyboard_lastKeyTime=current_time;
        keyboard_charPressed=true;
        
        }
    }else{
    keyboard_currentchar="";
    }
}else{
    keyboard_currentchar = "";
}
//sdbm("donokey",doNoKeyCheck)
if doNoKeyCheck=true and (keyboard_check(vk_nokey) || !keyboard_check(keyboard_lastKeyForChar)) then{
//sdbm("reseeting key p");
    keyboard_currentchar="";
    keyboard_charPressed=false;
}

keyboard_oldlastchar=keyboard_lastchar;

/* */
///check for window
if global.mouseoverwindow=id and mouse_check_button(mb_any) then{
    uiz_window_select(noone)
}

/* */
/*  */
