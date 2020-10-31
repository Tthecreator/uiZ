//#define uiZ
//#sprite images
//#spritenum 20
//#objectversion 1.0
uiz_objinit()
value=0
buttoncolor=c_white//c//button color//
buttononcolor=c_gray//c//button mouse over color//
buttonincolor=c_black//c//button mouse click color//
buttonbackalpha=1//c//button back alpha//
buttontrianglealpha=1//c//button triangle alpha//
buttontrianglecolor=c_black//c//button triangle color//
buttontriangleoncolor=c_dkgray//c//button triangle mouse over color//
buttontriangleincolor=c_white//c//button triangle mouse click color//
buttonmargin=5//v//button margin//
trianglemargin=4//v//triangle margin//
uselist=-1
masklist=-1
maskvalue=0;
selected=0
select=0
value=""
ucolor=buttoncolor
icolor=buttontrianglecolor
textcolor=c_black//c//text color//
menuis=0
menu=noone;
cancreate=1
containtext=1//b//contain text//
updated=0
update=0
font=-1;


mousebackcolor=c_blue//c//mousemenu background color//
mousebackalpha=0.5//v//mousemenu background alpha//
mouseitemcolor=c_white//c//mousemenu item color//
mouseitemoncolor=c_ltgray//c//mousemenu item mouse over color//
mouseitemincolor=c_gray//c//mousemenu item mouse click color//
mouseitemalpha=1//v//mousemenu item alpha//
mousemargin=3//v//mousemenu item margin//
mousetextcolor=c_black//c//mousemenu text color//
mousefont=-1//f//mousemenu font//


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


ucolor=buttoncolor;
icolor=buttontrianglecolor;
buttonsz=min(width*0.5,height);
updatebutton=false;

