//#define uiZ
//#sprite images
//#spritenum 21
//#objectversion 1.0
uiz_objinit()
//depth=-9999999999
uiz_fixgeneralpos(id)
margin=3//v//item margin//
textmargin=1//v//text margin in pixels//
uselist=-1
actionlist=-1
enabledlist=-1;
textcolor=c_black//c//text color//
textcolordisabled=c_ltgray//c//text color disabled//
font=-1//f//font//
selected=-1
selection=-1;
oldselection=-1;
updateselection=false;

selectioncol=0;

sel_y=0;
sel_ly=0;

sel_oy=0;
sel_oly=0;

updated=0
update=0;
destroylist=false//b//destroy list//
scrollspeed=3;
itemhasdoublemargins=false//b//items have added margins//
problems=0

scroll=0;
wait=false;

listener = noone;
listener_script = -1;

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


item_texturescript=uiz_back_circlestitch_horizontal//i//item texturescript//
item_texturescript_over=-1//i//texturescript over//
item_texturescript_in=-1//i//texturescript in//
item_texturescript_out=-1//i//texturescript out//

item_sprite_normal=spr_uiZ_border0//p//item sprite normal//
item_color_normal=c_white//c//item color normal//
item_margin_normal=5//v//item margin normal//
item_sprite_texturemode=uiz_texturemode_fill//t//item texturemode normal
item_border_texturemode=-1//t//item texturemode border//

item_sprite_over=-1//p//item sprite over//
item_color_over=c_ltgray//c//item color over//
item_margin_over=-1//v//item margin over//

item_sprite_in=-1//p//item sprite in//
item_color_in=c_gray//c//item color in//
item_margin_in=-1//v//item margin in//

item_sprite_out=-1//p//item sprite out//
item_color_out=15592941//c//item color out//
item_margin_out=-1//v//item margin out//


//custom default destroy functions
destroyxfunction=uiz_exponential_in
destroyyfunction=uiz_exponential_in
destroyafunction=uiz_exponential_in
destroyspeed=0.1

