if live_call() return live_result;
uiz_animation_capture_oldstate(id)
posinframex=uiz_static;
posinframey=uiz_static;
uiz_window_fixbackground();
uiz_fix_Base_endmargin();
end_topframemargin=ceil(end_topframemargin+bars+top_bkmar);//add top window bar as margin
width=bars*(5+ds_list_size(custom_buttons_left_sprite)+ds_list_size(custom_buttons_right_sprite))+end_leftframemargin+end_rightframemargin;
height=minh+end_topframemargin+end_bottomframemargin
x=an_old_x;
y=an_old_y;
setpointx=uiz_auto;
setpointy=uiz_auto;
sizestatus=0
uiz_fixwindowpos(id);
uiz_fixwindowpos_finalValues();
uiz_animation_capture_newstate(id)
uiz_animation_setFunction(id,maximizeanimation,maximizeanimation,maximizeanimation,maximizeanimation,uiz_one,maximizeanimationspeed)
uiz_animation_start(id)
