var lucolor=ucolor;
if global.mousefrozen=0 and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),slx+buttonmargin-buttonsz,sy+height/2-buttonsz/2+buttonmargin,slx-buttonmargin,sy+height/2+buttonsz/2-buttonmargin) then{
if kmouseover>0 then{uiz_set_cursor(cr_handpoint)}
if mouse_check_button(mb_left) then{ucolor=buttonincolor;icolor=buttontriangleincolor}else{ucolor=buttononcolor;icolor=buttontriangleoncolor}
if mouse_check_button_released(mb_left) and cancreate=1 then{
if menuis=1 and instance_exists(menu) then{
menuis=0
uiz_updater_unstep();
if instance_exists(menu){
uiz_destroyObject(menu)}
}else{
menuis=1
menu=instance_create(0,0,obj_uiZ_mousemenu)
if masklist!=-1 and ds_exists(masklist,ds_type_list) and ds_list_size(masklist)>=ds_list_size(uselist) then{
menu.uselist=masklist
}else{
menu.uselist=uselist
}
menu.y=rly
menu.x=rx
menu.posinframex=px;
menu.posvalx=rx;
menu.posvalw=width;
menu.posvalwtype=px;
menu.backcolor=mousebackcolor
menu.backalpha=mousebackalpha
menu.itemcolor=mouseitemcolor
menu.itemoncolor=mouseitemoncolor
menu.itemincolor=mouseitemincolor
menu.itemalpha=mouseitemalpha
menu.margin=mousemargin
menu.textcolor=mousetextcolor
menu.font=mousefont
menu.destroyyfunction=uiz_zero;
//set returnscript
uiz_mousemenu_setListenerScript(menu,id,uiz_dropdown_returnscript);
uiz_fixmousemenupos(menu)
}

}
if mouse_check_button_released(mb_left) then{cancreate=1}
}else{ucolor=buttoncolor;icolor=buttontrianglecolor;cancreate=1;}
if lucolor!=ucolor then{
updatebutton=true;
uiz_updater_FixViews_area_selfmarked(rlx+buttonmargin-buttonsz,ry+height/2-buttonsz/2+buttonmargin,rlx-buttonmargin,ry+height/2+buttonsz/2-buttonmargin);}

