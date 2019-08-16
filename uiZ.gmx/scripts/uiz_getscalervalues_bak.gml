//do the destroyscaler
//if object_index=obj_uiZ_mousemenu then{sdbm(destroy)}
if destroy>=1 then{
//sdbm("executing destroy")
//destroy+=destroyspeed
destroy+=uiz_sc(destroyspeed)

var scale=uiz_animation_getfunction(clamp(destroy-1,0,1),destroyyfunction);
//var oldh=height;
height=oldh*(1-scale);
y=oldy+(oldh-height)/2


//destroy+=destroyspeed
var scale=uiz_animation_getfunction(clamp(destroy-1,0,1),destroyxfunction);
//sdbm(scale)
//var oldh=width;
width=oldw*(1-scale);
x=oldx+(oldw-width)/2
//sdbm("setting x",x,width)
//alpha
var scale=1-uiz_animation_getfunction(clamp(destroy-1,0,1),destroyafunction);
head_alpha=olda*scale
//sdbm("executing fixchildren",id)
if object_index!=obj_uiZ_windowholder then{
uiz_fixchildren(id,1)}
//sdbm("executed fixchildren")
if destroy>=2 then{uiz_destroyobject(id)}
updatenextstep=1
//sdbm("executed destroy")
}
if destroy<=-1 then{
//destroy-=destroyspeed
destroy-=uiz_sc(destroyspeed)
var d=1-(2+destroy)
//sdbm("d",d)
//var d=2+destroy

var scale=uiz_animation_getfunction(clamp(d,0,1),destroyyfunction);
//sdbm("d1",scale)
//sdbm(d,destroy,scale)
//var oldh=height;
height=oldh*scale
y=oldy+(oldh-height)/2

var scale=uiz_animation_getfunction(clamp(d,0,1),destroyxfunction);
//sdbm("d2",scale)
//var oldw=width;
width=oldw*scale;
x=oldx+(oldw-width)/2

var scale=uiz_animation_getfunction(clamp(d,0,1),destroyafunction);
//sdbm("d3",scale)
head_alpha=olda*scale
//sdbm("final",height,y,width,x,head_alpha)
if destroy<=-2 then{destroy=0
head_alpha=olda;
width=oldw
height=oldh
y=oldy
x=oldx
updatenextstep=1
}else{updatenextstep=1}


}
