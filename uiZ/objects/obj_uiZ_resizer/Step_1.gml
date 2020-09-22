count+=uiz_sc(countspeed)
count=clamp(count,0,1)
var o=toobject;

if animationtype=uiz_animationtype_multi then{
progress=uiz_animation_get_legacy(graph,count)
}else{
progress=uiz_animation_getFunction(count,graph)
}
o.posinframex=uiz_static
o.posinframey=uiz_static
o.x=fromx+(tox-fromx)*progress
o.y=fromy+(toy-fromy)*progress
o.width=fromwidth+(towidth-fromwidth)*progress
o.height=fromheight+(toheight-fromheight)*progress
//sdbm(o.width,o.height,fromwidth,towidth,progress)
uiz_fixgeneralpos(o)
//sdbm(o.width,o.height,fromwidth,towidth,progress,"THISIS2")
if count>=1 then{isdone=1
o.posinframex=toposinframex
o.posinframey=toposinframey
o.setpointx=tosetpointx
o.setpointy=tosetpointy
uiz_fixgeneralpos(o)
}

