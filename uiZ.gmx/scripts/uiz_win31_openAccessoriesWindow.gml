var swipicon = argument0;
with(argument1){
    window_Accessories=uiz_win31_createwindow(frame_ProgramManager,"Accessories",true)
    frame_Accessories=window_Accessories;
    //add icons to menu
    button_notepad=uiz_win31_addicon(frame_Accessories,"Notepad",spr_uiZ_win31_notepad,0)
    button_calculator=uiz_win31_addicon(frame_Accessories,"Calculator",spr_uiZ_win31_calculator,1)
    button_clock=uiz_win31_addicon(frame_Accessories,"Clock",spr_uiZ_win31_clock,2)
    uiz_swipicon_onDoubleClick(button_notepad, uiz_win31_openNotepad, id);
    uiz_swipicon_onDoubleClick(button_calculator, uiz_win31_openCalculator, id);
    uiz_swipicon_onDoubleClick(button_clock, uiz_win31_openClock, id);
}
