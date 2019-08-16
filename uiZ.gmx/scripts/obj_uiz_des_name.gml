var pos=ds_list_find_index(obj_uiz_designer.aflist,argument0)
if pos>-1 then{
//var afnamelist=obj_uiz_designer.afnamelist;
var a=uiz_getvalidvariablename(argument1)
//check if name already exists
var ta=a
var p=ds_list_find_index(obj_uiz_designer.afnamelist,ta)
var digits=3;
var tries=0;
while(p>-1 and p!=pos){
ta=string(a)+"_"+string(uiz_generaterandomdigits(digits));
//ta="penis"
//dbm("p",p,pos,ta+"_end")
p=ds_list_find_index(obj_uiz_designer.afnamelist,ta)
tries++;
if tries=100 then{tries=0; digits++;}
}
//a=ta;
//sdbm("setting name!")
name=ta;
//ini_open(ini)
ini_write_string(string(object.uiobject),"name",ta)
//ini_close()
if global.loadingobjects=0 then{
namebox.value=ta
namebox.qstr=""
}
obj_uiz_designer.afnamelist[| pos]=ta;
//sdbm("ajustring stuff")
return ta;
}
return "";
