var swipicon = argument0;
with(argument1){
    window_notepad=uiz_win31_createwindow_size(obj_uiZ_controller.id,"Notepad",true,3,dp,3.8,dp)//we create the window in this object to keep the window controls working
    notepad_text=uiz_c(obj_uiZ_textarea)
    uiz_setparent(notepad_text,window_notepad)
    notepad_text.posinframex=uiz_fill;
    notepad_text.posinframey=uiz_fill;
    notepad_text.texturescript=-1;
    uiz_textarea_setscrollbarsettings(notepad_text, .18, dp, spr_uiZ_win31_scrollbar_edge, c_white, uiz_texturemode_fill, 1, uiz_smoothstep, .2);
    uiz_textarea_setvalue(notepad_text,"You are free to type whatever you want here! Type as much as you like to, I won't hold you back. Do your best.");
    uiz_fixgeneralpos(notepad_text);
}
