//add background
var swipicon = argument0;
with(argument1){
    object_minesweeper=instance_create(0,0,obj_windows31_minesweeper)//this is not a uiz object, just a controller object
    window_minesweeper=uiz_win31_createwindow_size(obj_uiZ_controller.id,"Minesweeper",true,3,dp,3.8,dp)//we create the window in this object to keep the window controls working
    object_minesweeper.window=window_minesweeper;//give our new object a reference to our window
    window_minesweeper.keepratio=true;//keep the same ratio
    with(object_minesweeper){
        var f=window;
        back=uiz_c(obj_uiZ_sprite);
        uiz_setparent(back,f)
        back.posinframex=uiz_fill;
        back.posinframey=uiz_fill;
        back.sprite_index=spr_uiZ_win31_mineback;
        uiz_fixgeneralpos(back)
        
        //add button
        //size of the sprite of background is 152x195. All proportions have been taken in fc from spr_uiZ_win31_mineback.
        button=uiz_c(obj_uiZ_easybutton)
        uiz_setparent(button,f);
        uiz_depth_set(button,-3);//put it above the background
        button.posinframex=uiz_center;
        button.posinframey=fc;
        button.posvaly=15/195;
        button.posvalwtype=fc;
        button.posvalw=26/152;
        button.posvalhtype=fcx;//use the fc values for the x
        button.posvalh=26/152;
        button.sprite=spr_uiZ_win31_happybutton
        uiz_fixgeneralpos(button)
        
        //add scorecounter counter
        //size of the sprite of background is 152x195. All proportions have been taken in fc from spr_uiZ_win31_mineback.
        scorecounter=uiz_c(obj_uiZ_spritecounter)
        uiz_setparent(scorecounter,f)
        uiz_depth_set(scorecounter,-3);//put it above the background
        scorecounter.posinframex=fc;
        scorecounter.posvalx=17/152;
        scorecounter.posinframey=fc;
        scorecounter.posvaly=16/195;
        scorecounter.posvalwtype=fc;
        scorecounter.posvalw=39/152;
        scorecounter.posvalhtype=fc;
        scorecounter.posvalh=22/195;
        scorecounter.sprite=spr_uiZ_win31_counter
        uiz_fixgeneralpos(scorecounter)
        
        
        //add timecounter
        //size of the sprite of background is 152x195. All proportions have been taken in fc from spr_uiZ_win31_mineback.
        timecounter=uiz_c(obj_uiZ_spritecounter)
        uiz_setparent(timecounter,f)
        uiz_depth_set(timecounter,-3);//put it above the background
        timecounter.posinframex=fc;
        timecounter.posvalx=94/152;
        timecounter.posinframey=fc;
        timecounter.posvaly=16/195;
        timecounter.posvalwtype=fc;
        timecounter.posvalw=39/152;
        timecounter.posvalhtype=fc;
        timecounter.posvalh=22/195;
        timecounter.sprite=spr_uiZ_win31_counter
        uiz_fixgeneralpos(timecounter)
        
        
        //add minefield
        //size of the sprite of background is 152x195. All proportions have been taken in fc from spr_uiZ_win31_mineback.
        minefield=uiz_c(obj_uiZ_minesweeper)
        uiz_setparent(minefield,f)
        uiz_depth_set(minefield,-4);//put it above the background, and other objects (may there be any problems)
        minefield.posinframex=fc;
        minefield.posvalx=12/152;
        minefield.posinframey=fc;
        minefield.posvaly=55/195;
        minefield.posvalwtype=fc;
        minefield.posvalw=127/152;
        minefield.posvalhtype=fc;
        minefield.posvalh=127/195;
        uiz_fixgeneralpos(minefield)
    }
}
