///uiz_animation_setpoint(animationid,attime,value,optional curvetype)
var a=uiz_animationto;
with(a){
var aid=argument[0];
var pnts=uiz_points[aid];
//dbm(aid,points)
for(var i=0;i<pnts;i++){
if uiz_apoint[aid,i]=argument[1] then{
//dbm(uiz_apoint[aid,i],i)
uiz_apointval[aid,i]=argument[2]
if argument_count>3 then{uiz_apointtype[aid,i]=argument[3]}
return 0;
}
}
if argument_count>3 then{
uiz_animation_addpoint_legacy(argument[0],argument[1],argument[2],argument[3])
}else{
uiz_animation_addpoint_legacy(argument[0],argument[1],argument[2])}
uiz_animation_sortpoints_legacy(argument[0])
}
