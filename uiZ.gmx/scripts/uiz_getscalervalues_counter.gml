//do the destroyscaler
//returns true if animation is over, false if animation is stil ongoing
//if function_count>=0 then{
function_count=clamp(function_count+uiz_sc(function_time),0,1);
uiz_getscalervalues();
uiz_fix_Base_Pos_Values();
uiz_fix_Base_View();
uiz_fix_Base_iValues();
if animation_updatechildren and (destroy!=1 or function_count<1) then{uiz_fixchildren(id,true)}
if function_count=1 then{
function_count=-1;
if destroy=1 then{
uiz_destroyobject(id)
}
return true;
}
return false;
//return false;
//}else{return true;}
