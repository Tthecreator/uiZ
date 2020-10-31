//#define uiZ
//#sprite images
//#spritenum 3
//#objectversion 1.0
//#exclude
uiz_objinit()
//put init variables here
scrollHeight = 1.5;//v//scroll height//
scrollHeightType = fc;//z//scroll height type//

scrollbarWidth = 16;//v//scrollbar width//
scrollbarWidthType = px;//v//scrollbar width type//
scrollbarSprite=spr_uiZ_scrollbar//p//scrollbar sprite//
scrollbarColor=c_white//c//scrollbar color//
scrollbarBackTexMode=uiz_texturemode_fill_edgeless//t//scrollbar texturemode//
scrollSpeed=50//v//scrollspeed in px/sec//
scrollbarAnimation=uiz_sin_inout//a//scrollbar animation//
scrollbarAnimationTime=0.2//v//scrollbar animation time//

///setup internal variables
scrollLines = 0;
squareHeight = 0;
scrollbarX = 0;
scroll = uiz_drawscrollbar_init();

