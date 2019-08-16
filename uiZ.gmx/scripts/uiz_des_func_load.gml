with(obj_uiz_designer){
if global.windowexists>0 and instance_exists(global.windowexists) then{
uiz_destroyobject_animation(global.windowexists,uiz_exponential_in,uiz_exponential_in,uiz_exponential_in,0.1)
}
ldwin=uiz_window_create_animation(5,dp,3,dp,uiz_straight,uiz_straight,uiz_straight,0.1);
ldwin.windowtext="load"
global.windowexists=ldwin;
global.haswindow=id;
//find files
uiz_destroydslist(loadfilelist);
if uiz_direxists(projectfolder+"uiZ")=0 then{
uiz_executecmd('mkdir "'+projectfolder+"uiZ"+'"')
sdbm("[uiZ,Designer:INFO] Folder '"+projectfolder+"uiZ' not found, creating it.");
}
if uiz_direxists(projectfolder+"uiZ")=1 then{
sdbm("[uiZ,Designer:INFO]loading up files")
loadfilelist=uiz_findfile_dslist(projectfolder+"uiZ\*.ini")
}else{
sdbm("[uiZ,Designer:ERROR] Folder '"+projectfolder+"uiZ' not found, even after attempting to create it.");
}
dbm("THIS STUFF SHOULD GIVE AN ERROR, FRAMEDIVISION NOT COMPATIBLE WITH FRAMESET ANYMORE")
var di=uiz_framedivisionhorizontal(ldwin,1,xtra,0.3,dp)
var p1=di.frameat[0];
var p2=di.frameat[1];
uiz_fixgeneralpos(ldwin);

ldlist=uiz_c(obj_uiZ_drawdslist);
uiz_setparent(ldlist,p1);
ldlist.posinframex=uiz_fill;
ldlist.posinframey=uiz_fill;
ldlist.uselist=loadfilelist;
ldlist.keepselection=1;
uiz_fixgeneralpos(ldlist)

ldbut_load=uiz_easybutton_create(spr_uiZ_buttons_load)
ldbut_load.posinframex=fcy
ldbut_load.posvalx=0
ldbut_load.posvalwtype=fcy
ldbut_load.posvalw=1
ldbut_load.posinframey=uiz_fill
uiz_setparent(ldbut_load,p2)
uiz_fixgeneralpos(ldbut_load)

ldbut_add=uiz_easybutton_create(spr_uiZ_buttons_add)
ldbut_add.posinframex=fcy
ldbut_add.posvalx=1
ldbut_add.posvalwtype=fcy
ldbut_add.posvalw=1
ldbut_add.posinframey=uiz_fill
uiz_setparent(ldbut_add,p2)
uiz_fixgeneralpos(ldbut_add)

}
