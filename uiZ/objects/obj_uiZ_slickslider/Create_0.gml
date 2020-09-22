uiz_objinit()

linethickness=3//v//line thickness//
linethicknesstype=px//z//line thickness type//
sliderthickness=0.2//v//slider thickness//
sliderthicknesstype=dp//z//slider thickness type//
slidermargin=4//v//slider height margin//
slidermargintype=px//z//slider height margin type//
linecolor=c_blue//c//line color//
linemargin=3//v//line margin//

animation=uiz_acceldecel//a//click animation//
animationtime=0.5//v//click animation time in seconds//
animationcount=0;
anim=0;

oldvalue=0;
newvalue=0;
value=0//v//starting value (0-1)//
update=0
updated=0
hasmouse=0;
w=1;
snapx=0;
pm1x=0;
pm2x=0;

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

