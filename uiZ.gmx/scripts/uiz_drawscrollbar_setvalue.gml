///uiz_drawscrollbar_setvalue(scroll,newvalue)
/*
Changes how far a scrollbar has scrolled inside a scrollbar's "scroll" value.
The change is instance, without animation.
Set newvalue to the amount you want the scrollbar to be scrolled. Should be 0 or higher and lower than the "scrolllines" argument in uiz_drawscrollbar_. 

don't forget to call uiz_drawscrollbar_update to make sure the scrollbar displays the right values.
*/
if argument0[@uiz_drawscrollbar_struct.uiz_dsb_scrollsel] then{
global.mousefrozen=0;
global.mousefrozensafety=0;
}

argument0[@uiz_drawscrollbar_struct.uiz_dsb_scrollsel] = false;

var updated=uiz_drawscrollbar_getUpdated(argument0);
if updated<=3 then{
argument0[@uiz_drawscrollbar_struct.uiz_dsb_updated] = 5-updated;
}


//set animation parameters
argument0[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_factor] = 1;
argument0[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from]=argument0[@uiz_drawscrollbar_struct.uiz_dsb_scroll];
argument0[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to]=argument1

argument0[@uiz_drawscrollbar_struct.uiz_dsb_scroll] = argument1
/*
if sign(argument0)=1 then{
global.mousefrozen=0;
global.mousefrozensafety=0;
}
var updm=0;
var updated=uiz_drawscrollbar_getUpdated(argument0);
if updated<=3 then{
updm=0.005-updated/1000
}
return -1-floor(argument1)-abs(frac(argument0))-updm;
*/
