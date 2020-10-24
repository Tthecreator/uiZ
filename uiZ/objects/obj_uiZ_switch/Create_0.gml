/// @description #define uiZ
//#sprite images
//#spritenum 23
//#objectversion 1.0
uiz_objinit()
updated=0
update=0
value=false//b//initial value//
oldvalue=value;
inbetvalue=value;
switchtime=0.5//v//time in seconds one rotation takes//
animation=uiz_straight//a//animation//
knobsize=0.7//v//knob size between 0 and 1//

hasbackground=true;
texturescript=uiz_back_spritestitch_4way_plus//i//texturescript//
//texturescript=uiz_back_square//i//texturescript//
texturescript_over=-1//i//texturescript over//
texturescript_in=-1//i//texturescript in//
texturescript_out=-1//i//texturescript out//

sprite_normal=spr_uiZ_4way//p//sprite normal//
color_normal=c_white//c//color normal//
margin_normal=5//v//margin normal//
sprite_texturemode=uiz_texturemode_fill//t//texturemode normal
border_texturemode=-1//t//texturemode border//

sprite_over=spr_uiZ_4way_over//p//sprite over//
color_over=-1//c//color over//
margin_over=-1//v//margin over//

sprite_in=spr_uiZ_4way_in//p//sprite in//
color_in=-1//c//color in//
margin_in=-1//v//margin in//

sprite_out=spr_uiZ_4way_in//p//sprite out//
color_out=-1//c//color out//
margin_out=-1//v//margin out//



item_texturescript=uiz_back_spritestitch_4way_plus//i//inner texturescript//
item_texturescript_over=-1//i//inner texturescript over//
item_texturescript_in=-1//i//inner texturescript in//
item_texturescript_out=-1//i//inner texturescript out//

item_sprite_normal=spr_uiZ_4way_inner//p//inner sprite normal//

item_margin_normal=5//v//inner margin normal//
item_sprite_texturemode=uiz_texturemode_fill//t//inner texturemode normal
item_border_texturemode=-1//t//inner texturemode border//

item_sprite_over=-1//p//inner sprite over//

item_margin_over=-1//v//inner margin over//

item_sprite_in=-1//p//inner sprite in//
item_margin_in=-1//v//inner margin in//

item_sprite_out=-1//p//inner sprite out//
item_margin_out=-1//v//inner margin out//

item_color_normal=c_white//c//inner color//
item_color_over=-1//c//inner color over//
item_color_in=-1//c//inner color in//
item_color_out=-1//c//inner color out//

///internal variables
knobX=0;
knobY=0;
knobSizePx=0;

////old way of doing things
/*
sprite=-1//p//switch knob sprite//
spriteimg=0//v//sprite image//
spritecolor=c_black//c//sprite color//
spriteoncolor=c_gray//c//sprite mouse over color//
spriteincolor=c_ltgray//c//sprite mouse in color//
*/

/* */
/*  */
