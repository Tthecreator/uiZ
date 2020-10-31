//#define uiZ
//#sprite images
//#spritenum 5
//#objectversion 1.0
uiz_objinit()
color=c_white//c//color//
sprite=spr_uiZ_buttons//p//sprite//
spraddto=0//v//add to sprite//
kmouseover=0;
text=""//s//text//
textcolor=c_black//c//textcolor//
textselectcolor=c_black//c//text selection color//
font=-1//f//font//
hasmouse=false;
keepratio=true//b//keep icon ratio//
selected=false;
keepinsidemode=1//v//keepinsidemode//
onDoubleClick = -1;//v//script on double click//
onDoubleClickArgument = 0;//v//on double click script argument//

hasbackground=true;
texturescript=uiz_back_circlestitch//i//texturescript//
texturescript_over=-1//i//texturescript over//
texturescript_in=-1//i//texturescript in//
texturescript_out=-1//i//texturescript out//

sprite_normal=spr_uiZ_border1//p//sprite normal//
color_normal=c_white//c//color normal//
margin_normal=5//v//margin normal//
sprite_texturemode=uiz_texturemode_fill//t//texturemode normal
border_texturemode=-1//t//texturemode border//

sprite_over=spr_uiZ_border1_over//p//sprite over//
color_over=-1//c//color over//
margin_over=-1//v//margin over//

sprite_in=spr_uiZ_border1_in//p//sprite in//
color_in=-1//c//color in//
margin_in=-1//v//margin in//

sprite_out=spr_uiZ_border1_in//p//sprite out//
color_out=$efd8ba//c//color out//
margin_out=-1//v//margin out//

update=false;
updated=false;

