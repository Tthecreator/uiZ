///uiz_des_addtolist_color(text,updatetype,isstring,defaultvalue)
uiz_grid_addrow(g)
var o,t;
o=instance_create(0,0,obj_uiZ_colorbox)
uiz_setParent(o,uiz_gridObject(g,1,g.gridh-1))
uiz_gridSize_row(g,g.gridh-1,0.26,dp)
o.posinframex=uiz_fill
o.width=uiz_getposx(1,dp)
o.height=uiz_getposx(0.25,dp)
uiz_fixgeneralpos(o)
ds_list_add(itemlist,o)
o.updatetype=argument1
o.rlorstr=argument2
o.defval=argument3
t=instance_create(0,0,obj_uiZ_drawtext)
t.text=argument0
t.x=5
uiz_setParent(t,uiz_gridObject(g,0,g.gridh-1))
uiz_fixgeneralpos(t)

return o;
