/// @description #define uiZ
//#sprite images
//#spritenum 8
//#objectversion 1.0
uiz_objinit()
uselist=-1;
usesprlist=-1;
useimglist=-1;
spraddto=0;
image_speed=0;
sprite=spr_uiz_designerlogo
color=c_white//c//color//
oncolor=c_ltgray//c//mouse over color//
clickcolor=c_dkgray//c//mouse click color//
textcolor=c_black//c//text color//
margin=2//v//marin//
scrollbarwidth=.16//v//scrollbar width//
scrollbarwidthtype=dp//z//scrollbar width type//
scrollbarsprite=spr_uiZ_scrollbar_16//p//scrollbar sprite//
scrollbarcolor=c_white//c//scrollbar color//
scrollbarbacktexmode=uiz_texturemode_fill//t//scrollbar background texture mode//
scroll=uiz_drawscrollbar_init();
scrollspeed=100//v//scrollspeed//
scrollbarAnimation=uiz_smoothstep//a//scrollbar animation//
scrollbarAnimationTime=0.2//v//scrollbar animation time//
fromscroll=0
toscroll=0
count=0
scrollsel=0
selected=-1
sel=-1
keepselection=false//b//keep selection//
keepselected=-1
startlistat=0
endlistat=0
starth=0;
checkuplist=1;
strh=0
updater_old=-1;
updater_new=-1;
ar_sel_ox=0;
ar_sel_oy=0;
ar_sel_olx=0;
ar_sel_oly=0;
ar_sel_nx=0;
ar_sel_ny=0;
ar_sel_nlx=0;
ar_sel_nly=0;
scrollheight=-1;
oldvalid=false;
updatescroll=false;
doscroll=false;
scrollwidth=uiz_getposx_self(scrollbarwidth,scrollbarwidthtype);
scrolladdy = 0;

