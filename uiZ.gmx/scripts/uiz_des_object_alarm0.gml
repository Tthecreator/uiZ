///init
ini=obj_uiz_designer.ini
//global.selobj=id//afobjlist[| gmtreelist.sel]

//frame=uiz_frameset_create()
//frame.width=0
//frame.height=0
//uiz_fixframepos(frame)
//dbm("hihi")
if (global.loadingobjects=1 or firstalarm=1)  and (updatelist=-1 or !ds_exists(updatelist,ds_type_list)) then{updatelist=ds_list_create()}
if (global.loadingobjects=1 or firstalarm=1) and (updaterlorstrlist=-1 or !ds_exists(updaterlorstrlist,ds_type_list)) then{updaterlorstrlist=ds_list_create()}
if (global.loadingobjects=1 or firstalarm=1) and (updatedefvallist=-1 or !ds_exists(updatedefvallist,ds_type_list)) then{updatedefvallist=ds_list_create()}
if (global.loadingobjects=1 or firstalarm=1) and (updatelistdecode=-1 or !ds_exists(updatelistdecode,ds_type_list)) then{updatelistdecode=ds_list_create()}
firstalarm=0
if ds_exists(itemlist,ds_type_list) then{ds_list_destroy(itemlist) itemlist=ds_list_create()}else{itemlist=ds_list_create()}
g=uiz_grid_create(2,1)
g.depth=-20
g.posinframex=uiz_fill;
g.posinframey=uiz_fill;
uiz_setParent(g,obj_uiz_designer.rightbarframe)
//uiz_setParent(g,frame)
uiz_fixgridpos(g)
uiz_setgridframes(g)
uiz_gridsize_row(g,0,1,px)
gridh=0
objecttextbox=uiz_des_addtolist_text("object:",string(object)+":"+string(id))
//create a box for the name
var pos=ds_list_find_index(obj_uiz_designer.aflist,object)
if pos>-1 then{
namebox=uiz_des_addtolist_string("name: ","name",obj_uiz_designer.afnamelist[| pos])
}else{
namebox=uiz_des_addtolist_string("name: ","name",string(object)+"_"+string(object_get_name(object_index)))}
//make a list
var pl=global.newparentlist;
var nl=global.newparentnamelist;
//sdbm("make a list!",pl,global.newparentlist,ds_list_size(pl))
ds_list_clear(pl)
ds_list_add(pl,obj_uiz_designer.af)
ds_list_clear(nl)
ds_list_add(nl,":controller:")
//sdbm("2make a list!",pl,global.newparentlist,ds_list_size(pl))
//copy new list
var cl=obj_uiz_designer.aflist;
var sz=ds_list_size(cl)
for(var i=0;i<sz;i++){
var val=cl[| i]
if val!=object and uiz_haschild(object,val)=0 then{
ds_list_add(pl,val)
ds_list_add(nl,obj_uiz_designer.afnamelist[| i])

}
}
parentbox=uiz_des_addtolist_parent("parent:","parent",-1)
if global.loadingobjects=0 then{
var op=object.parent;
var to=ds_list_find_index(pl,op);

if to=-1 and instance_exists(op) then{
//check if frame in frameset
if op.object_index=obj_uiZ_frame or op.object_index=obj_uiZ_framerowanchor or op.object_index=obj_uiZ_framecolanchor then{
to=uiz_ispartofframeset(op)
var to=ds_list_find_index(pl,to);
}
}

parentbox.selected=to;
}
xbox=uiz_des_addtolist_val("x:","x",0)
ybox=uiz_des_addtolist_val("y:","y",0)
xtypebox=uiz_des_addtolist_list("xtype:","posvalxtype",px,global.xconstantlist,global.xconstantnamelist)
ytypebox=uiz_des_addtolist_list("ytype:","posvalytype",px,global.yconstantlist,global.yconstantnamelist)
//widthbox=uiz_des_addtolist_pos("width:","posvalw",0,"posvalwtype",px)
//heightbox=uiz_des_addtolist_pos("height:","posvalh",0,"posvalhtype",px)
widthbox=uiz_des_addtolist_val("width:","posvalw",0)
heightbox=uiz_des_addtolist_val("height:","posvalh",0)
//widhttypebox
widthtypebox=uiz_des_addtolist_list("wtype:","posvalwtype",px,global.fxconstantlist,global.fxconstantnamelist)
heighttypebox=uiz_des_addtolist_list("htype:","posvalhtype",px,global.fyconstantlist,global.fyconstantnamelist)
setpointxbox=uiz_des_addtolist_list("set point X:","setpointx",0,global.xcenterconstantlist,global.xcenterconstantnamelist)
setpointybox=uiz_des_addtolist_list("set point Y:","setpointy",0,global.ycenterconstantlist,global.ycenterconstantnamelist)
//widhttypebox=uiz_des_addtolist_list("wtype:","posvalwtype",px,global.fxconstantlist,global.fxconstantnamelist)
