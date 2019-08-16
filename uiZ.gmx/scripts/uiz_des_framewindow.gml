if global.windowexists>0 and instance_exists(global.windowexists) then{
uiz_destroyobject_animation(global.windowexists,uiz_exponential_in,uiz_exponential_in,uiz_exponential_in,0.1)
}

frwin=uiz_window_create_animation(5,dp,3,dp,uiz_straight,uiz_straight,uiz_straight,0.1);
frwin.windowtext="frameset"
global.windowexists=frwin;
global.haswindow=id;
frset=uiz_frameset_create()
uiz_setparent(frset,frwin)
/*
frmix=uiz_framedivisionvertical(frset,0.65,fc,0.35,fc)
frleft=frmix.frameat[0];
frright=frmix.frameat[1];
frleftmix=uiz_framedivisionhorizontal(frleft,1,xtra,0.3,dp)
frmain=frleftmix.frameat[0];
frbottom=frleftmix.frameat[1];
frbottommix=uiz_framedivisionvertical(frbottom,3,fcy,1,xtra)
frbuttons=frbottommix.frameat[0];
frsettings=frbottommix.frameat[1];
*/
frmix=uiz_framedivisionhorizontal(frset,1,xtra,0.3,dp)
frmain=frmix.frameat[0];
frbottom=frmix.frameat[1];
//frtopmix=uiz_framedivisionvertical(frtop,0.65,fc,0.35,fc)
//frmain=frmix.frameat[0];
//frright=frmix.frameat[1];

frbottommix=uiz_framedivisionvertical(frbottom,3,fcy,1,xtra)
frbuttons=frbottommix.frameat[0];
frsettings=frbottommix.frameat[1];


uiz_fixframesetpos(frset)
xml=uiz_c(obj_uiZ_treelist)
xml.posinframex=uiz_fill
xml.posinframey=uiz_fill
//uiz_xml_empty(uxml)
if uiz_xml_isempty(uxml) then{
ini_open(obj_uiz_designer.ini)
/*
var l=ini_read_string(string(object.uiobject),"l","");
var d=ini_read_string(string(object.uiobject),"d","");
var v=ini_read_string(string(object.uiobject),"v","");
if l="" then{
uiz_xml_writetag_at(uxml,0,"horizontal","","divisions","1","size","1","sizetype",string(xtra),"name","frame: 1 xtra")
uiz_des_framewindow_save()
}else{
uiz_xml_addfile_string(uxml,l,d,v)}
*/
var f=ini_read_string(string(object.uiobject),"file","");
if f="" then{
f=string(obj_uiz_designer.ini)+"_"+string(date_current_datetime())+"_"+string(irandom(9999));
ini_write_string(string(object.uiobject),"file",f)
}
if !file_exists(f) then{
file_text_close(file_text_open_write(f))
}
uiz_xml_loadfile_addto(uxml,f)
ini_close()
}
//uxmlbelongsto=id
xml.usexml=uxml
//t.text="penis"
uiz_setparent(xml,frmain)

uiz_fixgeneralpos(xml)
frbut_add=uiz_easybutton_create(spr_uiZ_buttons_add)
frbut_add.posinframex=px
frbut_add.posvalx=0
frbut_add.posvalwtype=fcy
frbut_add.posvalw=1
frbut_add.posinframey=uiz_fill
uiz_setparent(frbut_add,frbuttons)
uiz_fixgeneralpos(frbut_add)

frbut_switch=uiz_easybutton_create(spr_uiZ_buttons_switch)
frbut_switch.posinframex=fcy
frbut_switch.posvalx=1
frbut_switch.posvalwtype=fcy
frbut_switch.posvalw=1
frbut_switch.posinframey=uiz_fill
uiz_setparent(frbut_switch,frbuttons)
uiz_fixgeneralpos(frbut_switch)


frbut_min=uiz_easybutton_create(spr_uiZ_buttons_min)
frbut_min.posinframex=fcy
frbut_min.posvalx=2
frbut_min.posvalwtype=fcy
frbut_min.posvalw=1
frbut_min.posinframey=uiz_fill
uiz_setparent(frbut_min,frbuttons)
uiz_fixgeneralpos(frbut_min)

//add boxes
frtxt_div=uiz_c(obj_uiZ_drawtext);
frtxt_div.posinframey=uiz_fill;
frtxt_div.posinframex=fc;
frtxt_div.posvalx=0
frtxt_div.posvalwtype=fc
frtxt_div.posvalw=1/6
frtxt_div.minvalue=1
frtxt_div.maxvalue=50
frtxt_div.text="divisions:"
uiz_setparent(frtxt_div,frsettings)
uiz_fixgeneralpos(frtxt_div)

frbox_div=uiz_c(obj_uiZ_valuebox);
frbox_div.posinframey=uiz_fill;
frbox_div.posinframex=fc;
frbox_div.posvalx=1/6
frbox_div.posvalwtype=fc
frbox_div.posvalw=1/12
frbox_div.minvalue=1
frbox_div.maxvalue=50
frbox_div.value=1;
uiz_setparent(frbox_div,frsettings)
uiz_fixgeneralpos(frbox_div)


//name
frtxt_name=uiz_c(obj_uiZ_drawtext);
frtxt_name.posinframey=uiz_fill;
frtxt_name.posinframex=fc;
frtxt_name.posvalx=1/4
frtxt_name.posvalwtype=fc
frtxt_name.posvalw=1/12
frtxt_name.minvalue=1
frtxt_name.maxvalue=50
frtxt_name.text="name:"
uiz_setparent(frtxt_name,frsettings)
uiz_fixgeneralpos(frtxt_name)

frbox_name=uiz_c(obj_uiZ_stringbox);
frbox_name.posinframey=uiz_fill;
frbox_name.posinframex=fc;
frbox_name.posvalx=1/3
frbox_name.posvalwtype=fc
frbox_name.posvalw=5/18
frbox_name.minvalue=1
frbox_name.maxvalue=50
//frbox_name.value=1;
uiz_setparent(frbox_name,frsettings)
uiz_fixgeneralpos(frbox_name)




frtxt_size=uiz_c(obj_uiZ_drawtext);
frtxt_size.posinframey=uiz_fill;
frtxt_size.posinframex=fc;
frtxt_size.posvalx=11/18
frtxt_size.posvalwtype=fc
frtxt_size.posvalw=1/12
frtxt_size.minvalue=0
frtxt_size.text="size:"
uiz_setparent(frtxt_size,frsettings)
uiz_fixgeneralpos(frtxt_size)

frbox_size=uiz_c(obj_uiZ_valuebox);
frbox_size.posinframey=uiz_fill;
frbox_size.posinframex=fc;
frbox_size.posvalx=25/36
frbox_size.posvalwtype=fc
frbox_size.posvalw=5/36
frbox_size.minvalue=0
frbox_size.value=0
uiz_setparent(frbox_size,frsettings)
uiz_fixgeneralpos(frbox_size)

frbox_type=uiz_c(obj_uiZ_dropdown);
frbox_type.posinframey=uiz_fill;
frbox_type.posinframex=fc;
frbox_type.posvalx=5/6
frbox_type.posvalwtype=fc
frbox_type.posvalw=3/18
frbox_type.uselist=global.fyconstantlist
frbox_type.masklist=global.fyconstantnamelist

uiz_setparent(frbox_type,frsettings)
uiz_fixgeneralpos(frbox_type)


/*
t=uiz_c(obj_uiZ_drawtext)
t.text="penis3"
uiz_setparent(t,frright)
uiz_fixgeneralpos(t)
*/

