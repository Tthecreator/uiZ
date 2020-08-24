///uiz_des_addtolist_text(text,defaultvalue)
if global.loadingobjects=0 then{
uiz_grid_addrow(g)
var o,t;
o=instance_create(0,0,obj_uiZ_drawtext)
uiz_setParent(o,uiz_gridobject(g,1,g.gridh-1))
uiz_gridsize_row(g,g.gridh-1,0.26,dp)
//o.posinframex=uiz_fill
//o.x=0
uiz_fixgeneralpos(o)
//ds_list_add(itemlist,o)
//o.updatetype=argument1
//o.rlorstr=argument2
//o.rlorstr=1
o.text=string(argument1)
t=instance_create(0,0,obj_uiZ_drawtext)
t.text=argument0
t.x=5
uiz_setParent(t,uiz_gridobject(g,0,g.gridh-1))
uiz_fixgeneralpos(t)

return o;
}else{

return 0;
}
