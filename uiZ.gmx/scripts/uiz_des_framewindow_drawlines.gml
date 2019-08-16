var t=argument0;

if t.object_index=obj_uiZ_frameset then{t=t.headframe}
//sdbm("DRAWLINES!",t,t.divisions)
if t.object_index=obj_uiZ_framerowanchor or t.object_index=obj_uiZ_framecolanchor then{
for(var i=0;i<t.divisions;i++){
var f=t.frameat[i];
//sdbm("DRAWLINESsqr!",t,f)
draw_rectangle(f.rx,f.ry-argument1,f.rlx,f.rly-argument1,1)
if f.object_index=obj_uiZ_framerowanchor or f.object_index=obj_uiZ_framecolanchor then{
uiz_des_framewindow_drawlines(f,argument1)
}
}
}
