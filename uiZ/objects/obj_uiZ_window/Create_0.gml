/// @description #define uiZ
//#sprite images
//#spritenum 17
//#objectversion 1.0
//#exclude
//global.count=2
uiz_objinit()
windowtext="window"//s//window text//
windowtextcolor=c_black//c//window text color//
halign=fa_left//v//window text horizontal align//
valign=fa_center//v//window text vertical align//
font=-1;//f//window text font//
wholewidthalign=false;//b//align type//
barsize=0.25//v//top bar size//
barsizevaltype=dp//z//top bar size type//

button_cross=true//b//enable close button//
button_maximize=true//b//enable maximize button//
button_minimize=true//b//enable minimize button//

button_cross_color_normal=c_white;//c//close button normal color// 
button_cross_color_over=c_white;//c//close button over color//
button_cross_color_in=c_white;//c//close button in color//
button_cross_sprite=spr_uiZ_windowbutton_cross;//p//close button sprite//

button_maximize_color_normal=c_white;//c//maximize button normal color// 
button_maximize_color_over=c_white;//c//maximize button over color//
button_maximize_color_in=c_white;//c//maximize button in color//
button_maximize_sprite=spr_uiZ_windowbutton_maximize;//p//maximize button sprite//

button_minimize_color_normal=c_white;//c//minimize button normal color// 
button_minimize_color_over=c_white;//c//minimize button over color//
button_minimize_color_in=c_white;//c//minimize button in color//
button_minimize_sprite=spr_uiZ_windowbutton_minimize;//p//minimize button sprite//

maximizeanimation=uiz_elastic_inout//a//maximize animation//
maximizeanimationspeed=0.3//v//maximize animation duration//
unmaximizeanimation=uiz_elastic_inout//a//unmaximize animation//
unmaximizeanimationspeed=0.2//v//unmaximize animation duration//

minimizeanimation=uiz_wigle//a//minimize animation//
minimizeanimationspeed=0.3//v//minimize animation duration//
unminimizeanimation=uiz_wigle//a//unminimize animation//
unminimizeanimationspeed=0.2//v//unminimize animation duration//

destroyyfunction=uiz_straight//a//closing height animation//
destroyxfunction=uiz_straight//a//closing width animation//
destroyafunction=uiz_zero//a//closing alpha animation//
destroyspeed=0.5//a//closing animation duration//


contain=uiz_window_contain_corner//v//contain constant//
resizable=true;//b//resizable//

keepratio=false;//b//keep window ratio//
minwidth=0;//v//minimum window width//
minwidthtype=px;//z//minimum window width type//
minheight=0;//v//minimum window height//
minheighttype=px;//z//minimum window height type//

doublemargins=false//b//double topbar margins//
topbarInside=false//b//topbar in inner margins//
topbackuse=-1;//v//top bar background type//

hasbackground=true;
texturescript=uiz_back_circlestitch//i//texturescript//
texturescript_over=-1//i//texturescript over//
texturescript_in=-1//i//texturescript in//
texturescript_out=uiz_back_square//i//texturescript out//

sprite_normal=spr_uiZ_border1//p//sprite normal//
color_normal=c_white//c//color normal//
margin_normal=10//v//margin normal//
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

usebackgroundmargins=true;

topbar_texturescript=uiz_back_circlestitch//i//top texturescript//
topbar_texturescript_over=-1//i//top texturescript over//
topbar_texturescript_in=-1//i//top texturescript in//
topbar_texturescript_out=-1//i//top texturescript out//

topbar_sprite_normal=spr_uiZ_border1//p//top sprite normal//
topbar_color_normal=c_white//c//top color normal//
topbar_margin_normal=10//v//top margin normal//
topbar_sprite_texturemode=uiz_texturemode_fill//t//top texturemode normal
topbar_border_texturemode=-1//t//top texturemode border//

topbar_sprite_over=spr_uiZ_border1_over//p//top sprite over//
topbar_color_over=-1//c//top color over//
topbar_margin_over=-1//v//top margin over//

topbar_sprite_in=spr_uiZ_border1_in//p//top sprite in//
topbar_color_in=-1//c//top color in//
topbar_margin_in=-1//v//top margin in//

topbar_sprite_out=spr_uiZ_border1_in//p//top sprite out//
topbar_color_out=-1//c//top color out//
topbar_margin_out=-1//v//top margin out//

topbar_bkspr=topbar_sprite_normal;
topbar_bkcol=topbar_color_normal;
topbar_bkmar=topbar_margin_normal;
topbar_texas=topbar_texturescript


global.lockwindowresel=global.lockwindowreseltime;
lastparent=obj_uiZ_controller.id;
//lastparent=0;
m=0;
u=0;
draw=0
mark=1
markcolor=irandom(255*255*255)
iscover=0
fromx=0
fromy=0
tox=0
toy=0
snaptomouse=0
mouseminx=0
mouseminy=0

sizestatus=1
oldx=x
oldy=y
olda=1
oldwidth=width
oldheight=height
inanimation=0
maximizesnapmargin=5//v//snap maximize margin//
destroy=0;

ratio=1;
minw=0;
minh=0;
bars=0;

graboffx=0;
graboffy=0;

isresizing=false;

button_cross_state=0;
button_maximize_state=0;
button_minimize_state=0;
overbut=0;
loverbut=0;
loverbut_mouse=0;

lkmouseover=0;
addwindowmydepth=0;

///custom button control
custom_buttons_left_color_normal=ds_list_create();
custom_buttons_left_color_over=ds_list_create();
custom_buttons_left_color_in=ds_list_create();
custom_buttons_left_sprite=ds_list_create();
custom_buttons_left_state=ds_list_create();
custom_buttons_left_script=ds_list_create();

custom_buttons_right_color_normal=ds_list_create();
custom_buttons_right_color_over=ds_list_create();
custom_buttons_right_color_in=ds_list_create();
custom_buttons_right_sprite=ds_list_create();
custom_buttons_right_state=ds_list_create();
custom_buttons_right_script=ds_list_create();

overbut_left = -1;
loverbut_left = -1;

an_old_posinframex=posinframex;
an_old_posinframey=posinframey;
an_old_setpointx=setpointx;
an_old_setpointy=setpointy;
an_old_x=x;
an_old_y=y;
an_old_width=width;
an_old_height=height;

//if global.selectedwindow.depth>-1000000 then{
uiz_window_select(id)
//}

