///uiz_des_addtolist_string(text,updatetype,defaultvalue)
if global.loadingobjects=0 then{
uiz_grid_addrow(g)
var o,t;
o=instance_create(0,0,obj_uiZ_stringbox)
uiz_setparent(o,uiz_gridobject(g,1,g.gridh-1))
uiz_gridsize_row(g,g.gridh-1,0.26,dp)
o.posinframex=uiz_fill
o.width=uiz_getposx(1,dp)
o.height=uiz_getposx(0.25,dp)
uiz_fixgeneralpos(o)
ds_list_add(itemlist,o)
o.updatetype=argument1
o.rlorstr=true
o.defval=argument2
t=instance_create(0,0,obj_uiZ_drawtext)
t.text=argument0
t.x=5
uiz_setparent(t,uiz_gridobject(g,0,g.gridh-1))
uiz_fixgeneralpos(t)

return o;
}else{
ds_list_add(updatelist,argument1)
ds_list_add(updaterlorstrlist,true)
ds_list_add(updatedefvallist,argument2)
ds_list_add(updatelistdecode,-1)
return 0;
}
