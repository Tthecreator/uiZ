///uiz_drawscrollbar_vertical_step(rx,ry,rlx,rly,scroll,scrolllines,middlemousescroll,scrollspeed,animation,animationtime)
//return if the scrollbar needs to redraw;
//object from which this is called from does need to be a uiz object, due to mouse checks.
/*
Will draw a scrollbar.
The "scroll=" part is important, see argument 7
Can create some weird effects if the vertical versions width is bigger than its height, and also if the height is bigger than then width for the horizontal version.
If not sure of the size use "uiz_drawscrollbar" which does a check which direction the scrollbar fits the best. 0-3: position: From where to where the bar would be drawn, in real x coordinates.
4-scroll: A special value that should be the same variable as returned by the draw_scrollbar_ function. This is value that holds mouse data, and scrolldata.
On the scroll variable you can use "uiz_scrollbar_setvalue" and "uiz_scrollbar_getvalue" (same as "uiz_positify").
5-scrolllines: How many steps the scrollbar has. If you're drawing out a list, then this would be: "(your list size)-(how many list items fit on my object without scrolling)"
6-middlemousescroll: A bool value whether you want scrolling to be enabled. There is no mouse position checking for this value, so you'll have to program that yourself.
7-scrollspeed: how many scrolllines the middle mouse scroll wheel and/or the buttons should scroll every time you interact with them.


A valid scrollbar sprite holds the following images:
0. A button down sprite that also acts as a right button on horizontal scrollbars.
1. The same as 0, but then when the mouse hovers over it.
2. The same as 0, but then when the mouse clicks it.
3. A button up sprite that also acts as a left button on horizontal scrollbars.
4. The same as 3, but then when the mouse hovers over it.
5. The same as 3, but then when the mouse clicks it.
6.The top/left part of a scrollbar.
7. The same as 6, but then when the mouse hovers over it.
8. The same as 6, but then when the mouse clicks it.
9.The bottom/right part of a scrollbar.
10. The same as 9, but then when the mouse hovers over it.
11. The same as 9, but then when the mouse clicks it.
12.The middle part of a vertical scrollbar.
13. The same as 12, but then when the mouse hovers over it.
14. The same as 12, but then when the mouse clicks it.
15: A sprite to put on the middle of the scrollbar.
16: A background sprite for behind the scrollbar.
17.The middle part of a horizontal scrollbar.
18. The same as 17, but then when the mouse hovers over it.
19. The same as 17, but then when the mouse clicks it.

Note: you can use spr_uiZ_scrollbar as a reference.


mstate codes:
.0-none
.1-top over
.2-top click
.3-bottom over
.4-bottom click
.5-bar over
.6-bar click
*/
//var scroll=(uiz_positify(argument4-frac(argument4)));
//var scroll=floor(uiz_positify(argument4-uiz_sign(argument4)*frac(argument4)));
var argument_arr = array_create(argument_count);
for (var i = 0; i < argument_count; i++) {
    argument_arr[i] = argument[i];
}
if (live_call_ext(argument_arr)) return live_result;

var scroll=uiz_drawscrollbar_getScroll(argument4);
var scroll_old=scroll;
var scrollsel=argument4[@uiz_drawscrollbar_struct.uiz_dsb_scrollsel];
var height=argument3-argument1;
var width=argument2-argument0;
var mstate=0;
var mstate_last=uiz_drawscrollbar_getMstate(argument4);
var twn_fac = argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_factor];

var cwidth=min(height/2,width)

var mstate_old = mstate;
var mstate_last_old = mstate_last;
var scrollsel_old = scrollsel;

//handle scrolling

if global.mouseoverscrollable=id and argument6=true then{

if mouse_wheel_down() then{
//scroll=clamp(scroll+argument7,0,argument5)
    if twn_fac=1 then{//not busy doing an animation
        argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from]=scroll;
        argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to]=clamp(scroll+argument7,0,argument5);
        twn_fac=0;
    }else{//busy doing an animation
        argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to]=clamp(argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to]+argument7,0,argument5);
        var animfac = (scroll - argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from])/(argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to] - argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from]);
        twn_fac=uiz_animation_revertfunction(animfac,argument8);
    }
}
if mouse_wheel_up() then{
//scroll=clamp(scroll-argument7,0,argument5)
    if twn_fac=1 then{//not busy doing an animation
        argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from]=scroll;
        argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to]=clamp(scroll-argument7,0,argument5);
        twn_fac=0;
    }else{//busy doing an animation
        argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to]=clamp(argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to]-argument7,0,argument5);
        var animfac = (scroll - argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from])/(argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to] - argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from]);
        twn_fac=uiz_animation_revertfunction(animfac,argument8);
    }
}
}
//handle mouse movement on the bar
if (global.mouseoverobject=id or global.mouseoverscrollable=id) and uiz_getmouse_y()>argument1 and uiz_getmouse_y()<argument3 and (scrollsel=1 or (uiz_getmouse_x()>argument0 and uiz_getmouse_x()<argument2)) then{
//left button
if scrollsel=0 and uiz_getmouse_y()>argument1 and uiz_getmouse_y()<argument1+cwidth then{
if mouse_check_button(mb_left) then{
scroll=clamp(scroll-argument7/5,0,argument5);
mstate=2;
}else{
mstate=1;
}
}else{
//right button
//sdbm("scroll right almost",uiz_getmouse_x(),argument2-height,argument2,height)
if scrollsel=0 and uiz_getmouse_y()>argument3-cwidth and uiz_getmouse_y()<argument3 then{
if mouse_check_button(mb_left) then{
scroll=clamp(scroll+argument7/5,0,argument5);
mstate=4;
}else{
mstate=3;
}
}else{
//bar dragging
var nheight=height-width*2;
var barh=min(nheight,max(50,floor(nheight*(1/power(argument5,1/5)))));
var y4=floor(argument1+width+(scroll/argument5)*(nheight-barh));
if scrollsel=1 or (global.mousefrozen=false and uiz_getmouse_y()>y4 and uiz_getmouse_y()<y4+barh) then{
//point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),x4,argument1,x4+barw,argument3)
if mouse_check_button(mb_left){
global.mousefrozen=true
scrollsel=1
//mouse safety
global.mousefrozensafety=1;
global.mousefrozensafetynumber=global.uiz_instep;

if uiz_getmouse_y()<argument1+width then{scroll=0;}else{//begin
if uiz_getmouse_y()>argument3-width then{scroll=argument5;}else{//end
scroll=clamp(round(scroll-(((global.lastmousemovedy)/(nheight-barh))*argument5)),0,argument5)

}}
mstate=6;
}else{
mstate=5;
//reset mouse
if scrollsel=1 then{scrollsel=0;global.mousefrozen=0;global.mousefrozensafety=0;}
}
}else{if global.mousefrozen=false and mouse_check_button_released(mb_left) and uiz_getmouse_y()>argument1+width and uiz_getmouse_y()<argument3-width then{
//scroll=clamp(round(((uiz_getmouse_y()-argument1-width-barh/2)/(nheight-barh))*argument5),0,argument5)

argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to]=clamp(round(((uiz_getmouse_y()-argument1-width-barh/2)/(nheight-barh))*argument5),0,argument5);
    if twn_fac=1 then{//not busy doing an animation
        argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from]=scroll;
        twn_fac=0;
    }else{//busy doing an animation
        var animfac = (scroll - argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from])/(argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to] - argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from]);
        twn_fac=uiz_animation_revertfunction(animfac,argument8);
    }

//sdbm((uiz_getmouse_y()-argument1-width),nheight,(uiz_getmouse_x()-argument1-width)/nheight)
}}
}
}
}
//finish

//check tweening (the animation of the scrolling)
if(twn_fac!=1){
    if twn_fac==0 and !uiz_steps_scrollable then{
        uiz_steps_scrollable = true;
        ds_list_add(obj_uiZ_controller.scrollbarStepList,id);
    }
    twn_fac = clamp(twn_fac+uiz_sc(argument9),0,1);
    scroll = lerp(argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from],argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to],uiz_animation_getfunction(twn_fac,argument8));
    argument4[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_factor] = twn_fac;
    if twn_fac>=1 and uiz_steps_scrollable then{
        uiz_steps_scrollable = false;
    }
}

var updated = false;

if(scroll_old!=scroll || mstate!=mstate_last || scrollsel_old!=scrollsel){
    updated = true;
    if scroll!=scroll_old then{
        argument4[@uiz_drawscrollbar_struct.uiz_dsb_updated] = 5;
    }else{
        argument4[@uiz_drawscrollbar_struct.uiz_dsb_updated] = 3;
    }
    uiz_drawscrollbar_update_view(argument0,argument1,argument2,argument3,uiz_vertical,mstate,mstate_last,argument4[@uiz_drawscrollbar_struct.uiz_dsb_updated]);
}
argument4[@uiz_drawscrollbar_struct.uiz_dsb_scroll] = scroll;//save scroll
argument4[@uiz_drawscrollbar_struct.uiz_dsb_scrollsel] = scrollsel;//save scrollsel
argument4[@uiz_drawscrollbar_struct.uiz_dsb_mstate] = mstate;//save scrollsel
argument4[@uiz_drawscrollbar_struct.uiz_dsb_mstate_last] = mstate_last;//save scrollsel

if scrollsel=1 then{
uiz_set_cursor(cr_handpoint)
}

return updated;

/*
if scrollsel=1 then{
uiz_set_cursor(cr_handpoint)
out=round(scroll)+mstate/10+mstate_last/100;
}else{out=-1-round(scroll)-mstate/10-mstate_last/100;}

if oin!=out then{
var updated;
if scroll!=scroll_old then{
updated=5;
}else{
updated=3;
}
out+=updated/1000*uiz_sign(out);//let the other script know about the update
uiz_drawscrollbar_update_view(argument0,argument1,argument2,argument3,uiz_vertical,mstate,mstate_last,updated);
}
return out;
*/
