//#define uiZ
//#sprite images
//#spritenum 23
//#objectversion 1.0
//#wiki https://git.tthecreator.win/TtheCreator/uiz/wikis/checkbox
uiz_objinit()
checkcolor=c_black//c//check color//
checkoncolor=c_dkgray//c//check mouse over color//
checkincolor=c_gray//c//check mouse click color//
margin=2//v//check margin in pixels//
value=false//b//initial value//
sprite=-1//p//checkmark sprite//
spriteimg=0//v//sprite image//
spritecolor=c_white//c//sprite color//
spriteoncolor=c_white//c//sprite mouse over color//
spriteincolor=c_white//c//sprite mouse in color//
/*
outline=0
outlinecolor=c_black
outlineoncolor=c_black
outlineincolor=c_black
outlinealpha=1
*/
updated=0
update=0

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
color_out=-1//c//color out//
margin_out=-1//v//margin out//

/* */
/*
///#define uiZ
//#sprite images
//#spritenum 6
width=10
height=10
lx=x+width
ly=y+height
color1=c_white
color2=c_black
color3=c_purple
color4=c_aqua
outline=1
color5=c_maroon
color6=c_red
color7=c_orange
color8=c_yellow
children=-1
listpos=-1
uiz_initparent()
rx=parent.rx+x
ry=parent.ry+y
rlx=parent.rx+lx
rly=parent.ry+ly
adddepth=0;
spraddto=0;
posinframex=uiz_auto
posinframey=uiz_auto
posvalx=0
posvaly=0
addx=0
addy=0
containin=0
setpointx=uiz_auto
setpointy=uiz_auto
topframemargin=0;
rightframemargin=0;
bottomframemargin=0;
leftframemargin=0;
uiz_shader=1
containtowhosparent=id


/* */
/*  */
