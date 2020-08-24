///uiz_des_addtolist_list(text,updatetype,defaultvalue,list,masklist)
if global.loadingobjects=0 then{
uiz_grid_addrow(g)
var o,t;
o=instance_create(0,0,obj_uiZ_dropdown)
o.uselist=argument[3];
o.masklist=argument[4];
o.select=ds_list_find_index(argument[3],argument[2])
o.selected=o.select;
o.value=argument[3]
uiz_setParent(o,uiz_gridobject(g,1,g.gridh-1))
uiz_gridsize_row(g,g.gridh-1,0.26,dp)
o.posinframex=uiz_fill
o.width=uiz_getposx(1,dp)
o.height=uiz_getposx(0.25,dp)
uiz_fixgeneralpos(o)
ds_list_add(itemlist,o)
o.updatetype=argument[1]
//o.rlorstr=argument2
o.rlorstr=0
//o.defval=argument2
o.defval=o.select
//if argument3=global.texscriptconstantlist then{sdbm("setting list defval to --------------------------------------",o.select)}
t=instance_create(0,0,obj_uiZ_drawtext)
t.text=argument[0]
t.x=5
uiz_setParent(t,uiz_gridobject(g,0,g.gridh-1))
uiz_fixgeneralpos(t)

return o;
}else{
ds_list_add(updatelist,argument[1])
ds_list_add(updaterlorstrlist,0)
ds_list_add(updatedefvallist,ds_list_find_index(argument[3],argument[2]))
if argument_count>=6 then{
ds_list_add(updatelistdecode,argument[5])
}else{
ds_list_add(updatelistdecode,-1)
}
return 0;
}
