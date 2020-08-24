var swipicon = argument0;
with(argument1){
    window_calculator=uiz_win31_createwindow_size(obj_uiZ_controller.id,"Calculator",true,3,dp,3,dp)//we create the window in this object to keep the window controls working
    object_calculator=instance_create(0,0,obj_windows31_calculator);
    object_calculator.window=window_calculator
    with(object_calculator){
        //setup object
        var buttonmargins=10;//the margins between the buttons
        display=uiz_c(obj_uiZ_text)
        uiz_setParent(display,window)
        display.posinframex=uiz_fill;
        display.posinframey=fc;
        display.setpointy=uiz_middle;
        display.posvaly=uiz_getdivisionmiddles(1,6,0)
        display.posvalx=0.01
        display.posvalwtype=fc;
        display.posvalh=0.15;
        display.posvalhtype=fc;
        display.hasbackground=true;
        display.backgroundscript=uiz_back_square_outlined
        display.halign=fa_right;
        display.valign=fa_middle;
        display.leftmargin=buttonmargins/2;
        display.rightmargin=buttonmargins/2;
        uiz_fixgeneralpos(display)
        
        //add C, CE and back button
        //every button is 0.20fc in size and 0.05fc apart
        button_C=uiz_c(obj_uiZ_3waybutton)
        uiz_setParent(button_C,window)
        button_C.sprite=spr_uiZ_win31_calculatorbutton
        button_C.color=c_red;
        button_C.text="C"
        button_C.posinframex=uiz_snapleft;
        button_C.posinframey=fc;
        button_C.setpointy=uiz_middle;
        button_C.posvaly=uiz_getdivisionmiddles(1,6,1)
        button_C.posvalwtype=fc;
        button_C.posvalw=0.25;
        button_C.posvalhtype=fc;
        button_C.posvalh=0.15;
        button_C.leftmargin=buttonmargins/2;
        button_C.rightmargin=buttonmargins/2;
        uiz_fixgeneralpos(button_C)
        
        
        button_CE=uiz_c(obj_uiZ_3waybutton)
        uiz_setParent(button_CE,window)
        button_CE.sprite=spr_uiZ_win31_calculatorbutton
        button_CE.color=c_red;
        button_CE.text="CE"
        button_CE.posinframex=fc;
        button_CE.setpointx=uiz_middle;
        button_CE.posvalx=uiz_getdivisionmiddles(1,4,1);
        button_CE.posinframey=fc;
        button_CE.setpointy=uiz_middle;
        button_CE.posvaly=uiz_getdivisionmiddles(1,6,1)
        button_CE.posvalwtype=fc;
        button_CE.posvalw=0.25;
        button_CE.posvalhtype=fc;
        button_CE.posvalh=0.15;
        button_CE.leftmargin=buttonmargins/2;
        button_CE.rightmargin=buttonmargins/2;
        uiz_fixgeneralpos(button_CE)
        
        button_back=uiz_c(obj_uiZ_3waybutton)
        uiz_setParent(button_back,window)
        button_back.sprite=spr_uiZ_win31_calculatorbutton
        button_back.color=c_red;
        button_back.text="Back"
        button_back.posinframex=fc;
        button_back.setpointx=uiz_middle;
        button_back.posvalx=uiz_getdivisionmiddles(1,4,2);
        button_back.posinframey=fc;
        button_back.setpointy=uiz_middle;
        button_back.posvaly=uiz_getdivisionmiddles(1,6,1)
        button_back.posvalwtype=fc;
        button_back.posvalw=0.25;
        button_back.posvalhtype=fc;
        button_back.posvalh=0.15;
        button_back.leftmargin=buttonmargins/2;
        button_back.rightmargin=buttonmargins/2;
        uiz_fixgeneralpos(button_back)
        
        //Add the M thingie
        //setup object
        display_M=uiz_c(obj_uiZ_text)
        uiz_setParent(display_M,window)
        display_M.posinframex=uiz_snapright;
        display_M.posinframey=fc;
        display_M.setpointy=uiz_middle;
        display_M.posvaly=3/12;
        display_M.posvalwtype=fc;
        display_M.posvalw=0.25;
        display_M.posvalwtype=fc;
        display_M.posvalh=0.15;
        display_M.posvalhtype=fc;
        display_M.backgroundscript=uiz_back_square_outlined
        display_M.leftmargin=buttonmargins/2;
        display_M.rightmargin=buttonmargins/2;
        uiz_fixgeneralpos(display_M)
        
        //create a frame to put the grid in
        frame_grid_buttons=uiz_c(obj_uiZ_frame)
        uiz_setParent(frame_grid_buttons,window)
        frame_grid_buttons.posinframex=uiz_fill;
        frame_grid_buttons.posinframey=uiz_snapbottom;
        frame_grid_buttons.posvalx=0.01
        frame_grid_buttons.posvalwtype=fc;
        frame_grid_buttons.posvalh=0.65;
        frame_grid_buttons.posvalhtype=fc;
        frame_grid_buttons.leftmargin=buttonmargins/2;
        frame_grid_buttons.rightmargin=buttonmargins/2;
        uiz_fixgeneralpos(frame_grid_buttons)
        //create a grid with all the buttons
        grid_buttons=uiz_grid_create(6,4)
        uiz_setParent(grid_buttons,frame_grid_buttons)
        uiz_setgrid_custom(grid_buttons,uiz_win31_calculatorgrid)
        grid_buttons.posinframex=uiz_fill;
        grid_buttons.posinframey=uiz_fill;
        grid_buttons.margincellw=buttonmargins/2;
        grid_buttons.margincellh=buttonmargins/2;
        uiz_fixgeneralpos(grid_buttons)
    }
}
