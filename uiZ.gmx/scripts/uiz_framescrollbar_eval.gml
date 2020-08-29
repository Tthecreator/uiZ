///uiz_framescrollbar_eval(instanceid)
//reevaluates how far the bar is able to scroll.
//this script is also called when fixing the framescrollbar (uiz_fixgeneralpos(framescrollbar))
//you should call this script whenever you apply changes to the frame and/or items within
//if you don't want to you can set it to check every step with: uiz_framescrollbar_setStepEval()
with(argument0){
if instance_exists(frame) then{
if horizontal=false then{
scrolllines=uiz_getMaxYScrollInObject(frame)
if lastadd!=frame.addy then{
scroll=floor(clamp(-(frame.addy),0,scrolllines))
lastadd=frame.addy;
}
/*
frame.addy=-clamp(scroll,0,scrolllines);
if lastadd!=frame.addy then{lastadd=frame.addy}
uiz_fixchildren(frame,true)
*/
}else{
scrolllines=uiz_getMaxXScrollInObject(frame)
if lastadd!=frame.addx then{
scroll=floor(clamp(-(frame.addx),0,scrolllines))
lastadd=frame.addx;
}
/*
frame.addx=-clamp(scroll,0,scrolllines);
if lastadd!=frame.addx then{lastadd=frame.addx}
uiz_fixchildren(frame,true)
*/
}
}else{scrolllines=0;}
}
uiz_drawscrollbar_setvalue(uscroll,scroll)
