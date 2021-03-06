uiz_init()
window=uiz_window_create(600,px,400,px)
window.windowtext="Servers"
uiz_fixgeneralpos(window);

frameset=uiz_frameset_create();
uiz_setParent(frameset,window)
frameset.posinframex=uiz_fill;
frameset.posinframey=uiz_fill;
frameanchor=uiz_frameset_divide_horizontal(frameset,25,px,1,xtra,30,px,90,px,30,px)
frame_bar=frameanchor.frameat[0];
frame_list=frameanchor.frameat[1];
frame_tags=frameanchor.frameat[2];
frame_settings=frameanchor.frameat[3];
frame_actions=frameanchor.frameat[4];

//add the tab bar
tabbar=uiz_c(obj_uiZ_tabs);
uiz_setParent(tabbar,frame_bar);
tablist=ds_list_create()
ds_list_add(tablist,"Internet","Favorites","History","Spectate","Lan","Friends","Blacklisted Servers")
tabbar.tablist=tablist;
tabbar.posinframex=uiz_fill;
tabbar.posinframey=uiz_fill;
uiz_fixgeneralpos(tabbar)
//add the serverlist

serverlist=uiz_c(obj_uiZ_gridlist)
uiz_setParent(serverlist,frame_list);
serveritemlist=ds_list_create();
ds_list_add(serveritemlist,spr_uiZ_lock,spr_uiZ_shield,spr_uiZ_movie,"ServerName","Game","Players","Bots","Map","Latency")
maingrid=ds_grid_create(9,3)
serverlist.maingrid=maingrid
//uiz_gridlist_selectionmode(serverlist,uiz_gridlist_selection_cell, true);
ds_grid_set(maingrid,0,0,spr_uiZ_lock)
ds_grid_set(maingrid,1,0,false)
ds_grid_set(maingrid,2,0,true)
ds_grid_set(maingrid,3,0,"[NL]Server superfun")
ds_grid_set(maingrid,4,0,"Capture the flag")
ds_grid_set(maingrid,5,0,"20/24")
ds_grid_set(maingrid,6,0,"no")
ds_grid_set(maingrid,7,0,"ctf_downhill")
ds_grid_set(maingrid,8,0,"666")

ds_grid_set(maingrid,0,1,true)
ds_grid_set(maingrid,1,1,false)
ds_grid_set(maingrid,2,1,false)
ds_grid_set(maingrid,3,1,"[IN]TROL SERVER")
ds_grid_set(maingrid,4,1,"Teabagging")
ds_grid_set(maingrid,5,1,"5/6")
ds_grid_set(maingrid,6,1,"yes")
ds_grid_set(maingrid,7,1,"trol_face")
ds_grid_set(maingrid,8,1,"123")

ds_grid_set(maingrid,0,2,false)
ds_grid_set(maingrid,1,2,true)
ds_grid_set(maingrid,2,2,true)
ds_grid_set(maingrid,3,2,"[US]PROTEST SERVER")
ds_grid_set(maingrid,4,2,"Protest")
ds_grid_set(maingrid,5,2,"120/245")
ds_grid_set(maingrid,6,2,"no")
ds_grid_set(maingrid,7,2,"pts_death")
ds_grid_set(maingrid,8,2,"2")

//server
serverlist.posinframex=uiz_fill;
serverlist.posinframey=uiz_fill;
serverlist.mainlist=serveritemlist
uiz_fixgeneralpos(serverlist)



//add the tag and workshop bar
tagsanchor=uiz_frameset_divide_vertical(frame_tags,60,px,1,xtra,40,px,1,xtra,1,xtra,1,xtra)

text_workshop=uiz_c(obj_uiZ_text)
uiz_setParent(text_workshop,tagsanchor.frameat[0])
text_workshop.posinframex=uiz_fill;
text_workshop.posinframey=uiz_fill;
text_workshop.text="Workshop";
text_workshop.valign=fa_middle;
uiz_fixgeneralpos(text_workshop)

dropdown_workshop=uiz_c(obj_uiZ_dropdown)
uiz_setParent(dropdown_workshop,tagsanchor.frameat[1])
dropdown_workshop.posinframex=uiz_fill;
dropdown_workshop.posinframey=uiz_fill;
workshoplist=ds_list_create()
ds_list_add(workshoplist,"<All>","Workshop maps","Subscribed")
dropdown_workshop.uselist=workshoplist;
uiz_fixgeneralpos(dropdown_workshop)


text_Tags=uiz_c(obj_uiZ_text)
uiz_setParent(text_Tags,tagsanchor.frameat[2])
text_Tags.posinframex=uiz_fill;
text_Tags.posinframey=uiz_fill;
text_Tags.text="Tags";
text_Tags.valign=fa_middle;
uiz_fixgeneralpos(text_Tags)

dropdown_tags=uiz_c(obj_uiZ_dropdown)
uiz_setParent(dropdown_tags,tagsanchor.frameat[3])
dropdown_tags.posinframex=uiz_fill;
dropdown_tags.posinframey=uiz_fill;
tagslist=ds_list_create()
ds_list_add(tagslist,"do not include","include")
dropdown_tags.uselist=tagslist;
uiz_fixgeneralpos(dropdown_tags)

stringbox_tags=uiz_c(obj_uiZ_stringbox)
uiz_setParent(stringbox_tags,tagsanchor.frameat[4])
stringbox_tags.posinframex=uiz_fill;
stringbox_tags.posinframey=uiz_fill;
uiz_fixgeneralpos(stringbox_tags)

button_tags=uiz_c(obj_uiZ_button)
uiz_setParent(button_tags,tagsanchor.frameat[5])
button_tags.posinframex=uiz_fill;
button_tags.posinframey=uiz_fill;
button_tags.text="Add common tags..."
uiz_fixgeneralpos(button_tags)


//add stuff to the main settings area
mainanchor=uiz_frameset_divide_vertical(frame_settings,1,xtra,1,xtra,0.1,fc,1,xtra)

leftanchor=uiz_frameset_divide_horizontal(mainanchor.frameat[0],1,xtra,1,xtra,1,xtra)

//Game
text_Game=uiz_c(obj_uiZ_text)
uiz_setParent(text_Game,leftanchor.frameat[0])
text_Game.posinframex=uiz_snapleft;
text_Game.posvalwtype=fc;
text_Game.posvalw=0.3;
text_Game.posinframey=uiz_fill;
text_Game.text="Game";
text_Game.valign=fa_middle;
uiz_fixgeneralpos(text_Game)

dropdown_Game=uiz_c(obj_uiZ_dropdown)
uiz_setParent(dropdown_Game,leftanchor.frameat[0])
dropdown_Game.posinframex=uiz_snapright;
dropdown_Game.posvalwtype=fc;
dropdown_Game.posvalw=0.7;
dropdown_Game.posinframey=uiz_fill;
gamelist=ds_list_create()
ds_list_add(gamelist,"Capture the flag","Payload")
dropdown_Game.uselist=gamelist;
uiz_fixgeneralpos(dropdown_Game)

//Map
text_Map=uiz_c(obj_uiZ_text)
uiz_setParent(text_Map,leftanchor.frameat[1])
text_Map.posinframex=uiz_snapleft;
text_Map.posvalwtype=fc;
text_Map.posvalw=0.3;
text_Map.posinframey=uiz_fill;
text_Map.text="Map";
text_Map.valign=fa_middle;
uiz_fixgeneralpos(text_Map)

dropdown_Map=uiz_c(obj_uiZ_stringbox)
uiz_setParent(dropdown_Map,leftanchor.frameat[1])
dropdown_Map.posinframex=uiz_snapright;
dropdown_Map.posvalwtype=fc;
dropdown_Map.posvalw=0.7;
dropdown_Map.posinframey=uiz_fill;
uiz_fixgeneralpos(dropdown_Map)

//Max player count
text_MaxP=uiz_c(obj_uiZ_text)
uiz_setParent(text_MaxP,leftanchor.frameat[2])
text_MaxP.posinframex=uiz_snapleft;
text_MaxP.posvalwtype=fc;
text_MaxP.posvalw=0.7;
text_MaxP.posinframey=uiz_fill;
text_MaxP.valign=fa_middle;
text_MaxP.text="Max player count";
uiz_fixgeneralpos(text_MaxP)

dropdown_MaxP=uiz_c(obj_uiZ_stringbox)
uiz_setParent(dropdown_MaxP,leftanchor.frameat[2])
dropdown_MaxP.posinframex=uiz_snapright;
dropdown_MaxP.posvalwtype=fc;
dropdown_MaxP.posvalw=0.3;
dropdown_MaxP.posinframey=uiz_fill;
uiz_fixgeneralpos(dropdown_MaxP)

middleanchor=uiz_frameset_divide_horizontal(mainanchor.frameat[1],1,xtra,1,xtra,1,xtra)

//Latency
text_Latency=uiz_c(obj_uiZ_text)
uiz_setParent(text_Latency,middleanchor.frameat[0])
text_Latency.posinframex=uiz_snapleft;
text_Latency.posvalwtype=fc;
text_Latency.posvalw=0.3;
text_Latency.posinframey=uiz_fill;
text_Latency.text="Latency";
text_Latency.valign=fa_middle;
uiz_fixgeneralpos(text_Latency)

dropdown_Latency=uiz_c(obj_uiZ_dropdown)
uiz_setParent(dropdown_Latency,middleanchor.frameat[0])
dropdown_Latency.posinframex=uiz_snapright;
dropdown_Latency.posvalwtype=fc;
dropdown_Latency.posvalw=0.7;
dropdown_Latency.posinframey=uiz_fill;
uiz_fixgeneralpos(dropdown_Latency)


//Location
text_Location=uiz_c(obj_uiZ_text)
uiz_setParent(text_Location,middleanchor.frameat[1])
text_Location.posinframex=uiz_snapleft;
text_Location.posvalwtype=fc;
text_Location.posvalw=0.3;
text_Location.posinframey=uiz_fill;
text_Location.text="Location";
text_Location.valign=fa_middle;
uiz_fixgeneralpos(text_Location)

dropdown_Location=uiz_c(obj_uiZ_dropdown)
uiz_setParent(dropdown_Location,middleanchor.frameat[1])
dropdown_Location.posinframex=uiz_snapright;
dropdown_Location.posvalwtype=fc;
dropdown_Location.posvalw=0.7;
dropdown_Location.posinframey=uiz_fill;
uiz_fixgeneralpos(dropdown_Location)

//Anti-Cheat
text_AC=uiz_c(obj_uiZ_text)
uiz_setParent(text_AC,middleanchor.frameat[2])
text_AC.posinframex=uiz_snapleft;
text_AC.posvalwtype=fc;
text_AC.posvalw=0.3;
text_AC.posinframey=uiz_fill;
text_AC.text="Anti-Cheat";
text_AC.valign=fa_middle;
uiz_fixgeneralpos(text_AC)

dropdown_AC=uiz_c(obj_uiZ_dropdown)
uiz_setParent(dropdown_AC,middleanchor.frameat[2])
dropdown_AC.posinframex=uiz_snapright;
dropdown_AC.posvalwtype=fc;
dropdown_AC.posvalw=0.7;
dropdown_AC.posinframey=uiz_fill;
uiz_fixgeneralpos(dropdown_AC)



//Add checkboxes on side
//Server not full
check_1=uiz_c(obj_uiZ_checkbox)
uiz_setParent(check_1,mainanchor.frameat[2])
check_1.posinframex=uiz_center;
check_1.posvalwtype=fcy;
check_1.posvalw=0.2;
check_1.posvalhtype=fcy;
check_1.posvalh=0.2;
check_1.posinframey=fc;
check_1.posvaly=uiz_getPositionValue(1,4,0)
uiz_fixgeneralpos(check_1)
text_1=uiz_c(obj_uiZ_text)
uiz_setParent(text_1,mainanchor.frameat[3])
text_1.text="Server not full"
text_1.posinframex=uiz_fill;
text_1.posvalhtype=fcy;
text_1.posvalh=0.2;
text_1.posinframey=fc;
text_1.valign=fa_middle;
text_1.posvaly=uiz_getPositionValue(1,4,0)
uiz_fixgeneralpos(text_1)


//Has users playing
check_2=uiz_c(obj_uiZ_checkbox)
uiz_setParent(check_2,mainanchor.frameat[2])
check_2.posinframex=uiz_center;
check_2.posvalwtype=fcy;
check_2.posvalw=0.2;
check_2.posvalhtype=fcy;
check_2.posvalh=0.2;
check_2.posinframey=fc;
check_2.posvaly=uiz_getPositionValue(1,4,1)
uiz_fixgeneralpos(check_2)
text_2=uiz_c(obj_uiZ_text)
uiz_setParent(text_2,mainanchor.frameat[3])
text_2.text="Has users playing"
text_2.posinframex=uiz_fill;
text_2.posvalhtype=fcy;
text_2.posvalh=0.2;
text_2.posinframey=fc;
text_2.posvaly=uiz_getPositionValue(1,4,1)
text_2.valign=fa_middle;
uiz_fixgeneralpos(text_2)

//Is not password protected
check_3=uiz_c(obj_uiZ_checkbox)
uiz_setParent(check_3,mainanchor.frameat[2])
check_3.posinframex=uiz_center;
check_3.posvalwtype=fcy;
check_3.posvalw=0.2;
check_3.posvalhtype=fcy;
check_3.posvalh=0.2;
check_3.posinframey=fc;
check_3.posvaly=uiz_getPositionValue(1,4,2)
uiz_fixgeneralpos(check_3)
text_3=uiz_c(obj_uiZ_text)
uiz_setParent(text_3,mainanchor.frameat[3])
text_3.text="Is not password protected"
text_3.posinframex=uiz_fill;
text_3.posvalhtype=fcy;
text_3.posvalh=0.2;
text_3.posinframey=fc;
text_3.valign=fa_middle;
text_3.posvaly=uiz_getPositionValue(1,4,2)
uiz_fixgeneralpos(text_3)

//Supports replays
check_4=uiz_c(obj_uiZ_checkbox)
uiz_setParent(check_4,mainanchor.frameat[2])
check_4.posinframex=uiz_center;
check_4.posvalwtype=fcy;
check_4.posvalw=0.2;
check_4.posvalhtype=fcy;
check_4.posvalh=0.2;
check_4.posinframey=fc;
check_4.posvaly=uiz_getPositionValue(1,4,3)
uiz_fixgeneralpos(check_4)
text_4=uiz_c(obj_uiZ_text)
uiz_setParent(text_4,mainanchor.frameat[3])
text_4.text="Supports replays"
text_4.posinframex=uiz_fill;
text_4.posvalhtype=fcy;
text_4.posvalh=0.2;
text_4.posinframey=fc;
text_4.valign=fa_middle;
text_4.posvaly=uiz_getPositionValue(1,4,3)
uiz_fixgeneralpos(text_4)

//Add stuff to the lowest bar part
actionsanchor=uiz_frameset_divide_vertical(frame_actions,0.05,fc,0.2,fc,0.25,fc,0.15,fc,0.125,fc,0.125,fc,0.1,fc)

check_5=uiz_c(obj_uiZ_checkbox)
uiz_setParent(check_5,actionsanchor.frameat[0])
check_5.posinframex=uiz_center;
check_5.posinframey=uiz_center;
check_5.posvalwtype=fcy;
check_5.posvalw=1;
check_5.posvalhtype=fcy;
check_5.posvalh=1;
uiz_fixgeneralpos(check_5)



simpletext=uiz_c(obj_uiZ_text)
uiz_setParent(simpletext,actionsanchor.frameat[1])
simpletext.posinframex=uiz_fill;
simpletext.posinframey=uiz_fill;
simpletext.text="Simplified list"
simpletext.halign=fa_center;
simpletext.valign=fa_middle;
uiz_fixgeneralpos(simpletext)

filtertext=uiz_c(obj_uiZ_text_background)
uiz_setParent(filtertext,actionsanchor.frameat[2])
filtertext.posinframex=uiz_fill;
filtertext.posinframey=uiz_fill;
filtertext.text="Filters"
filtertext.valign=fa_middle;
uiz_fixgeneralpos(filtertext)


tftext=uiz_c(obj_uiZ_text)
uiz_setParent(tftext,actionsanchor.frameat[3])
tftext.posinframex=uiz_fill;
tftext.posinframey=uiz_fill;
tftext.text="uiZ Fortress 2;"
tftext.valign=fa_middle;
uiz_fixgeneralpos(tftext)


button_refreshquick=uiz_c(obj_uiZ_button)
uiz_setParent(button_refreshquick,actionsanchor.frameat[4])
button_refreshquick.posinframex=uiz_fill;
button_refreshquick.posinframey=uiz_fill;
button_refreshquick.text="Quick refresh"
uiz_fixgeneralpos(button_refreshquick)

button_refreshall=uiz_c(obj_uiZ_button)
uiz_setParent(button_refreshall,actionsanchor.frameat[5])
button_refreshall.posinframex=uiz_fill;
button_refreshall.posinframey=uiz_fill;
button_refreshall.text="Refresh all"
uiz_fixgeneralpos(button_refreshall)

button_connect=uiz_c(obj_uiZ_button)
uiz_setParent(button_connect,actionsanchor.frameat[6])
button_connect.posinframex=uiz_fill;
button_connect.posinframey=uiz_fill;
button_connect.text="Connect"
uiz_fixgeneralpos(button_connect)

uiz_fixgeneralpos(frameset)

