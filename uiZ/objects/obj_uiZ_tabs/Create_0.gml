//#define uiZ
//#sprite images
//#spritenum 3
//#objectversion 1.0
//#exclude
uiz_objinit()
//put init variables here
tablist=-1;
spacinglist=ds_list_create();
textcolor=c_black//c//textcolor//
valign=fa_middle//v//valign//
halign=fa_left//v//halign//
font=-1//f//font//
selected=0//v//selected//
tabmargin=10//v//tabmargin//

purgeTopMargin=0;//v//purge top margin//
purgeLeftMargin=0;//v//purge left margin//
purgeRightMargin=0;//v//purge right margin//
purgeBottomMargin=4;//v//purge bottom margin//

oldselected=0;
ms=-1;
oldms=-1;
msX = 0;
msX2 = 0;
oldmsX = 0;
oldmsX2 = 0;
selmsX = 0;
selmsX2 = 0;

draw_old = false;
draw_new = false;
draw_sel = false;


hasbackground=true;
texturescript=uiz_back_circlestitch//i//texturescript//
texturescript_over=-1//i//texturescript over//
texturescript_in=-1//i//texturescript in//
texturescript_out=-1//i//texturescript out//

sprite_normal=spr_uiZ_bordertabs//p//sprite normal//
color_normal=c_white//c//color normal//
margin_normal=7//v//margin normal//
sprite_texturemode=uiz_texturemode_fill//t//texturemode normal
border_texturemode=-1//t//texturemode border//

sprite_over=spr_uiZ_bordertabs_over//p//sprite over//
color_over=-1//c//color over//
margin_over=-1//v//margin over//

sprite_in=spr_uiZ_bordertabs_in//p//sprite in//
color_in=-1//c//color in//
margin_in=-1//v//margin in//

sprite_out=spr_uiZ_bordertabs_out//p//sprite out//
color_out=-1//c//color out//
margin_out=-1//v//margin out//

