//sdbm("framewindow_paretn!")
if argument0.object_index=obj_uiZ_frameset then{
var tat=ds_list_find_index(obj_uiz_designer.aflist,argument0)
if tat>-1 then{
var t=obj_uiz_designer.afobjlist[| tat]
//with(argument0){
global.windowisfrom=id;
with(t){
if global.windowexists>0 and instance_exists(global.windowexists) then{
uiz_destroyobject_animation(global.windowexists,uiz_exponential_in,uiz_exponential_in,uiz_exponential_in,0.1)
}
//var t=argument0
frwin=uiz_window_create_animation(5,dp,3,dp,uiz_straight,uiz_straight,uiz_straight,0.1);
frwin.windowtext="frameset"
global.windowexists=frwin;
global.haswindow=id+0.1;
frset=uiz_frameset_create()
uiz_setparent(frset,frwin)

frmix=uiz_frameset_divide_horizontal(frset,1,xtra,0.3,dp)
frmain=frmix.frameat[0];
frbottom=frmix.frameat[1];

/*
frbottommix=uiz_frameset_divide_vertical(frbottom,3,fcy,1,xtra)
frbuttons=frbottommix.frameat[0];
frsettings=frbottommix.frameat[1];
*/



uiz_fixframesetpos(frset)
xml=uiz_c(obj_uiZ_treelist)
xml.posinframex=uiz_fill
xml.posinframey=uiz_fill
uiz_xml_empty(t.uxml)
ini_open(obj_uiz_designer.ini)
var f=ini_read_string(string(object.uiobject),"file","");
if f="" then{
f=string(obj_uiz_designer.ini)+"_"+string(date_current_datetime())+"_"+string(irandom(9999));
ini_write_string(string(object.uiobject),"file",f)
}
f="uiz_savefiles\"+f
if !file_exists(f) then{
file_text_close(file_text_open_write(f))
}
uiz_xml_loadfile_addto(t.uxml,f)
ini_close()
//global.xmlbelongsto=id
xml.usexml=t.uxml
uiz_setparent(xml,frmain)
uiz_fixgeneralpos(xml)
frbut_check=uiz_easybutton_create(spr_uiZ_buttons_check)
frbut_check.posinframex=uiz_snapright
//frbut_check.posvalx=0
frbut_check.posvalwtype=fcy
frbut_check.posvalw=1
frbut_check.posinframey=uiz_fill
uiz_setparent(frbut_check,frbottom)
uiz_fixgeneralpos(frbut_check)




}
}}
