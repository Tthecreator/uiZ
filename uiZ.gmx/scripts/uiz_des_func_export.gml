#define uiz_des_func_export
with(obj_uiz_designer){

exporttext="///script_name([inwhat])
//This script has been generated using the uiZ designer tool.
//takes an optional argument that allows you to put this in a frame for example.
if argument_count>0 and instance_exists(argument[0]) then{
var o=argument[0];
}else{
var o=obj_uiZ_controller.id;
}
"
//open ini and find a good order
var orderlist=ds_list_create()
var preorderlist=ds_list_create()
var orderlisted=ds_list_create()
ini_open(ini)
for(var i=0;i<uiobjects;i++){
//look at parents
orderlisted[|i]=0;
var p=ini_read_real(string(i),"parent",-1)
ds_list_add(preorderlist,p)
//if p=-1 or p>=i then{ds_list_insert(orderlist,0,i)}else{
//if p<i then{ds_list_add(orderlist,i)}
}
//scan trough objects
for(var i=0;i<uiobjects;i++){
if preorderlist[|i]>-1 and orderlisted[|i]=0 then{
uiz_des_func_export_part(preorderlist,orderlist,orderlisted,i)
}
}
//add loose objects to end
for(var i=0;i<uiobjects;i++){
if preorderlist[|i]=-1 then{ds_list_add(orderlist,i)}
}
//now a parentorder list has been created.

//write data
for(var i=0;i<uiobjects;i++){
//start writing out data for uiz defaults.
uiz_exportobject=orderlist[|i];
uiz_exportobjectstring=string(uiz_exportobject);
var pnaam=+Zfes("name",Zfes("object","obj_uiZ_testobject"+string(irandom(1410065407))));
naam="UIZ_"+pnaam;
exporttext+=
"//Handling the object '"+naam+"' of index '"+Zfes("object","obj_uiZ_testobject")+"'
"+naam+"=uiz_c("+Zfes("object","obj_uiZ_testobject")+")
"+uiz_des_func_export_getparent()+"
"+naam+".posinframex="+uiz_des_getconststring_values(real(Zfes("posvalxtype","0")))+"
"+naam+".posinframey="+uiz_des_getconststring_values(real(Zfes("posvalytype","0")))+"
"+naam+".posvalwtype="+uiz_des_getconststring(real(Zfes("posvalwtype","0")))+"
"+naam+".posvalhtype="+uiz_des_getconststring(real(Zfes("posvalwtype","0")))+"
"+naam+".posvalx="+Zfes("x","0")+"
"+naam+".posvaly="+Zfes("y","0")+"
"+naam+".posvalw="+Zfes("posvalw","0")+"
"+naam+".posvalh="+Zfes("posvalh","0")+"
"
//get any object's des object
var objname=Zfes("object","obj_uiZ_testobject");
if string_copy(objname,1,8)="obj_uiZ_" then{
var newobject=asset_get_index("obj_uiz_des_"+string_copy(objname,9,string_length(objname)-8))
//if newobject>-1 then{selobj=instance_create(0,0,newobject); break;}
}else{newobject=obj_uiz_des_empty}
if newobject>-1 and instance_exists(newobject) then{
var o=newobject;
//add extra stuff defined in shadowobjects
//sdbm("o:",o,"obj_uiz_des_"+string_copy(objname,9,string_length(objname)-8))
var nsz=ds_list_size(o.updatelist)
var rsz=ds_list_size(o.updaterlorstrlist)
var dsz=ds_list_size(o.updatedefvallist)
sz=min(nsz,rsz,dsz)
for(var e=0;e<sz;e++){
var n=string(o.updatelist[|e])
var r=o.updaterlorstrlist[|e]
var d=o.updatedefvallist[|e]
var l=o.updatelistdecode[|e]
//sdbm("listdecode:", l,n)
//blacklist some items
if uiz_des_func_export_blacklisted(n)=false then{
if r=0 then{
if l=-1 or !ds_exists(abs(l),ds_type_list) then{
//for reals
exporttext+=naam+"."+n+"="+string(real(Zfes(n,string(d))))+"
"//a new line is supposed to be here
}else{
//sdbm("getting the l")
if l<0 then{
l=abs(l)
//for reals
exporttext+=naam+"."+n+"="+script_get_name(l[| real(Zfes(n,string(d)))])+"
"//a new line is supposed to be here
}else{
//for reals
exporttext+=naam+"."+n+"="+string(l[| real(Zfes(n,string(d)))])+"
"//a new line is supposed to be here
}
}
}else{
//for strings
//var urgstr=Zfes(n,d);
//dbm(Zfes(n,d))
var urgstr=uiz_string_replace(Zfes(n,d),"'","'"+'+"'+"'"+'"+'+"'");
//dbm(urgstr)
exporttext+=naam+"."+n+"='"+urgstr+"'
"//an new line is supposed to be here
}
}
}
}
exporttext+="uiz_fixgeneralpos("+naam+")


"
//*/
}
ini_close()
clipboard_set_text(exporttext)
//dbm("just saved!",orderlist)
uiz_popup_ok("A gml script has been exported to your clipboard#You can now paste it inside a script inside of your game maker project.","export complete",1)
uiz_destroydslist(orderlist)
uiz_destroydslist(preorderlist)
uiz_destroydslist(orderlisted)





}

#define uiz_des_func_export_getparent
//var par=""
var par1=Zfes("parent","-1");
if real(par1)=-1 then{
return "if argument_count>0 then{uiz_setParent("+naam+",o)}"
}else{
if Zfeso("object","",string(real(par1)))="obj_uiZ_frameset" then{
var par1=Zfes("parentinframe","")
if par1="" then{
return "if argument_count>0 then{uiz_setParent("+naam+",o)}"
}else{
return "
uiz_setParent("+naam+",UIZ_"+par1+")"
}
}else{//sdbm("par1!1",par1)
par1=Zfeso("name","",string(real(par1)))
//sdbm("par1!",par1)
if par1!="" then{
return "uiz_setParent("+naam+",UIZ_"+par1+")"
}else{
return "if argument_count>0 then{uiz_setParent("+naam+",o)}"
}
}
}


#define uiz_des_func_export_part
///uiz_des_func_export_part(preorderlist,orderlist,orderlisted,pos)
var preorderlist=argument0
var orderlist=argument1
var orderlisted=argument2
var i=argument3
if orderlisted[|i]=0 then{
if preorderlist[|i]>-1 then{
uiz_des_func_export_part(preorderlist,orderlist,orderlisted,preorderlist[|i])
}
ds_list_add(orderlist,i)
orderlisted[|i]=1;
}

#define Zfes
///Zfes(name,default)
//script used for exporting scripts in uiz
gml_pragma("forceinline");
return ini_read_string(uiz_exportobjectstring,argument0,argument1)

#define Zfeso
///Zfeso(name,default,who)
//script used for exporting scripts in uiz
gml_pragma("forceinline");
return ini_read_string(argument2,argument0,argument1)

#define uiz_des_func_export_blacklisted
var a=argument0
if a="parent" or a="name" or a="x" or a="y" or a="posvalxtype" or a="posvalytype" or a="posvalx" or a="posvaly" or a="posvalw" or a="posinframex" or a="posinframey" or a="posvalwtype" or a="posvalh" or a="posvalhtype" then{return true;}else{return false;}