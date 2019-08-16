//do the destroyscaler
//NOT TRUE: returns true if it did nothing, false if it did something;
//if function_count>=0 then{
x=oldx+newx*uiz_animation_getfunction(function_count,function_x);
y=oldy+newy*uiz_animation_getfunction(function_count,function_y);
width=oldw+neww*uiz_animation_getfunction(function_count,function_w);
height=oldh+newh*uiz_animation_getfunction(function_count,function_h);
alpha=olda+newa*uiz_animation_getfunction(function_count,function_a);
