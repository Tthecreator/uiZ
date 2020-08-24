///uiz_setgrid_custom(grid,script)
/*
Fills a grid up with certain objects. It will do this by checking the return value of a script specified at argument1.
Your script gets 2 arguments: and x and a y value which start at zero and go up to your gridw/h minus 1.
From these 2 values you will need to make your script return a valid INSTANCE ID, NOT an object_index.
This instance id must be different for every value inputted to the script or else conflicts can occour. You can use uiz_c() to create instances.
This script is mainly useful if you want to have one row filled up with a certain type of object and another row with another.
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
var f=script_execute(argument1,e,i);
f.iscover=0;
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
uiz_setParent(f,g)
f.x=round(e*(framew)+g.marginl+g.margincellw)
f.y=round(i*(frameh)+g.margint+g.margincellh)
f.width=round(framew-g.margincellw*2)
f.height=round(frameh-g.margincellh*2)
uiz_fixgeneralpos(f)
}
}
g.generated=1

