/// @description #define uiZ
//#sprite images
//#spritenum 25
//#objectversion 1.0
uiz_objinit()
scrollbarsprite=spr_uiZ_scrollbar//p//sprite//
scrollbarcolor=c_white//c//color//
scrollbarbacktexturemode=uiz_texturemode_fill//t//texturemode//
scroll=0
uscroll=uiz_drawscrollbar_init();
scrolllines=0
scrollspeed=70//v//scrollspeed//
horizontal=false//b//horizontal(false) or vertical(true)//
scrollbarAnimation=uiz_smoothstep//a//scrollbar animation//
scrollbarAnimationTime=0.3//v//scrollbar animation time//
frame=noone;
lastadd=0;

