///scroll=uiz_drawscrollbar_setvalue(scroll,newvalue)
/*
Changes how far a scrollbar has scrolled inside a scrollbar's "scroll" value.
The "scroll" value is the value used and returned by the normal uiz_drawscrollbar_ functions.
Set newvalue to the amount you want the scrollbar to be scrolled. Should be 0 or higher and lower than the "scrolllines" in uiz_drawscrollbar_. 

don't forget to call uiz_drawscrollbar_update to make sure the scrollbar displays the right values.
*/

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
