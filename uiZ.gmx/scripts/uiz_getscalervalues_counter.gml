//do the destroyscaler
//returns true if animation is over, false if animation is stil ongoing
//if function_count>=0 then{
//sdbm("getting new scaler values",function_count,function_time)
if live_call() return live_result;
function_count=clamp(function_count+uiz_sc(function_time),0,1);
uiz_getscalervalues();
uiz_fix_Base_Pos_Values();
uiz_fix_Base_View();
uiz_fix_Base_iValues();
if animation_updatechildren and (destroy!=1 or function_count<1) then{
    uiz_fixchildren(id,true);
}
uiz_updater_FixViews();
if function_count=1 then{
function_count=-1;
if destroy=1 then{
//uiz_updater_FixViews_area(last_cntnx,last_cntny,last_cntnlx,last_cntnly);
//sdbm("updating with",cntnx,cntny,cntnlx,cntnly)
//room_speed = 30;
uiz_destroyObject(id);
}
return true;
}
return false;
//return false;
//}else{return true;}
