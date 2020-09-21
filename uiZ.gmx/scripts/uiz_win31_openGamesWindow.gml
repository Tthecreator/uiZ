var swipicon = argument0;
with(argument1){
    window_Games=uiz_win31_createwindow(frame_ProgramManager,"Games",true)
    frame_Games=window_Games;
    //add icons to menu
    button_minesweeper=uiz_win31_addicon(frame_Games,"Minesweeper",spr_uiZ_win31_minesweeper,0)
    uiz_swipicon_onDoubleClick(button_minesweeper, uiz_win31_openMineSweeper, id);
}
