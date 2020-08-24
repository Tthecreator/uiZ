///uiz_des_addtolist_pos(text,updatetype,isstring,defaultvalue,typeupdatetype,typeisstring,typedefaultvalue)
uiz_grid_addrow(g)
var o,t,k;
o=instance_create(0,0,obj_uiZ_valuebox)
uiz_setParent(o,uiz_gridobject(g,1,g.gridh-1))
uiz_gridsize_row(g,g.gridh-1,0.26,dp)
o.posinframex=uiz_snapleft
o.posvalw=0.75
o.posvalwtype=fc
//o.width=uiz_getposx(1,dp)
o.height=uiz_getposx(0.25,dp)
uiz_fixgeneralpos(o)
k=instance_create(0,0,obj_uiZ_dropdown)
k.posinframex=uiz_snapright
k.posvalw=0.25
k.posvalwtype=fc
k.height=uiz_getposx(0.25,dp)
k.uselist=obj_uiz_designer.postypelist
k.buttonmargin=0
k.trianglemargin=0
k.containtext=0
uiz_setParent(k,uiz_gridobject(g,1,g.gridh-1))
uiz_fixgeneralpos(k)
ds_list_add(itemlist,o)
ds_list_add(itemlist,k)
o.updatetype=argument1
o.rlorstr=argument2
o.defval=argument3
k.updatetype=argument4
k.rlorstr=argument5
k.defval=argument6
t=instance_create(0,0,obj_uiZ_drawtext)
t.text=argument0
t.x=5
uiz_setParent(t,uiz_gridobject(g,0,g.gridh-1))
uiz_fixgeneralpos(t)

return o;
