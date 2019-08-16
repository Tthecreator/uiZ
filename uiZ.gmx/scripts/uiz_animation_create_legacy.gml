///uiz_animation_create(animationtimepoints) returns animationid
//if argument_count=2 then{a=argument[1]}else{a=id}
a=uiz_animationto
var aid=a.uiz_animations;
a.uiz_animations++
a.uiz_points[aid]=1
a.uiz_apoint[aid,0]=0
a.uiz_apoint[aid,1]=argument0
a.uiz_apointval[aid,0]=0
a.uiz_apointval[aid,1]=1
a.uiz_apointtype[aid,0]=uiz_straight
a.uiz_apointtype[aid,1]=uiz_straight
a.uiz_lastpoint[aid]=argument0
a.uiz_lastpointval[aid]=0
a.uiz_asize[aid]=argument0
return aid;
