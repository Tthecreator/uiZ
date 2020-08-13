var swipicon = argument0;
with(argument1){
    window_Main=uiz_win31_createwindow(frame_ProgramManager,"Main",true)
    frame_Main=window_Main;
    //add icons to menu
    button_explorer=uiz_win31_addicon(frame_Main,"File Manager",spr_uiZ_win31_explorer,0)
    button_clipboard=uiz_win31_addicon(frame_Main,"Clipboard",spr_uiZ_win31_clipboard,1)
    uiz_swipicon_onDoubleClick(button_explorer, uiz_win31_openExplorer, id);
    uiz_swipicon_onDoubleClick(button_clipboard, uiz_win31_openClipboard, id);
}
