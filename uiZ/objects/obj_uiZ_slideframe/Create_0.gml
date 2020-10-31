//#define uiZ
//#sprite images
//#spritenum 3
//#objectversion 1.0
uiz_objinit()
draw=0
mark=false//b//mark
debugmark=false//b//debugmark
//mark=true
//deugmark=true
markcolor=irandom(255*255*255)
iscover=0
fromx=0
fromy=0
tox=0
toy=0
inlistpos=0
snaptoparent=1
scrolly=false//b//scroll y//
scrollyspeed=30//v//scroll y speed//
scrollx=false//b//scroll x//
scrollxspeed=30//v//scroll x speed//
snapm=false;
snapk=false;
snapx=0;
snapy=0;
scrollbarsprite=spr_uiZ_scrollbar//p//sprite//
scrollbarcolor=c_white//c//color//
scrollbarbacktexturemode=uiz_texturemode_fill//t//texturemode//
scrollbarsize=0.2//v//scrollbar size//
scrollbarsizetype=dp//v//scrollbar size type//
scrollbary=!global.systemsupportstouch//b//auto vertical scrollbar//
scrollbarx=!global.systemsupportstouch//b//auto horizontal scrollbar//
autoupdatescrolly=false//b//auto update vertical scrollbar//
autoupdatescrollx=false//b//auto update horizontal scrollbar//
scrollbarAnimation=uiz_smoothstep//a//scrollbar animation//
scrollbarAnimationTime=0.3//v//scrollbar animation time//
updatescrolly=false;
updatescrollx=false;
uscrolly=uiz_drawscrollbar_init();
uscrollx=uiz_drawscrollbar_init();
mscrollbary=0;
mscrollbarx=0;
scrollbarcorner_x=0;
scrollbarcorner_y=0;
scrollupdateobjs=ds_list_create();

///slideframe specific stuff
blackframe=noone;
blackframeanimation=uiz_circular_in
blackframealpha=0.4;
forceanim=false
snapanimationtime=.25;
snapanimation=uiz_acceldecel;
value=false;
newvalue=false;
inanim=0;
menubutton=noone;
menumousecoversize=0.5;
menumousecoversizetype=dp;
mouseMinMoveSpeed=0;
mouseMinMoveSpeedType=dp;
hasmouse=false;
mouseborderoutside=true;
mouseborderinside=true;
moves_mouse=false;
mouse_over=false;
mouse_snapx=0;
mouse_snapy=0;
posbool = 1;
mw=0;
mmms=0;
slideWindowSizeDegrees = 30;//how many degrees are allowed for moving.

