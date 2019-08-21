///uiz_win32_addmenulist(window)
/*
var menubut;
menubut=uiz_c(obj_uiZ_menubutton)
uiz_setparent(menubut,argument0)
menubut.posinframex=uiz_snapleft;
menubut.posinframey=uiz_fill;
menubut.posvalwtype=fcy;
menubut.posvalw=1;
//set sprite
menubut.sprite_normal=spr_uiZ_win31_options;
menubut.sprite_over=spr_uiZ_win31_options_over;
menubut.sprite_in=spr_uiZ_win31_options_in;
//reset colors to white
menubut.color_normal=c_white;
menubut.color_over=-1;//make -1 to automatically take color_normal
menubut.color_in=-1;
//allow background change of mousemenu using templatescript
menubut.menutemplate=uiz_win31_template_mousemenu
uiz_fixgeneralpos(menubut)
//add to list management
menubut.dslist=menulist_main;
menubut.enabledlist=menulist_main_enabled;
ds_list_add(WindowMouseMenuList,menubut)
ds_list_add(WindowMouseMenuWindowList,argument0)
return menubut;
*/

uiz_window_custom_button_create_left(argument0,spr_uiZ_win31_options,c_white,c_white,c_white,uiz_win31_window_spawnMouseMenu)
