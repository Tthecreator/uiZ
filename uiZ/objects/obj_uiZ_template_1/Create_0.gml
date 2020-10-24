/// @description create base of template
//init uiz
uiz_init()
//setup frameset
frameset=uiz_frameset_create()
//uiz_setParent(frameset,frame_test)
anchor_1=uiz_frameset_divide_horizontal(frameset,1,dp,1,xtra)
//get the top bar (the first frame, so array index 0)
frame_topbar=anchor_1.frameat[0]
//make the topbar draw a color
frame_topbar.markcolor=uiz_html2color($ffc107)//indigo color
frame_topbar.mark=true//make it markable
//add shadow
frame_topbar.shadow=true
frame_topbar.shadowL=0;
frame_topbar.shadowR=0;
frame_topbar.shadowT=0;
//give it some depth to make it in the front.
frame_topbar.depth=-1000
//get the bottom part to put our ui in (the second frame, so array index 1)
frame_main=anchor_1.frameat[1]
//fix frameset
uiz_fixgeneralpos(frameset)
//add text
apptext=uiz_c(obj_uiZ_text)
uiz_setParent(apptext,frame_topbar)
apptext.posinframex=px
apptext.posvalx=20
apptext.posvalw=0.5
apptext.posvalwtype=fc
apptext.posinframey=uiz_snaptop
apptext.posvalh=0.5
apptext.posvalhtype=fc
apptext.halign=fa_left;
apptext.valign=fa_middle;
apptext.text="Template 1"
uiz_fixgeneralpos(apptext)

//add a menubutton
menubutton=uiz_c(obj_uiZ_menubutton)
uiz_setParent(menubutton,frame_topbar)
menubutton.posinframex=uiz_snapright
menubutton.posinframey=uiz_snaptop
menubutton.posvalw=0.5
menubutton.posvalwtype=fcy
menubutton.posvalh=0.5
menubutton.posvalhtype=fcy
menulist=ds_list_create()
ds_list_add(menulist,"a","b","whatever")
menubutton.dslist=menulist;
menubutton.color_over=c_red;
uiz_fixgeneralpos(menubutton)

tabslider=uiz_c(obj_uiZ_tabslider)
uiz_setParent(tabslider,frame_topbar)
tabslider.posinframex=uiz_fill
tabslider.posinframey=uiz_snapbottom
tabslider.posvalh=0.5
tabslider.posvalhtype=fc
tablist=ds_list_create()
ds_list_add(tablist,"exampletab1","exampletab2","exampletab3")
tabslider.tablist=tablist;
uiz_fixgeneralpos(tabslider)

sliderstruct=uiz_c(obj_uiZ_sliderstruct)
uiz_setParent(sliderstruct,frame_main)
sliderstruct.posinframex=uiz_fill
sliderstruct.posinframey=uiz_fill
sliderstruct.frames=2;
sliderstruct.tabslider=tabslider;
uiz_fixgeneralpos(sliderstruct)

