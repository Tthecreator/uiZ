///uiz_setgridframes(grid)
/*
Fills a grid up with frames so every time you call uiz_gridobject() it will return the instance id of a obj_uiZ_frame.
ONLY CALL THIS SCRIPT ONCE AFTER CREATING THE GRID.
It might be slightly more performance intensive if you use frames (uiz_setgridframes()) for everything if you just like to have a row of buttons or something.
In that case uiz_setgridobject uiz_setgrid_custom might be a better solution. 
*/
var g=argument0;

var framew=((g.parent.width-g.marginl-g.marginr)/g.gridw);
var frameh=((g.parent.height-g.margint-g.marginb)/g.gridh);
for(var i=0;i<g.gridh;i++){
for(var e=0;e<g.gridw;e++){
if g.generated=0 then{
var f=uiz_frame_create();
g.gridobject[e,i]=f
if e=0 then{
uiz_gridsize_row(g,i,1,xtra)
}
if i=0 then{
uiz_gridsize_col(g,e,1,xtra)
}
}else{
f=g.gridobject[e,i]
}
//f.parent=g
uiz_setparent(f,g)
f.x=e*(framew)+g.marginl+g.margincellw
f.y=i*(frameh)+g.margint+g.margincellh
f.width=framew-g.margincellw*2
f.height=frameh-g.margincellh*2
uiz_fixframepos(f)
}
}
g.generated=1

