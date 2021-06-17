//#define uiZ
//#sprite images
//#spritenum 1
//#exclude
//define uiZ allows the ui designer to recorginse this as a uiz object
//the #sprite images line makes the sprite of the object spr_uiZ_images instead of spr_uiZ_images_user. for userdefined objects, don't use this line.
//#spritenum 1 tells the designer what image_index of the sprite to use.
x=0
y=0
rx=0
ry=0

ix=0;
iy=0;
ilx=0;
ily=0;
doubleclicktime=0.5//in seconds
doubleclickcount=0;
global.colorscreen=noone
addx=0
addy=0
//width=surface_get_width(application_surface)
//height=surface_get_height(application_surface)
width=window_get_width()
height=window_get_height()
iwidth=width;
iheight=height;
rlx=width
rly=height
cntnx=0
cntny=0
cntnlx=width
cntnly=height
uiz_enabled=true;

global.uiz_containframe=-1;
global.screenpxwidth=width
global.screenpxheight=height
global.uiz_windows=20
global.selectedwindow=noone;
global.mousemovetoscroll=30;
global.isfixinggrandchildren=false;
global.lockwindowresel=0;
global.lockwindowreseltime=3;
global.uiz_stepNumber = 0;

global.uiz_shader_contain = -1;
global.uiz_shader_contain_hue = -1;
global.uiz_shader_contain_blur = -1;

uiz_dpi_init();
UIZ_FONT();

children=ds_list_create()
if (os_browser==browser_opera || os_browser==browser_chrome) then{
    global.uiz_useFallbackShader = true;
}else{
    global.uiz_useFallbackShader = false;
}

if shader_is_compiled(sh_uiz_contain) and shaders_are_supported() then{
global.uiz_shader=1
}else{
global.uiz_shader=0
}

uiz_shader_update();

//global.uiz_shader=1
draw_set_font(uiz_fnt_dp_20)
lastsecondat=-1
oldselectedmouseoverobject=0
oldselectedmouseover=id
oldselectedmouseoverframe=0
oldselectedmouseoverscrollable=0;
topframemargin=0;
bottomframemargin=0;
leftframemargin=0;
rightframemargin=0;
view_fix=false;

//show_debug_overlay(true)
///uiz by thomas saedt, Tthecreator on the game maker forums.

///check systemsupportskeyboard and systemtouchsupport
switch(os_type){
case os_windows: case os_linux: case os_macosx: case os_browser:
global.systemsupportskeyboard=true;
break;
default:
global.systemsupportskeyboard=false;
break;
}
switch(os_type){
case os_ios: case os_android: case os_winphone:
global.systemsupportstouch=true;
break;
default:
global.systemsupportstouch=false;
break;
}

global.mouseoverobject=id
global.mouseoverobjectdepth=0
global.mouseoverframe=id
global.mouseoverframedepth=0
global.mouseovercavas=id
global.mouseovercanvasmydepth=0
global.mouseoverwindow=id
global.mouseoverwindowdepth=0
global.mouseoverscrollable=id
global.mouseoverscrollabledepth=0
global.mouseover=id
global.mouseoverdepth=0
global.mouseoverdone=0
global.mousefrozen=0
global.wasmousefrozen=0
global.mousefrozensafety=0;
global.mousefrozensafetynumber=0;
global.lastmousemoved=0
global.lastmousemovedx=0
global.lastmousemovedy=0
global.lastmousemovedxsign=0
global.lastmousemovedysign=0
global.lastsecondmousemoved=0
global.lastsecondmousemovedx=0
global.lastsecondmousemovedy=0
global.uiz_instep=0;

lastmousex=uiz_getmouse_x()
lastmousey=uiz_getmouse_y()
lastsecondmousex=uiz_getmouse_x()
lastsecondmousey=uiz_getmouse_y()
global.colorlist=-1
main_alpha=1

///mouse global variables
global.uiz_mouseis=cr_default;
global.uiz_mouseswipeclick=false;
global.uiz_mouseswipedx=0;
global.uiz_mouseswipedy=0;
global.uiz_mouseswiped=0;
global.mousedirectoverobject=false;
global.enablemousedirectoverobjectcheck=false;
dirlastmouseoverobject=id;
mouseswipeclick_distance=1;
mouseswipeclick_distancetype=dp;
mouseswipeclick_time=1;//in seconds
oldmouseswipedx=0
oldmouseswipedy=0
global.uiz_lastmouseis=0//global.uiz_mouseis;

global.uiz_cr_none=-1;
global.uiz_cr_default=-1;
global.uiz_cr_arrow=-1;
global.uiz_cr_cross=-1;
global.uiz_cr_beam=-1;

global.uiz_cr_size_nesw=-1;
global.uiz_cr_size_ns=-1;
global.uiz_cr_size_nwse=-1;
global.uiz_cr_size_we=-1;

global.uiz_cr_uparrow=-1;
global.uiz_cr_hourglass=-1;
global.uiz_cr_drag=-1;
global.uiz_cr_appstart=-1;
global.uiz_cr_handpoint=-1;
global.uiz_cr_size_all=-1;

///depths compatibility
depth=0;
oldmydepth=0;

uiz_compatibility_rebuilddepths_init()


///animation handler setup
uiz_animationlist=ds_list_create();

///setup updater
uiz_surf=surface_create(width,height);
//uiz_surf_secondary=surface_create(width,height);
uiz_arealist=ds_list_create();
uiz_arealist_extra=ds_list_create();
uiz_useappsurf=true;
uiz_appsurf=application_surface;
uiz_changeSurface=false;
uiz_updateall=true;
uiz_selfmarked=false;
uiz_steplist=ds_list_create();
uiz_endsteplist=ds_list_create();
uiz_beginsteplist=ds_list_create();
uiz_arealist_oldsz=0;
//global.uiz_inredrawmode=false;
global.surfacedebugcount=0;
global.surfacedebugcounty=0;
global.uiz_debugsurface=0;//surface_create(width,height)
global.uiz_fix_updates=0;
global.uiz_fix_updates_draw=0;
//uiz_objlist=ds_list_create()
global.debug_action=false;
uiz_resetwindowsize();

uiz_dpi_type=uiz_dpi_gettype()
uiz_dp_window_w=-1;
uiz_dp_window_h=-1;

///set mouse updates
lastmouseover=global.mouseover;
//lastwindowover=global.mouseoverwindow;



///snapper setup
snapm=false;
snapx=0;
snapy=0;

///check for mousecheck fix on windows touch platforms fix.
mouseTestState=0;
mousePressed=false;
mouseReleased=false;

///typecursor setup
typecursor_enabled=false;
typecursor_x1=0;
typecursor_x2=0;
typecursor_y1=0;
typecursor_y2=0;
typecursor_alpha=1;
typecursor_color=c_black;
typecursor_width=0;

///typing char control setup
keyboard_currentchar = "";//what char is currently being pressed
keyboard_oldlastchar = "";
keyboard_currentkey = -1;
keyboard_lastKeyForChar = -999;
keyboard_lastKeyTime = 0;
keyboard_lastcurrentchar = "";//what char was last pressed
keyboard_charPressed=false;//if the given char is still being pressed

///save window size
window_w = window_get_width();
window_h = window_get_height();
resetSurfaces = false;

///scrollbar animation init
animateScrollbarList = ds_list_create();

///scrollbar animation handling setup
scrollbarStepList = ds_list_create();